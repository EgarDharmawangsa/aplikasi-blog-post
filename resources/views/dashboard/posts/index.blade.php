@extends('dashboard.layouts.main')

@section('container')
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      @if(session()->has('success'))
      <div class="alert alert-success alert-dismissible fade show" role="alert">
          {{ session('success') }}
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
      @endif

        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">{{ $title }}</h1>
        </div>

        <div class="table-responsive col-lg-10">
          <a href="/dashboard/posts/create" class="btn btn-primary mb-3 "><span class="bi bi-plus-lg"></span> New Post</a>
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th scope="col">Id</th>
                  <th scope="col">Title</th>
                  <th scope="col">Category</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                @foreach ($posts as $post)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $post->title }}</td>
                        <td>{{ $post->category->name }}</td>
                        <td>
                            <a href="/dashboard/posts/{{ $post->slug }}" class="btn btn-primary"><span class="bi bi-eye"></span></a>
                            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><span class="bi bi-pencil"></span></a>
                            <form action="/dashboard/posts/{{ $post->slug }}" method="POST" class="d-inline">
                              @csrf
                              @method('delete')
                              <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')"><span class="bi bi-trash"></span></button>
                            </form>
                        </td>
                    </tr>
                @endforeach
              </tbody>
            </table>
          </div>
    </main>
@endsection
