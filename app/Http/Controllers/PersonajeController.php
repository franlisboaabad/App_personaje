<?php

namespace App\Http\Controllers;

use App\Personaje;
use App\Http\Requests\PersonajeRequest;
use Illuminate\Support\Facades\Storage;

class PersonajeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $personajes = Personaje::all();

        return view('personajes.index', compact('personajes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('personajes.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PersonajeRequest $request)
    {
        // dd($request->all());
        $personaje = Personaje::create($request->all());

        if ($request->file('file')) {
            $personaje->image  = $request->file('file')->store('personajes', 'public');
            $personaje->save();
        }

        return back()->with('status', 'Creado con éxito');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $personaje = Personaje::findOrFail($id);
        return view('personajes.show', compact('personaje'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $personaje = Personaje::findOrFail($id);

        return view('personajes.edit', compact('personaje'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function update(PersonajeRequest $request, Personaje $personaje)
    {
        //dd($request->all());
        $personaje->update($request->all());

        if ($request->file('file')) {
            # eliminar imagen
            Storage::disk('public')->delete($personaje->image);
            $personaje->image  = $request->file('file')->store('personajes', 'public');
            $personaje->save();
        }

        return back()->with('status', 'Actualizado con éxito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Personaje $personaje)
    {
        $personaje->delete();
        return back()->with('status', 'Eliminado con éxito');
    }
}
