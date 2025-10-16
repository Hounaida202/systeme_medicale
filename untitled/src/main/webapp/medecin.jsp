<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Médecin - Liste des Patients</title>
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
    </style>
</head>
<body class="bg-gradient-to-br from-blue-50 via-pink-50 to-purple-50 min-h-screen">
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
                    <h1 class="text-2xl font-bold text-gray-800">Espace Médecin</h1>
                    <p class="text-sm text-gray-500">Médecin Général 👨‍⚕️</p>
                </div>
            </div>
            <div class="flex items-center gap-4">
                <span class="text-sm text-gray-600">Dr. Pierre Dubois</span>
                <div class="w-10 h-10 bg-gradient-to-br from-blue-400 to-purple-400 rounded-full flex items-center justify-center text-white font-semibold">
                    PD
                </div>
                <button
                        id="logoutBtn"
                        class="flex items-center gap-2 px-4 py-2 bg-red-50 text-red-600 rounded-lg hover:bg-red-100 transition-all font-medium"
                >
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path>
                    </svg>
                    Déconnexion
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
                    <span>🏥</span> Navigation
                </h2>
                <nav class="space-y-2">
                    <a href="#" class="flex items-center gap-3 px-4 py-3 bg-gradient-to-r from-pink-100 to-purple-100 text-pink-700 rounded-xl font-medium transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                        </svg>
                        File d'attente
                    </a>
                    <a href="#" class="flex items-center gap-3 px-4 py-3 text-gray-600 hover:bg-gray-50 rounded-xl transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
                        </svg>
                        Historique
                    </a>
                    <a href="#" class="flex items-center gap-3 px-4 py-3 text-gray-600 hover:bg-gray-50 rounded-xl transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                        </svg>
                        Agenda
                    </a>
                    <a href="#" class="flex items-center gap-3 px-4 py-3 text-gray-600 hover:bg-gray-50 rounded-xl transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                        </svg>
                        Statistiques
                    </a>
                </nav>

                <!-- Quick Stats -->
                <div class="mt-6 space-y-3">
                    <div class="bg-gradient-to-br from-blue-50 to-blue-100 rounded-xl p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-xs text-blue-600 font-medium">En attente</p>
                                <p class="text-2xl font-bold text-blue-700">2</p>
                            </div>
                            <div class="text-3xl">⏱️</div>
                        </div>
                    </div>
                    <div class="bg-gradient-to-br from-green-50 to-green-100 rounded-xl p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-xs text-green-600 font-medium">Consultations aujourd'hui</p>
                                <p class="text-2xl font-bold text-green-700">8</p>
                            </div>
                            <div class="text-3xl">✅</div>
                        </div>
                    </div>
                    <div class="bg-gradient-to-br from-purple-50 to-purple-100 rounded-xl p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-xs text-purple-600 font-medium">Rendez-vous restants</p>
                                <p class="text-2xl font-bold text-purple-700">5</p>
                            </div>
                            <div class="text-3xl">📋</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Patients Queue Section -->
        <div class="lg:col-span-3">
            <!-- Header Section -->
            <div class="bg-white rounded-2xl shadow-lg p-6 mb-6 slide-in">
                <div class="flex items-center justify-between">
                    <div>
                        <h2 class="text-2xl font-bold text-gray-800 mb-1">File d'attente 🩺</h2>
                        <p class="text-gray-500 text-sm">Patients en attente de consultation</p>
                    </div>
                    <div class="flex items-center gap-3">
                        <div class="bg-gradient-to-br from-blue-50 to-blue-100 px-6 py-3 rounded-xl">
                            <p class="text-xs text-blue-600 font-medium text-center">Patients en attente</p>
                            <p class="text-3xl font-bold text-blue-700 text-center">2</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Search Bar -->
            <div class="bg-white rounded-2xl shadow-lg p-6 mb-6 slide-in" style="animation-delay: 0.1s">
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
                <!-- Patient 1 -->
                <div class="bg-white rounded-2xl shadow-lg p-6 slide-in hover:shadow-xl transition-all patient-card border-l-4 border-blue-400" style="animation-delay: 0.2s">
                    <div class="flex items-start justify-between">
                        <div class="flex gap-4 flex-1">
                            <div class="w-20 h-20 bg-gradient-to-br from-blue-400 to-blue-500 rounded-full flex items-center justify-center text-white text-2xl font-bold flex-shrink-0">
                                MD
                            </div>
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-3">
                                    <h3 class="text-2xl font-bold text-gray-800">Marie Dubois</h3>
                                    <span class="px-3 py-1 bg-blue-100 text-blue-700 rounded-full text-xs font-semibold flex items-center gap-1">
                                            <span class="w-2 h-2 bg-blue-500 rounded-full animate-pulse"></span>
                                            En attente
                                        </span>
                                    <span class="px-3 py-1 bg-purple-100 text-purple-700 rounded-full text-xs font-semibold">
                                            N°1
                                        </span>
                                </div>

                                <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-4">
                                    <div class="flex items-center gap-3 text-gray-700">
                                        <div class="w-10 h-10 bg-pink-50 rounded-lg flex items-center justify-center flex-shrink-0">
                                            <span class="text-xl">🎂</span>
                                        </div>
                                        <div>
                                            <p class="text-xs text-gray-500 font-medium">Date de naissance</p>
                                            <p class="font-semibold">15/03/1985 (40 ans)</p>
                                        </div>
                                    </div>
                                    <div class="flex items-center gap-3 text-gray-700">
                                        <div class="w-10 h-10 bg-blue-50 rounded-lg flex items-center justify-center flex-shrink-0">
                                            <span class="text-xl">🆔</span>
                                        </div>
                                        <div>
                                            <p class="text-xs text-gray-500 font-medium">Numéro de sécurité sociale</p>
                                            <p class="font-semibold">2 85 03 56 750 123 45</p>
                                        </div>
                                    </div>
                                    <div class="flex items-center gap-3 text-gray-700">
                                        <div class="w-10 h-10 bg-green-50 rounded-lg flex items-center justify-center flex-shrink-0">
                                            <span class="text-xl">📞</span>
                                        </div>
                                        <div>
                                            <p class="text-xs text-gray-500 font-medium">Téléphone</p>
                                            <p class="font-semibold">06 12 34 56 78</p>
                                        </div>
                                    </div>
                                    <div class="flex items-center gap-3 text-gray-700">
                                        <div class="w-10 h-10 bg-purple-50 rounded-lg flex items-center justify-center flex-shrink-0">
                                            <span class="text-xl">🏠</span>
                                        </div>
                                        <div>
                                            <p class="text-xs text-gray-500 font-medium">Adresse</p>
                                            <p class="font-semibold">12 Rue Victor Hugo, Paris</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="mt-4 flex items-center gap-2 text-sm text-gray-500">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                    </svg>
                                    <span>Arrivée: 14:30 • Temps d'attente: 15 min</span>
                                </div>
                            </div>
                        </div>
                        <button class="consult-btn ml-4 px-8 py-4 bg-gradient-to-r from-green-400 to-teal-500 text-white font-bold rounded-xl hover:from-green-500 hover:to-teal-600 transform hover:scale-105 transition-all shadow-lg hover:shadow-xl flex items-center gap-2 whitespace-nowrap text-lg">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2"></path>
                            </svg>
                            Consulter
                        </button>
                    </div>
                </div>

                <!-- Patient 2 -->
                <div class="bg-white rounded-2xl shadow-lg p-6 slide-in hover:shadow-xl transition-all patient-card border-l-4 border-pink-400" style="animation-delay: 0.3s">
                    <div class="flex items-start justify-between">
                        <div class="flex gap-4 flex-1">
                            <div class="w-20 h-20 bg-gradient-to-br from-pink-400 to-purple-500 rounded-full flex items-center justify-center text-white text-2xl font-bold flex-shrink-0">
                                JM
                            </div>
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-3">
                                    <h3 class="text-2xl font-bold text-gray-800">Jean Martin</h3>
                                    <span class="px-3 py-1 bg-blue-100 text-blue-700 rounded-full text-xs font-semibold flex items-center gap-1">
                                            <span class="w-2 h-2 bg-blue-500 rounded-full animate-pulse"></span>
                                            En attente
                                        </span>
                                    <span class="px-3 py-1 bg-purple-100 text-purple-700 rounded-full text-xs font-semibold">
                                            N°2
                                        </span>
                                </div>

                                <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-4">
                                    <div class="flex items-center gap-3 text-gray-700">
                                        <div class="w-10 h-10 bg-pink-50 rounded-lg flex items-center justify-center flex-shrink-0">
                                            <span class="text-xl">🎂</span>
                                        </div>
                                        <div>
                                            <p class="text-xs text-gray-500 font-medium">Date de naissance</p>
                                            <p class="font-semibold">22/07/1978 (47 ans)</p>
                                        </div>
                                    </div>
                                    <div class="flex items-center gap-3 text-gray-700">
                                        <div class="w-10 h-10 bg-blue-50 rounded-lg flex items-center justify-center flex-shrink-0">
                                            <span class="text-xl">🆔</span>
                                        </div>
                                        <div>
                                            <p class="text-xs text-gray-500 font-medium">Numéro de sécurité sociale</p>
                                            <p class="font-semibold">1 78 07 56 780 987 65</p>
                                        </div>
                                    </div>
                                    <div class="flex items-center gap-3 text-gray-700">
                                        <div class="w-10 h-10 bg-green-50 rounded-lg flex items-center justify-center flex-shrink-0">
                                            <span class="text-xl">📞</span>
                                        </div>
                                        <div>
                                            <p class="text-xs text-gray-500 font-medium">Téléphone</p>
                                            <p class="font-semibold">06 98 76 54 32</p>
                                        </div>
                                    </div>
                                    <div class="flex items-center gap-3 text-gray-700">
                                        <div class="w-10 h-10 bg-purple-50 rounded-lg flex items-center justify-center flex-shrink-0">
                                            <span class="text-xl">🏠</span>
                                        </div>
                                        <div>
                                            <p class="text-xs text-gray-500 font-medium">Adresse</p>
                                            <p class="font-semibold">45 Avenue des Champs, Lyon</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="mt-4 flex items-center gap-2 text-sm text-gray-500">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                    </svg>
                                    <span>Arrivée: 14:45 • Temps d'attente: 5 min</span>
                                </div>
                            </div>
                        </div>
                        <button class="consult-btn ml-4 px-8 py-4 bg-gradient-to-r from-green-400 to-teal-500 text-white font-bold rounded-xl hover:from-green-500 hover:to-teal-600 transform hover:scale-105 transition-all shadow-lg hover:shadow-xl flex items-center gap-2 whitespace-nowrap text-lg">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2"></path>
                            </svg>
                            Consulter
                        </button>
                    </div>
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

