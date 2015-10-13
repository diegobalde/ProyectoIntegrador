package com.globallogic.curso;

public class App {
    public App() {
        super();
    }

    public static void main(String[] args) {
        App app = new App();
        
        
        Isla isla = new Isla();
        
        EstrategiaCombate agresivo = new CombateAgresivo();
        EstrategiaCombate defensivo = new CombateDefensivo();
        
        Personaje guerrero = new Guerrero(50, 50);
        Personaje elfo = new Elfo(70, 20);
        Personaje enano = new Enano(30, 100);
        
        guerrero.setEstrategia(agresivo);
        elfo.setEstrategia(defensivo);        
        enano.setEstrategia(defensivo);
        
        isla.addPersonaje( elfo );
        isla.addPersonaje( enano );
        isla.addPersonaje( guerrero );
        
        System.out.println("LLUVIA");
        isla.llover();
        
        
        for(Personaje p : isla.getPersonajes())
        {
            System.out.println("ataque: " + p.getAtaque() + " defensa: " + p.getDefensa());    
        }
        
        System.out.println("SOL");
        isla.sol();
        
        
        for(Personaje p : isla.getPersonajes())
        {
            System.out.println("ataque: " + p.getAtaque() + " defensa: " + p.getDefensa());    
        }
        
        System.out.println("Viento");
        isla.viento();
        
        
        for(Personaje p : isla.getPersonajes())
        {
            System.out.println("ataque: " + p.getAtaque() + " defensa: " + p.getDefensa());    
        }
                
    }
}
