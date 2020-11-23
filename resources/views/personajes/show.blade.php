@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Información de personaje</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <h3>Personaje: {{ $personaje->name  }}</h3>
                    <p class="text-justify">{{ $personaje->poder }}</p>
                    <div>
                        <img src="{{ $personaje->get_image }}" alt="" class="img-fluid">
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
