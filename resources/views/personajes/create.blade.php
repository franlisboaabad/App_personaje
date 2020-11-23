@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Crear nuevo Personaje</div>

                <div class="card-body">

                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif

                    <form action="{{ route('personajes.store') }}" enctype="multipart/form-data" method="POST">
                        <div class="form-group">
                            <label>Nombre de personaje*</label>
                            <input type="text" name="name" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label>Poder*</label>
                            <textarea name="poder" rows="6" class="form-control" required></textarea>
                        </div>

                        <div class="form-group">
                            <label>Imagen de personaje</label>
                            <input type="file" name="file" class="form-control">
                        </div>

                        <div class="form-group">
                            @csrf
                            <button  type="submit" class="btn btn-success btn-sm">Crear personaje</button>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
