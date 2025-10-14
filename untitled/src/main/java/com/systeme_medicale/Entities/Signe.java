package com.systeme_medicale.Entities;

import jakarta.persistence.*;

@Entity
@Table(name = "signes") // enlever l'espace pour éviter les erreurs
public class Signe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String temperature;
    private String tension;
    private String pouls;
    private int id_patient;

    // Constructeur vide requis par JPA
    public Signe() {}

    // Constructeur complet
    public Signe(String temperature, String tension, String pouls, int id_patient) {
        this.temperature = temperature;
        this.tension = tension;
        this.pouls = pouls;
        this.id_patient = id_patient;
    }

    // Getters et Setters
    public int getId() { return id; }

    public String getTemperature() { return temperature; }
    public void setTemperature(String temperature) { this.temperature = temperature; }

    public String getTension() { return tension; }
    public void setTension(String tension) { this.tension = tension; }

    public String getPouls() { return pouls; }
    public void setPouls(String pouls) { this.pouls = pouls; }

    public int getId_patient() { return id_patient; }
    public void setId_patient(int id_patient) { this.id_patient = id_patient; }
}
