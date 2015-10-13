package com.globallogic.curso

public class Lluvia extends Clima {
    public Lluvia() {
        super();
    }

 
    public void afectarPersona(Personaje p1) 
    {
        p1.mojarse();
    }
}
