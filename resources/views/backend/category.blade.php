@extends('layouts.master');

@section('content')
    <form action="{{url('/add')}}" method="post">
        @csrf
        <div class="form-group">
        <label for="name">Category</label>
        <input type="text" name="name" class="form-control col-md-3" id="name" >
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
    <table class="table table-dark col-md-6">
        <thead>
          <tr>
            <th scope="col">Sl</th>
            <th scope="col">Name</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($categories as $key=>$cate)
          <tr>
            <th scope="row">{{$key+1}}</th>
            <td>{{$cate->name}}</td>
            <td>
                <a href="{{route('edit',$cate->id)}}" class="btn btn-primary">Edit</a>
                <a href="{{route('cate_destroy',$cate->id)}}" class="btn btn-danger">Delete</a>
            </td>
            @endforeach
          </tr>
        </tbody>
      </table>

@endsection
