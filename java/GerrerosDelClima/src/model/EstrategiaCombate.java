package com.globallogic.curso;

public abstract class EstrategiaCombate {
    public EstrategiaCombate() {
        super();
    }
    
    public abstract int calcularAtaque(int ataque);
    
    public abstract int calcularDefensa(int defensa);
    
}
