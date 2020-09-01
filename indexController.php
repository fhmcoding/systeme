<?php

namespace App\Http\Controllers\Teatcher;

use App\Http\Controllers\Controller;
use Illuminate\Http\UploadedFile;
use Illuminate\Http\Request;
use Auth;
use App\Teatcher;
Use Alert;

class indexController extends Controller
{

    public function __construct()
    {
        $this->middleware(['auth','teatcher']);     
    }

    public function index()
    {  
       $user=Auth::user()->name; 
       $arr=array('Iuser'=>$user);
       $Array=$user; 
      return  $Array[0];

    //    $teacher=Teatcher::where('user_id',Auth::user()->id)->count(); 

    //     if($teacher==0){  
    //        return redirect()->route('teatcher.account');
    //     }
    //     else{
    //         return view('teatcher.index');
    //     }
    
        
    }

    public function account(Request $req)
    {
        if($req->isMethod('post')){
           $new=new Teatcher();
           $new->user_id=Auth::user()->id;
           $new->firstname_ar=$req->firstname_ar;
           $new->firstname_fr=$req->firstname_fr;
           $new->lastname_ar=$req->lasttname_fr;
           $new->lasttname_fr=$req->lasttname_ar;
           $new->gender=$req->gender;
           $new->statu_famile=$req->statu_famile;
           $new->Matiere=$req->Matiere;
           $new->Diploma=$req->Diploma;
           $new->date_of_birth=$req->date_of_birth;
           $new->place_of_birth=$req->place_of_birth;
           $new->email=$req->email;
           $new->phone=$req->phone;
           if($req->hasFile('photo')){
            $new->photo=$req->photo->store('teatcher');
           }
           else{
            $new->photo="teatcher\defuolt.png";
           }
           $new->save();
           return redirect()->route('teatcher.index');
        }
        else{
            $teacher=Teatcher::where('user_id',Auth::user()->id)->count(); 
            if($teacher==0){
                $arr=array('bool'=>"false");
                return view('teatcher.acount',$arr);
            }
            else{
                $ostad=Teatcher::where('user_id',Auth::user()->id)->first();
                $arr=array('ostad'=>$ostad,'bool'=>"true");
                return view('teatcher.acount',$arr);
            }
        }
        
    }
    public function edit(Request $req,$id)
    {
        $teacher=Teatcher::find($id);
        $teacher->firstname_ar=$req->firstname_ar;
        $teacher->firstname_fr=$req->firstname_fr;
        $teacher->lastname_ar=$req->lasttname_fr;
        $teacher->lasttname_fr=$req->lasttname_ar;
        $teacher->gender=$req->gender;
        $teacher->statu_famile=$req->statu_famile;
        $teacher->Matiere=$req->Matiere;
        $teacher->Diploma=$req->Diploma;
        $teacher->date_of_birth=$req->date_of_birth;
        $teacher->place_of_birth=$req->place_of_birth;
        $teacher->email=$req->email;
        $teacher->phone=$req->phone;
        if($req->hasFile('photo')){
         $teacher->photo=$req->photo->store('teatcher');
        }
        $teacher->save();
        return redirect()->route('teatcher.index');
    }

   
   

    
}
