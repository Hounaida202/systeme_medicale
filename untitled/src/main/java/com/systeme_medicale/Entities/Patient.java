package com.systeme_medicale.Entities;

import jakarta.persistence.*;

@Entity
@Table(name = "patients")
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_patient;

    private String nom;
    private String prenom;
    private String dateNaissance;
    private String num_securite_sociale;
    private String tele;
    private String adresse;

    @Column(name = "status", nullable = false, columnDefinition = "VARCHAR(20) DEFAULT 'desactive'")
    private String status;

    @OneToOne(mappedBy = "patient", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Signe signes;

    @OneToOne(mappedBy = "patient", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Consultation consultation;

    public Patient() {}

    public Patient(String nom, String prenom, String dateNaissance, String num_securite_sociale, String tele, String adresse) {
        this.nom = nom;
        this.prenom = prenom;
        this.dateNaissance = dateNaissance;
        this.num_securite_sociale = num_securite_sociale;
        this.tele = tele;
        this.adresse = adresse;
    }

    // --- GETTERS & SETTERS ---
    public Long getId_patient() { return id_patient; }
    public void setId_patient(Long id_patient) { this.id_patient = id_patient; }
    public String getNom() { return nom; }
    public void setNom(String nom) { this.nom = nom; }
    public String getPrenom() { return prenom; }
    public void setPrenom(String prenom) { this.prenom = prenom; }
    public String getDateNaissance() { return dateNaissance; }
    public void setDateNaissance(String dateNaissance) { this.dateNaissance = dateNaissance; }
    public String getNumeroSecuriteSociale() { return num_securite_sociale; }
    public void setNumeroSecuriteSociale(String num_securite_sociale) { this.num_securite_sociale = num_securite_sociale; }
    public String getTelephone() { return tele; }
    public void setTelephone(String tele) { this.tele = tele; }
    public String getAdresse() { return adresse; }
    public void setAdresse(String adresse) { this.adresse = adresse; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    public Signe getSignes() { return signes; }
    public void setSignes(Signe signes) { this.signes = signes; }
    public Consultation getConsultation() { return consultation; }
    public void setConsultation(Consultation consultation) { this.consultation = consultation; }
}
