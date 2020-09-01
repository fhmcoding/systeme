<?php

namespace App\Http\Controllers\Teatcher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Category;
use App\Teaacherclasse;
use App\Maslak;
use App\Leval;
use App\Classe;
use App\Subject;
class classController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth','teatcher']);     
    } 

    public function index(Request $req)
    {
        if($req->isMethod('post')){
            $new=new Teaacherclasse();
            $new->teatcher_id=Auth::user()->teatcher()->first()->id;
            $new->subject_id=$req->subject;
            $new->save();
            return redirect()->route('teatcher.lessin.add');
        }
        
        $maslaks=Maslak::all();
        $arr=array(
            'maslaks'=> $maslaks,
        );
        return view('Teatcher.classAdd',$arr);
        //return $defultC;
    } 
    public function getLeval(Request $req){
        $id = $req->cat_id;
        $levals = Maslak::where('id',$id)
                            ->with('levals')
                            ->get();
        return response()->json([
            'levals' => $levals
        ]);

    }
    public function getClasse(Request $req){
        $id = $req->cat_id;
        $classes = Leval::where('id',$id)
                            ->with('classes')
                            ->get();
        return response()->json([
            'classes' => $classes
        ]);

    }
    public function getSubjects(Request $req){
        $id = $req->cat_id;
        $subjects = Classe::where('id',$id)
                            ->with('subjects')
                            ->get();
        return response()->json([
            'subjects' => $subjects
        ]);

    }
    public function convert($id){
        //$data = $request->all();
        #create or update your data here
        $levals_1=Maslak::find($id)->levals()->get();
        return response()->json(['levals'=>$levals_1]);
    }
   
    public function show()
    {
        //$subject=Teaacherclasse::where('teatcher_id',Auth::user()->teatcher()->first()->id)->get();
        //$arr=array('subject'=>$subject);
        // return view('Teatcher.classeView',$arr);
        //return $subject->first()->subject;
        //->with('subject')
        //Subject::find($subject[0]->subject_id)

        $subject=Teaacherclasse::where('teatcher_id',Auth::user()->teatcher()->first()->id)->get();
        $arr=array('subject'=>$subject);
       
        return view('Teatcher.classeView',$arr);
    }
    public function delete($id)
    {
        $subject=Teaacherclasse::find($id);
        $subject->delete();
        return redirect()->route('teatcher.lessin.list');
    }
        
    
}
