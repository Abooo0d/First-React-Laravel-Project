<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\SignUpRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
  public function SignUp(SignUpRequest $request) {
    /** @var User $user */
    $data = $request->validated();
    $user = User::create([
      "name" => $data["name"],
      "email" => $data["email"],
      "password" => bcrypt($data["password"])
    ]);
    $token = $user->createToken("main")->plainTextToken;
    return response(compact("user","token"));
  }
  public function Login(LoginRequest $request) {
    $credentials = $request->validated();
    if(!Auth::attempt($credentials)){
      return response([
        "message" => "Provided Email Or Password Isn`t Correct"
      ],422);
    }
    /** @var User $user */
    $user = Auth::user();
    $token = $user->createToken("main")->plainTextToken;
    return response(compact("user","token"));
  }
  public function Logout(Request $request) {
    /** @var User $user */
    $user = $request->user();
    $user->currentAccessToken()->delete();
    return response("",204);
  }
}
