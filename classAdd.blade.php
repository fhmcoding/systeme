@extends('layouts.teatcher')
@section('content')
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
    
    <!-- /.content-header -->
    <section class="content">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header">
                    <h3 class="box-title">
                    ajouter Class
                    </h3>
                </div>      
                <div class="card-body" id="app">
                    <form method="post" action="{{route('teatcher.lessin.add')}}">  
                        @csrf
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">select a maslak</label>
                            <select class="form-control js-example-disabled-results" id="maslak" name="maslak">
                                <option>select option</option>
                                @foreach($maslaks as $item)
                                    <option value="{{$item->id}}">{{ $item->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        
                        <div class="form-group ">
                            <label for="exampleFormControlSelect1 ">select a level</label>
                            <select class="form-control js-example-disabled-results" name="level" id="levals">
                                <option>select option</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">select a class</label>
                            <select class="form-control js-example-disabled-results" name="class" id="class">
                                <option>select option</option> 
                            </select>
                        </div>
                        <input type="hidden" name="_token" value="{{ Session::token() }}">
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">select a matter</label>
                            <select class="form-control js-example-disabled-results" name="subject" id="mada">
                                <option>select option</option>        
                            </select>
                        </div>

                        {{ csrf_field()}}
                        <!--- End matter of lycee --->
                        <button type="submit" class="btn btn-primary">
                            Uplode
                        </button>
                    </form>    
                </div>
            </div>  
        </div> 
    </section>    
</div>
@endsection

@section('script')

<script type="text/javascript">

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $(document).ready(function () {
                
                //category
                $('#maslak').on('change',function(e) {
                 
                    var cat_id = e.target.value;
                    var request = $.ajax({
                    
                        url:"{{route('teatcher.lessin.getLeval')}}",
                        type:"POST",
                        data: {
                            cat_id: cat_id,
                            _token: $('meta[name="csrf-token"]').attr('content'),
                        },
                        dataType: "json",  
                        success:function (data) {

                            $('#levals').empty();
                            $('#levals').append('<option selected>select option</option>');
                            $.each(data.levals[0].levals,function(index,levals){
                            
                                $('#levals').append('<option value="'+levals.id+'">'+levals.name+'</option>');
                            });
                            

                        }
                    })
                });
                //subcategory
                $('#levals').on('change',function(e) {
                 
                    var cat_id = e.target.value;

                    var request = $.ajax({
                    
                    url:"{{ route('teatcher.lessin.getClasse') }}",
                    type:"POST",
                    data: {
                    cat_id: cat_id,
                    _token: $('meta[name="csrf-token"]').attr('content'),
                },
                dataType: "json",  
                success:function (data) {

                    $('#class').empty();
                    $('#class').append('<option selected>select option</option>');
                    $.each(data.classes[0].classes,function(index,classes){
                         
                         $('#class').append('<option value="'+classes.id+'">'+classes.name+'</option>');
                    })

                }
            });

            $('#class').on('change',function(e) {
                 
                var cat_id = e.target.value;

                var request = $.ajax({
                    url:"{{ route('teatcher.lessin.getSubjects') }}",
                    type:"POST",
                    data: {
                        cat_id: cat_id,
                        _token: $('meta[name="csrf-token"]').attr('content'),
                    },
                    dataType: "json",  
                    success:function (data) {
                        $('#mada').empty();
                        $('#mada').append('<option selected>select option</option>');
                        $.each(data.subjects[0].subjects,function(index,subjects){
                            $('#mada').append('<option value="'+subjects.id+'">'+subjects.name+'</option>');
                        })
                    }
                })
            });
                
                
            });

        });
</script>
@endsection