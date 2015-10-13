package com.globallogic.curso;
public class Elfo extends Personaje {
    public Elfo(int ataque, int defensa) {
        super(ataque, defensa);
    }

    public void aclimatar(Clima clima) {
        clima.afectarPersona(this);
    }

    public void ventilarse() {
      this.modificadorAtaque=-1;
      this.modificadorDefensa=-1;
    }

    public void mojarse() {
        this.modificadorAtaque=-1;
        this.modificadorDefensa=-1;
    }

    public void solearse() 
    {
        this.modificadorDefensa = 0;
        this.modificadorAtaque = 0; 
    }
}
