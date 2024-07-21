@extends('dashboard.layouts.main')

@section('container')
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">{{ $title }}</h1>
        </div>

        <div class="col-md-8">
            <form method="POST" action="/dashboard/categories" class="mb-5">
                @csrf
                <div class="mb-3">
                    <label for="category" class="form-label">Category</label>
                    <input type="text" class="form-control @error('category') is-invalid @enderror" id="category"
                        name="category" required autofocus value="{{ old('category') }}">
                    @error('category')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="slug" class="form-label">Slug</label>
                    <input type="text" class="form-control @error('slug') is-invalid @enderror" id="slug"
                        name="slug" required autofocus value="{{ old('slug') }}">
                    @error('slug')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
                <button type="submit" class="btn btn-primary">Create Category</button>
            </form>
        </div>

        <script>
            const category = document.querySelector('#category');
            const slug = document.querySelector('#slug');

            category.addEventListener('change', function() {
                fetch('/dashboard/categories/checkSlug?category=' + category.value)
                    .then(response => response.json())
                    .then(data => slug.value = data.slug)
            });
        </script>
    @endsection
