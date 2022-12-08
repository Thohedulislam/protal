@extends('layouts.master');


@section('content')
    <form action="{{url('/update/{id}')}}" method="post">
        @csrf
        <input type="hidden" name="id" value="{{$categories->id}}">

        <div class="form-group">
        <label for="name">Category</label>
        <input type="text" name="name" class="form-control col-md-3" id="name" value="{{$categories->name}}">
        </div>
        <a type="submit" href="{{route('cate')}}" class="btn btn-primary">update</a>
        <a type="reset" href="{{route('cate')}}" class="btn btn-info" >back</a>
    </form>
@endsection
