@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Lista de personajes 
                    <a href="{{ route('personajes.create') }}" class="btn btn-success btn-sm float-right">Crear Personaje</a>
                </div>

                <div class="card-body">

                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif


                    <table class="table">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Poder</th>
                                <th colspan="2">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($personajes as $personaje)
                                <tr>
                                    <td>{{ $personaje->id }}</td>
                                    <td> <a href="{{ route('personajes.show', $personaje->id) }}"> {{ $personaje->name }} </a> </td>
                                    <td>{{ $personaje->poder }}</td>
                                    <td>
                                        <a href="{{ route('personajes.edit', $personaje->id) }}" class="btn btn-primary btn-sm">Editar</a>
                                    </td>
                                    <td>
                                        <form action="{{ route('personajes.destroy', $personaje) }}" method="POST">
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-danger btn-sm">Eliminar</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                   
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
