@extends('dashboard.layouts.main')

@section('container')
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <h2 class="mb-4">{{ $post->title }}</h2>

                <div>
                    <a href="/dashboard/posts/" class="btn btn-success"><span class="bi bi-arrow-left"></span> Back to my
                        Posts</a>
                    <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><span
                            class="bi bi-pencil"></span>Edit</a>
                    <form action="/dashboard/posts/{{ $post->slug }}" method="POST" class="d-inline">
                        @csrf
                        @method('delete')
                        <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')"><span
                                class="bi bi-trash"></span> Delete</button>
                    </form>
                </div>

                @if ($post->image)
                    <div style="max-height: 350px; overflow: hidden">
                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}"
                        class="img-fluid mt-3">
                    </div>
                    
                @else
                    <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}"
                        alt="{{ $post->category->name }}" class="img-fluid mt-3">
                @endif

                <article class="my-3 fs-5">
                    <p>{!! $post->body !!}</p>
                </article>
            </div>
        </div>
    </div>
@endsection
