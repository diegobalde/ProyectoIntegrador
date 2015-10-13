package com.globallogic.curso;

public class Enano extends Personaje
{
    
    
    public Enano(int ataque, int defensa) {
        super(ataque, defensa);
    }

    public void aclimatar(Clima clima) {
        clima.afectarPersona(this);
    }

    public void ventilarse() {
        this.modificadorDefensa = 1;
        this.modificadorAtaque = 1;
    }

    public void mojarse() {
        this.modificadorDefensa = -1;
        this.modificadorAtaque = -1;
    }

    public void solearse() 
    {
        this.modificadorDefensa = 0;
        this.modificadorAtaque = 0; 
    }
}
