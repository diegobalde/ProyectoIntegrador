package com.globallogic.curso

public abstract class Personaje {
    
    protected int ataque;
    
    protected int modificadorAtaque;
    
    protected int defensa;
    
    protected int modificadorDefensa;
    
    protected EstrategiaCombate estrategia;
    
    public Personaje(int ataque, int defensa) {
        super();
        this.ataque = ataque;
        this.defensa = defensa;
    }
    public void aclimatar(Clima clima) {
        clima.afectarPersona(this);
    }
    
    public abstract void ventilarse();
    
    public abstract void mojarse();
    
    public abstract void solearse();
    
    public int getAtaque(){
         return this.estrategia.calcularAtaque( this.ataque  + this.modificadorAtaque );
    }

    public void setAtaque(int ataque) {
        this.ataque = ataque;
    }

    public void setDefensa(int defensa) {
        this.defensa = defensa;
    }

    public int getDefensa() {
        return  this.estrategia.calcularDefensa( this.defensa + this.modificadorDefensa );
    }

    public void setEstrategia(EstrategiaCombate estrategia) {
        this.estrategia = estrategia;
    }

    public EstrategiaCombate getEstrategia() {
        return estrategia;
    }
    
    public void resetear(){
        this.modificadorAtaque = 0;
        this.modificadorDefensa = 0;
    }
}
