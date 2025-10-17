<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.systeme_medicale.Entities.Patient" %>
<%@ page import="com.systeme_medicale.Entities.Signe" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Patients</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }
        .float { animation: float 3s ease-in-out infinite; }

        @keyframes slideIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .slide-in { animation: slideIn 0.5s ease-out; }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        .fade-in { animation: fadeIn 0.3s ease-out; }
    </style>
</head>
<body class="bg-gradient-to-br from-blue-50 via-pink-50 to-purple-50 min-h-screen">
<%
    List<Patient> patients = (List<Patient>) request.getAttribute("patients");
    boolean hasPatients = patients != null && !patients.isEmpty();
    int patientCount = hasPatients ? patients.size() : 0;
%>

<!-- Header -->
<header class="bg-white shadow-md">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4">
        <div class="flex items-center justify-between">
            <div class="flex items-center gap-3">
                <div class="bg-gradient-to-br from-pink-400 to-purple-400 rounded-xl p-2">
                    <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                    </svg>
                </div>
                <div>
                    <h1 class="text-2xl font-bold text-gray-800">Espace Infirmière</h1>
                    <p class="text-sm text-gray-500">Liste des patients 👩‍⚕️</p>
                </div>
            </div>
            <div class="flex items-center gap-4">
                <span class="text-sm text-gray-600">Infirmière ${sessionScope.firstname}</span>
                <div class="w-10 h-10 bg-gradient-to-br from-pink-300 to-purple-300 rounded-full flex items-center justify-center text-white font-semibold">
                    S
                </div>
                <button
                        id="logoutBtn"
                        class="flex items-center gap-2 px-4 py-2 bg-red-50 text-red-600 rounded-lg hover:bg-red-100 transition-all font-medium"
                >
                    <a href="logout">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path>
                        </svg>
                        Déconnexion</a>

                </button>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="grid grid-cols-1 lg:grid-cols-4 gap-6">
        <!-- Sidebar -->
        <div class="lg:col-span-1">
            <div class="bg-white rounded-2xl shadow-lg p-6 slide-in">
                <h2 class="text-lg font-semibold text-gray-800 mb-4 flex items-center gap-2">
                    <span>📋</span> Navigation
                </h2>
                <nav class="space-y-2">
                    <a href="infermiere.jsp" class="flex items-center gap-3 px-4 py-3 text-gray-600 hover:bg-gray-50 rounded-xl transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path>
                        </svg>
                        Nouveau patient
                    </a>
                    <a href="#" class="flex items-center gap-3 px-4 py-3 bg-gradient-to-r from-pink-100 to-purple-100 text-pink-700 rounded-xl font-medium transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                        </svg>
                        Mes patients
                    </a>
                    <a href="FileDattenteServlet" class="flex items-center gap-3 px-4 py-3 text-gray-600 hover:bg-gray-50 rounded-xl transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                        </svg>
                        Files d'attente
                    </a>
                </nav>

                <!-- Quick Stats -->
                <div class="mt-6 space-y-3">
                    <div class="bg-gradient-to-br from-blue-50 to-blue-100 rounded-xl p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-xs text-blue-600 font-medium">Total patients</p>
                                <p class="text-2xl font-bold text-blue-700" id="totalPatients"><%= patientCount %></p>
                            </div>
                            <div class="text-3xl">🏥</div>
                        </div>
                    </div>
                    <div class="bg-gradient-to-br from-orange-50 to-orange-100 rounded-xl p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-xs text-orange-600 font-medium">File d'attente</p>
                                <p class="text-2xl font-bold text-orange-700" id="queueCount">0</p>
                            </div>
                            <div class="text-3xl">⏱️</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Patients List Section -->
        <div class="lg:col-span-3">
            <!-- Search Bar -->
            <div class="bg-white rounded-2xl shadow-lg p-6 mb-6 slide-in">
                <div class="flex items-center gap-4">
                    <div class="flex-1 relative">
                        <svg class="w-5 h-5 absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                        <input
                                type="text"
                                id="searchInput"
                                placeholder="🔍 Rechercher un patient (nom, prénom, numéro de sécurité sociale...)"
                                class="w-full pl-12 pr-4 py-4 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none text-gray-700"
                        >
                    </div>
                    <button class="px-6 py-4 bg-gradient-to-r from-pink-400 to-purple-400 text-white font-semibold rounded-xl hover:from-pink-500 hover:to-purple-500 transition-all shadow-md">
                        Rechercher
                    </button>
                </div>
            </div>

            <!-- Patients Cards -->
            <div id="patientsContainer" class="space-y-4">

                <% if (hasPatients) {
                    int index = 0;
                    for (Patient patient : patients) {
                        Signe signes = patient.getSignes();
                        boolean hasSignes = signes != null;
                %>
                <div class="bg-white rounded-2xl shadow-lg p-6 slide-in hover:shadow-xl transition-all patient-card" style="animation-delay: <%= index * 0.1 %>s">
                    <div class="flex items-start justify-between">
                        <div class="flex gap-4 flex-1">
                            <div class="w-16 h-16 bg-gradient-to-br from-blue-400 to-blue-500 rounded-full flex items-center justify-center text-white text-2xl font-bold flex-shrink-0">
                                <%
                                    String initials = "??";
                                    if (patient.getPrenom() != null && !patient.getPrenom().isEmpty() &&
                                            patient.getNom() != null && !patient.getNom().isEmpty()) {
                                        initials = patient.getPrenom().substring(0, 1) + patient.getNom().substring(0, 1);
                                    }
                                %>
                                <%= initials %>
                            </div>
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-2">
                                    <h3 class="text-xl font-bold text-gray-800">
                                        <%= patient.getPrenom() != null ? patient.getPrenom() : "" %>
                                        <%= patient.getNom() != null ? patient.getNom() : "" %>
                                    </h3>
                                    <span class="px-3 py-1 bg-green-100 text-green-700 rounded-full text-xs font-semibold">Actif</span>
                                </div>

                                <div class="grid grid-cols-1 md:grid-cols-2 gap-3 mt-4">
                                    <div class="flex items-center gap-2 text-sm text-gray-600">
                                        <span>🎂</span>
                                        <span><strong>Né(e) le:</strong>
                                                <%= patient.getDateNaissance() != null ? patient.getDateNaissance() : "Non renseigné" %>
                                            </span>
                                    </div>
                                    <div class="flex items-center gap-2 text-sm text-gray-600">
                                        <span>🆔</span>
                                        <span><strong>N° SS:</strong>
                                                <%= patient.getNumeroSecuriteSociale() != null ? patient.getNumeroSecuriteSociale() : "Non renseigné" %>
                                            </span>
                                    </div>
                                    <div class="flex items-center gap-2 text-sm text-gray-600">
                                        <span>📞</span>
                                        <span><strong>Tél:</strong>
                                                <%= patient.getTelephone() != null ? patient.getTelephone() : "Non renseigné" %>
                                            </span>
                                    </div>
                                    <div class="flex items-center gap-2 text-sm text-gray-600">
                                        <span>🏠</span>
                                        <span><strong>Adresse:</strong>
                                                <%= patient.getAdresse() != null ? patient.getAdresse() : "Non renseigné" %>
                                            </span>
                                    </div>
                                </div>

                                <!-- Section Signes Vitaux -->
                                <div class="mt-4 p-4 bg-gradient-to-br from-blue-50 to-cyan-50 rounded-xl">
                                    <p class="text-xs font-semibold text-blue-700 mb-2">💓 Derniers Signes Vitaux</p>
                                    <% if (hasSignes) { %>
                                    <div class="grid grid-cols-3 gap-3">
                                        <div class="text-center">
                                            <p class="text-xs text-gray-600">Température</p>
                                            <p class="text-lg font-bold text-blue-700">
                                                <%= signes.getTemperature() != null ? signes.getTemperature() + "°C" : "-" %>
                                            </p>
                                        </div>
                                        <div class="text-center">
                                            <p class="text-xs text-gray-600">Tension</p>
                                            <p class="text-lg font-bold text-blue-700">
                                                <%= signes.getTension() != null ? signes.getTension() : "-" %>
                                            </p>
                                        </div>
                                        <div class="text-center">
                                            <p class="text-xs text-gray-600">Pouls</p>
                                            <p class="text-lg font-bold text-blue-700">
                                                <%= signes.getPouls() != null ? signes.getPouls() + " bpm" : "-" %>
                                            </p>
                                        </div>
                                    </div>
                                    <% } else { %>
                                    <p class="text-sm text-gray-500 text-center">Aucun signe vital enregistré</p>
                                    <% } %>
                                </div>
                            </div>
                        </div>
                        <button onclick="openModal(<%= patient.getId_patient() %>, '<%= signes != null ? signes.getTemperature() : "" %>', '<%= signes != null ? signes.getTension() : "" %>', '<%= signes != null ? signes.getPouls() : "" %>')" class="add-queue-btn ml-4 px-6 py-3 bg-gradient-to-r from-orange-400 to-red-400 text-white font-semibold rounded-xl hover:from-orange-500 hover:to-red-500 transform hover:scale-105 transition-all shadow-md flex items-center gap-2 whitespace-nowrap">
                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path>
                            </svg>
                            Ajouter à la file
                        </button>

                    </div>
                </div>
                <%
                        index++;
                    }
                } else {
                %>
                <div class="bg-white rounded-2xl shadow-lg p-8 text-center">
                    <div class="text-6xl mb-4">👥</div>
                    <h3 class="text-xl font-bold text-gray-800 mb-2">Aucun patient trouvé</h3>
                    <p class="text-gray-500">Aucun patient n'est actuellement enregistré dans le système</p>
                </div>
                <% } %>
            </div>
            <!-- Modal -->
            <div id="updateModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
                <div class="bg-white rounded-xl p-6 w-96">
                    <h3 class="text-lg font-bold mb-4">Modifier Signes du Patient</h3>
                    <form id="updateForm" method="post" action="updateSignesServlet">
                        <input type="hidden" name="patientId" id="modalPatientId">
                        <div class="mb-3">
                            <label class="block text-sm font-medium text-gray-700">Température</label>
                            <input type="text" name="temperature" id="modalTemperature" class="mt-1 block w-full border rounded p-2">
                        </div>
                        <div class="mb-3">
                            <label class="block text-sm font-medium text-gray-700">Tension</label>
                            <input type="text" name="tension" id="modalTension" class="mt-1 block w-full border rounded p-2">
                        </div>
                        <div class="mb-3">
                            <label class="block text-sm font-medium text-gray-700">Pouls</label>
                            <input type="text" name="pouls" id="modalPouls" class="mt-1 block w-full border rounded p-2">
                        </div>
                        <div class="flex justify-end gap-2 mt-4">
                            <button type="button" onclick="closeModal()" class="px-4 py-2 bg-gray-200 rounded">Annuler</button>
                            <button type="submit" class="px-4 py-2 bg-blue-500 text-white rounded">Enregistrer</button>
                        </div>


                    </form>
                </div>
            </div>


            <!-- No Results Message -->
            <div id="noResults" class="hidden bg-white rounded-2xl shadow-lg p-8 text-center">
                <div class="text-6xl mb-4">🔍</div>
                <h3 class="text-xl font-bold text-gray-800 mb-2">Aucun patient trouvé</h3>
                <p class="text-gray-500">Essayez avec d'autres mots-clés</p>
            </div>
        </div>
    </div>
</main>

<!-- Success Toast -->
<div id="toast" class="hidden fixed top-6 right-6 bg-green-500 text-white px-6 py-4 rounded-xl shadow-2xl fade-in flex items-center gap-3 z-50">
    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
    </svg>
    <div>
        <p class="font-semibold">Patient ajouté à la file d'attente !</p>
        <p class="text-sm opacity-90" id="toastMessage"></p>
    </div>
</div>
</body>
<script>
    function openModal(patientId, temperature, tension, pouls) {
        document.getElementById("modalPatientId").value = patientId;
        document.getElementById("modalTemperature").value = temperature;
        document.getElementById("modalTension").value = tension;
        document.getElementById("modalPouls").value = pouls;
        document.getElementById("updateModal").classList.remove("hidden");
    }

    function closeModal() {
        document.getElementById("updateModal").classList.add("hidden");
    }
</script>

</html>