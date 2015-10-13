package com.globallogic.curso

public class Viento extends Clima {
    public Viento() {
        super();
    }

    public void afectarPersona(Personaje p1) 
    {
        p1.ventilarse();
    }
}
