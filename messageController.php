<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\message;
class messageController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
     /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function send(Request $request){
       
        $message = new message();
		$message->message = $request->message;
		$message->from_user_id = $request->from_user_id;
		$message->to_user_id = $request->to_user_id;
        $message->is_read=0;
		$message->save();

        $data = message::with(['fromUser','toUser'])->where('to_user_id',Auth::user()->id)->orWhere('from_user_id',Auth::user()->id)->get();

		return response()->json(['status'=>'success','data'=> $data]);
    }
}
