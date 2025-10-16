package com.systeme_medicale.Services;

import com.systeme_medicale.DAO.GeneralisteDAO;

public class ConsultationService {

    private GeneralisteDAO consultationDAO = new GeneralisteDAO();

    public void ajouterConsultation(Long patientId, String motif, String observation) {
        consultationDAO.addConsultation(patientId, motif, observation);
    }
}
