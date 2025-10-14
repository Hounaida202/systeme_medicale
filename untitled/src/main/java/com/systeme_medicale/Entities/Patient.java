package com.systeme_medicale.Entities;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "patients")
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_patient;
    private String nom;
    private String prenom;
    private String dateNaissance;
    private Double num_securite_sociale;
    private Double tele;
    private String adresse;

    @OneToMany(mappedBy = "patient", cascade = CascadeType.ALL)
    private List<Signe> signes = new ArrayList<>();

    public Patient() {}

    public Patient(String nom, String prenom, String dateNaissance, Double num_securite_sociale, Double tele, String adresse) {
        this.nom = nom;
        this.prenom = prenom;
        this.dateNaissance = dateNaissance;
        this.num_securite_sociale = num_securite_sociale;
        this.tele = tele;
        this.adresse = adresse;
    }

    // Getters et Setters
    public Long getId_patient() { return id_patient; }

    public String getNom() { return nom; }
    public void setNom(String nom) { this.nom = nom; }

    public String getPrenom() { return prenom; }
    public void setPrenom(String prenom) { this.prenom = prenom; }

    public String getDateNaissance() { return dateNaissance; }
    public void setDateNaissance(String dateNaissance) { this.dateNaissance = dateNaissance; }

    public Double getNum_securite_sociale() { return num_securite_sociale; }
    public void setNum_securite_sociale(Double num_securite_sociale) { this.num_securite_sociale = num_securite_sociale; }

    public Double getTele() { return tele; }
    public void setTele(Double tele) { this.tele = tele; }

    public String getAdresse() { return adresse; }
    public void setAdresse(String adresse) { this.adresse = adresse; }
}
