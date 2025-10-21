package com.systeme_medicale.Entities;

import jakarta.persistence.*;
@Entity
@Table(name = "signes")
public class Signe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String temperature;
    private String tension;
    private String pouls;

    @OneToOne
    @JoinColumn(name = "id_patient")
    private Patient patient;

    public Signe() {}

    public Signe(String temperature, String tension, String pouls, Patient patient) {
        this.temperature = temperature;
        this.tension = tension;
        this.pouls = pouls;
        this.patient = patient;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public String getTension() {
        return tension;
    }

    public void setTension(String tension) {
        this.tension = tension;
    }

    public String getPouls() {
        return pouls;
    }

    public void setPouls(String pouls) {
        this.pouls = pouls;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }
}