<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TransactionDetail extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'user_id',
        'product_id',
        'transaction_id',
        'quantity',
    ];

    // relation to users
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    // relation to product
    public function product() {
        return $this->hasOne(Product::class, 'id', 'product_id');
    }

    // relation to transactions
    public function transaction() {
        return $this->belongsTo(Transaction::class, 'transaction_id', 'id');
    }
}
