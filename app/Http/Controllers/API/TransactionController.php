<?php

namespace App\Http\Controllers\API;

use App\Helper\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\Transaction;
use App\Models\TransactionDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TransactionController extends Controller
{
    public function all(Request $request)
    {
        $id = $request->input('id');
        $limit = $request->input('limit', 6);
        $status = $request->input('status');

        if ($id) {
            $transaction = Transaction::with(['transaction_detail.product'])->find($id);
            if ($transaction) {
                return ResponseFormatter::success($transaction, 'Successfully get transaction');
            } else {
                return ResponseFormatter::error('Transaction not found', 404);
            }
        }

        $transaction = Transaction::with(['transaction_detail.product'])->where('user_id', $request->user()->id);

        if ($status) {
            $transaction = $transaction->where('status', $status);
        }

        return ResponseFormatter::success($transaction->paginate($limit), 'Successfully get transaction');
    }

    public function checkout(Request $request)
    {
            /* Validate
                address
                items []
                total_price
                shipping_price
                status
                user_id
            */

            $request->validate([
                'items' => 'required|array',
                'items.*.id' => 'required|exists:products,id',
                'address' => 'required',
                'total_price' => 'required',
                'shipping_price' => 'required',
                'status' => 'required|in:PENDING,SUCCESS,FAILED,CANCELED',
            ]);

            // menambahkan single data ke table transaction
            $transaction = Transaction::create([
                'user_id' => Auth::user()->id,
                'address' => $request->address,
                'total_price' => $request->total_price,
                'shipping_price' => $request->shipping_price
            ]);

            // menambah data pada tabel transaction_detail
            foreach ($request->items as $product) {
                TransactionDetail::create([
                    'user_id' => Auth::user()->id,
                    'product_id' => $product['id'],
                    'transaction_id' => $transaction->id,
                    'quantity' => $product['quantity']
                ]);
            }

            return ResponseFormatter::success($transaction->load('transaction_detail.product'), 'Successfully checkout');
    }
}
