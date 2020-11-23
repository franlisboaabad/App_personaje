@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Editar Personaje</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                   <form action="{{ route('personajes.update', $personaje ) }}" enctype="multipart/form-data" method="POST">
                        <div class="form-group">
                            <label>Nombre de personaje*</label>
                            <input type="text" name="name" class="form-control" required value="{{ old('name', $personaje->name) }}">
                        </div>
                        <div class="form-group">
                            <label>Poder*</label>
                            <textarea name="poder"  rows="6" class="form-control">{{ old('poder', $personaje->poder) }}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Imagen de personaje*</label>
                            <input type="file" name="file" class="form-control">
                        </div>
                        <div class="form-group">
                            @csrf
                            @method('PUT')
                            <button type="submit" class="btn btn-success btn-sm">Editar personaje</button>
                        </div>
                   </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
