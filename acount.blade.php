@extends('layouts.teatcher')

@section('content')

 <!-- Content Header (Page header) -->
 <div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
     <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="box box-info">
            <div class="box-header">
                <h3 class="box-title">
                    My Accont
                </h3>
            </div>   
            <div class="box-body">
                @if($bool=="false")
                    <h5> False </h5>
                    <form action="{{ route('teatcher.account')}}" method="post" enctype="multipart/form-data"> 
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Prénom" class="sr-only">Prénom</label>
                                    <input class="form-control" id="Prénom" type="text" placeholder="Prénom " name="lasttname_fr">
                                </div>
                            </div>    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">Nom</label>
                                    <input class="form-control" type="text" placeholder="Nom " name="firstname_fr">
                                </div>
                            </div>    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Prénom" class="sr-only">Prénom Arabic</label>
                                    <input class="form-control" id="Prénom" type="text" placeholder="Arabic Prénom " name="firstname_ar">
                                </div>
                            </div>    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">Nom Arabic</label>
                                    <input class="form-control" type="text" placeholder="Arabic Nom " name="lasttname_ar">
                                </div>
                            </div>    
                            
                            <div class="col-md-12">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="Masculin" checked>
                                    <label class="form-check-label" for="exampleRadios1">
                                    Masculin
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="exampleRadios2" value="female">
                                    <label class="form-check-label" for="exampleRadios2">
                                    female
                                    </label>
                                </div>
                                
                                
                            </div>    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only"> Family situation</label>
                                    <input class="form-control" type="text" placeholder="Family situation " name="statu_famile">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">Matiere</label>
                                    <input class="form-control" type="text" placeholder=" Matiere " name="Matiere">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">Diploma</label>
                                    <input class="form-control" type="text" placeholder=" Diploma " name="Diploma">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">date de naissance</label>
                                    <input class="form-control" type="text" placeholder="JJ/MM/AAAA " name="date_of_birth">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">lieu de naissance</label>
                                    <input class="form-control" type="text" placeholder="lieu de naissance " name="place_of_birth">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">email</label>
                                    <input class="form-control" type="email" placeholder="email " name="email">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">phone</label>
                                    <input class="form-control" type="text" placeholder="phone " name="phone">
                                </div>
                            </div>
                        <div class="col-md-6">
                                <div class="form-group">
                                    <label for="exampleFormControlFile1">Example file input</label>
                                    <input type="file" class="form-control-file" id="exampleFormControlFile1" name="photo">
                                </div>
                        </div>
                        <div class="col-md-6">
                                <button type="submit"  class="btn btn-primary w-100" name="submit">
                                Terminé
                                </button>
                        </div>
                        </div>
                    </form>
                @else
            
                <form action="{{ route('teatcher.account.edit',['id' => $ostad->id])}}" method="post" enctype="multipart/form-data"> 
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Prénom" class="sr-only">Prénom</label>
                                    <input class="form-control" id="Prénom" type="text" placeholder="Prénom " name="lasttname_fr" value="{{ $ostad->lasttname_fr}}">
                                </div>
                            </div>    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">Nom</label>
                                    <input class="form-control" type="text" placeholder="Nom " name="firstname_fr" value="{{ $ostad->firstname_fr}}">
                                </div>
                            </div>    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Prénom" class="sr-only">Prénom Arabic</label>
                                    <input class="form-control" id="Prénom" type="text" placeholder="Arabic Prénom " name="firstname_ar" value="{{ $ostad->lastname_ar}}">
                                </div>
                            </div>    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">Nom Arabic</label>
                                    <input class="form-control" type="text" placeholder="Arabic Nom " name="lasttname_ar" value="{{ $ostad->firstname_ar}}">
                                </div>
                            </div>    
                            
                            <div class="col-md-12">
                                
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="Masculin"<?php if("Masculin"==$ostad->gender){ echo"checked";}?> >
                                    <label class="form-check-label" for="exampleRadios1">
                                    Masculin
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="exampleRadios2" value="female"<?php if("female"==$ostad->gender){ echo"checked";}?>>
                                    <label class="form-check-label" for="exampleRadios2">
                                    female
                                    </label>
                                </div>
                                
                                
                            </div>    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only"> Family situation</label>
                                    <input class="form-control" type="text" placeholder="Family situation " name="statu_famile" value="{{ $ostad->statu_famile}}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">Matiere</label>
                                    <input class="form-control" type="text" placeholder=" Matiere " name="Matiere" value="{{ $ostad->Matiere }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">Diploma</label>
                                    <input class="form-control" type="text" placeholder=" Diploma " name="Diploma" value="{{ $ostad->Diploma }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">date de naissance</label>
                                    <input class="form-control" type="text" placeholder="JJ/MM/AAAA " name="date_of_birth" value="{{ $ostad->date_of_birth }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">lieu de naissance</label>
                                    <input class="form-control" type="text" placeholder="lieu de naissance " name="place_of_birth" value="{{ $ostad->place_of_birth }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">email</label>
                                    <input class="form-control" type="email" placeholder="email " name="email" value="{{ $ostad->email }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Nom" class="sr-only">phone</label>
                                    <input class="form-control" type="text" placeholder="phone " name="phone" value="{{ $ostad->phone }}">
                                </div>
                            </div>
                        <div class="col-md-6">
                                <div class="form-group">
                                    <label for="exampleFormControlFile1">Example file input</label>
                                    <input type="file" class="form-control-file" id="exampleFormControlFile1" name="photo">
                                </div>
                        </div>
                        <div class="col-md-6">
                                <button type="submit"  class="btn btn-primary w-100" name="submit">
                                Terminé
                                </button>
                        </div>
                        </div>
                </form>
                @endif
               
            </div>
        </div>  
      </div>
    </section>
</div>

@endsection