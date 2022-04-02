<?php

namespace App\Http\Controllers\API;

use App\Helper\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Fortify\Rules\Password;
use PhpParser\Node\Stmt\Return_;

class UserController extends Controller
{
    public function register(Request $request)
    {
        try {
            $request->validate([
                'username' => 'required|string|unique:users',
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255|unique:users',
                'phone_number' => 'required|string|max:255',
                'password' => ['required', 'string', new Password],
            ]);
            User::create([
                'username' => $request->username,
                'name' => $request->name,
                'email' => $request->email,
                'phone_number' => $request->phone_number,
                'password' => Hash::make($request->password),
            ]);
            $user = User::where('email', $request->email)->first();
            $token_result = $user->createToken('Personal Access Token')->plainTextToken;

            return ResponseFormatter::success([
                'access-token' => $token_result,
                'token_type' => 'Bearer',
                'user' => $user
            ], 'User registered successfully');
        } catch (Exception $e) {
            return ResponseFormatter::error($e->getMessage(), $e->getCode());
        }
    }

    public function login(Request $request)
    {
        try {
            // melakukan validasi data yang dikirimkan
            $request->validate([
                'email' => ['required', 'string'],
                'password' => ['required', 'string'],
            ]);

            $credentials = request(['email', 'password']);

            if (!Auth::attempt($credentials)) {
                return ResponseFormatter::error('Unauthorized', 500);
            }

            $user = User::where('email', $request->email)->first();
            if (!Hash::check($request->password, $user->password)) {
                return ResponseFormatter::error('Unauthorized', 500);
            }

            return ResponseFormatter::success([
                'access-token' => $user->createToken('Personal Access Token')->plainTextToken,
                'token_type' => 'Bearer',
                'user' => $user
            ], 'User logged in successfully');
        } catch (Exception $th) {
            return ResponseFormatter::error([
                'message' => $th->getMessage(),
                'code' => $th->getCode()
            ], 500);
        }
    }

    public function fetch(Request $request) 
    {
        // mengambil data user yang sedang login dari database berdasarkan token yang dikirimkan
        return ResponseFormatter::success($request->user(), 'User fetched successfully');
    }

    public function updateProfile(Request $request) 
    {
        $request->validate([
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'name' => ['required', 'string', 'max:255'],
            'phone_number' => ['required', 'string', 'max:255'],
            'username' => ['required', 'string', 'max:255', 'unique:users'],
        ]);

        // get all data from request
        $data = $request->all();
        
        // get user from database
        
        // update user
        $user = Auth::user();
        $user->update($data);

        return ResponseFormatter::success($user, 'User updated successfully');
    }

    public function logout(Request $request) {
        $token = $request->user()->currentAccessToken()->delete();
        return ResponseFormatter::success($token, 'User logged out successfully');
    }


}
