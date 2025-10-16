package com.systeme_medicale.Entities;

import jakarta.persistence.*;
import java.util.ArrayList;
import java.util.List;
@Entity
@Table(name = "consultations")
public class Consultation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_consultation;
    private String motif;
    private String observation;
    private String prix = "150 DH";

    @OneToOne
    @JoinColumn(name = "id_patient")
    private Patient patient;



    public Consultation() {}

    public Consultation(String motif ,String observation , Patient patient) {
        this.motif = motif;
        this.observation = observation;
        this.patient=patient;
    }

    public Long getId_consultation() {
        return id_consultation;
    }
    public String getObservation() { return observation; }
    public void setObservation(String observation) { this.observation = observation; }
    public String getMotif() { return motif; }
    public void setMotif(String motif) { this.motif = motif; }
    public String getPrix() { return prix; }
    public Patient getPatient() { return patient; }
    public void setPatient(Patient patient) { this.patient = patient; }

}