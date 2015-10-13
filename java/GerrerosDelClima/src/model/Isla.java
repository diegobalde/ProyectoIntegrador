package com.globallogic.curso

import java.util.ArrayList;
import java.util.List;

public class Isla {
    
    private List<Personaje> personajes;
    
    public Isla() {
        super();
        personajes = new ArrayList<Personaje>();
    }
    
    public void cambiar(Clima clima){
        for(Personaje personaje: this.personajes){
            personaje.aclimatar(clima);
        }
    }
    
    public void setClima(Clima clima){
        this.cambiar(clima);
    }
    
    public void llover(){
        this.setClima( new Lluvia() );
    }
    
    public void viento(){
        this.setClima( new Viento() );
    }
    
    public void sol(){
        this.setClima( new Sol() );
    }
    
    public void addPersonaje(Personaje personaje){
        this.personajes.add(personaje);
    }

    public void setPersonajes(List<Personaje> personajes) {
        this.personajes = personajes;
    }

    public List<Personaje> getPersonajes() {
        return personajes;
    }
}
