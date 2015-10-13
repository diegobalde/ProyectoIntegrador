package com.globallogic.curso;
public class CombateAgresivo extends EstrategiaCombate {
    public CombateAgresivo() {
        super();
    }

    public int calcularAtaque(int ataque) {
        return ataque + 1;
    }

    public int calcularDefensa(int defensa) {
        return defensa - 1;
    }
}