<script>
    const searchInput = document.getElementById('searchInput');
    const patientsContainer = document.getElementById('patientsContainer');
    const noResults = document.getElementById('noResults');
    const consultBtns = document.querySelectorAll('.consult-btn');
    const logoutBtn = document.getElementById('logoutBtn');

    // Search functionality
    searchInput.addEventListener('input', function() {
        const searchTerm = this.value.toLowerCase();
        const patientCards = document.querySelectorAll('.patient-card');
        let visibleCount = 0;

        patientCards.forEach(card => {
            const cardText = card.textContent.toLowerCase();
            if (cardText.includes(searchTerm)) {
                card.style.display = 'block';
                visibleCount++;
            } else {
                card.style.display = 'none';
            }
        });

        if (visibleCount === 0) {
            noResults.classList.remove('hidden');
            patientsContainer.classList.add('hidden');
        } else {
            noResults.classList.add('hidden');
            patientsContainer.classList.remove('hidden');
        }
    });

    // Consult functionality
    consultBtns.forEach(btn => {
        btn.addEventListener('click', function() {
            const patientCard = this.closest('.patient-card');
            const patientName = patientCard.querySelector('h3').textContent;

            console.log(`Consultation démarrée pour: ${patientName}`);
            alert(`🩺 Début de la consultation pour ${patientName}\n\nVous allez être redirigé vers la fiche de consultation...`);

            // Redirection vers la page de consultation
            // window.location.href = `consultation.html?patient=${encodeURIComponent(patientName)}`;
        });
    });

    // Logout functionality
    logoutBtn.addEventListener('click', function() {
        if (confirm('Êtes-vous sûr de vouloir vous déconnecter ? 👋')) {
            console.log('Déconnexion...');
            alert('À bientôt Dr. Dubois ! 💖');
            // window.location.href = 'login.html';
        }
    });
</script>
</body>
</html>