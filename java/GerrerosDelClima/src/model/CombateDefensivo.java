package com.globallogic.curso;

public class CombateDefensivo extends EstrategiaCombate {
    
    public CombateDefensivo() {
        super();
    }

    public int calcularAtaque(int ataque) {
        return ataque-1;
    }

    public int calcularDefensa(int defensa) {
        return defensa+1;
    }
}
