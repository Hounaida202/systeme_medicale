<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultation - Marie Dubois</title>
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
                    <h1 class="text-2xl font-bold text-gray-800">Consultation en cours 🩺</h1>
                    <p class="text-sm text-gray-500">Dr. Pierre Dubois - Médecin Général</p>
                </div>
            </div>
            <div class="flex items-center gap-4">
                <div class="flex items-center gap-2 px-4 py-2 bg-green-50 rounded-lg">
                    <span class="w-3 h-3 bg-green-500 rounded-full animate-pulse"></span>
                    <span class="text-sm text-green-700 font-medium">Consultation active</span>
                </div>
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
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
        <!-- Left Column - Patient Info -->
        <div class="lg:col-span-1 space-y-6">
            <!-- Patient Card -->
            <div class="bg-white rounded-2xl shadow-lg p-6 slide-in">
                <div class="flex flex-col items-center mb-6">
                    <div class="w-24 h-24 bg-gradient-to-br from-blue-400 to-blue-500 rounded-full flex items-center justify-center text-white text-3xl font-bold mb-4">
                        MD
                    </div>
                    <h2 class="text-2xl font-bold text-gray-800 text-center">Marie Dubois</h2>
                    <span class="px-3 py-1 bg-green-100 text-green-700 rounded-full text-xs font-semibold mt-2">Patient Actif</span>
                </div>

                <div class="space-y-4">
                    <div class="flex items-center gap-3 p-3 bg-pink-50 rounded-xl">
                        <span class="text-2xl">🎂</span>
                        <div>
                            <p class="text-xs text-gray-600 font-medium">Date de naissance</p>
                            <p class="font-semibold text-gray-800">15/03/1985 (40 ans)</p>
                        </div>
                    </div>
                    <div class="flex items-center gap-3 p-3 bg-blue-50 rounded-xl">
                        <span class="text-2xl">🆔</span>
                        <div>
                            <p class="text-xs text-gray-600 font-medium">N° Sécurité Sociale</p>
                            <p class="font-semibold text-gray-800">2 85 03 56 750 123 45</p>
                        </div>
                    </div>
                    <div class="flex items-center gap-3 p-3 bg-green-50 rounded-xl">
                        <span class="text-2xl">📞</span>
                        <div>
                            <p class="text-xs text-gray-600 font-medium">Téléphone</p>
                            <p class="font-semibold text-gray-800">06 12 34 56 78</p>
                        </div>
                    </div>
                    <div class="flex items-center gap-3 p-3 bg-purple-50 rounded-xl">
                        <span class="text-2xl">🏠</span>
                        <div>
                            <p class="text-xs text-gray-600 font-medium">Adresse</p>
                            <p class="font-semibold text-gray-800">12 Rue Victor Hugo, Paris</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Vital Signs Card -->
            <div class="bg-white rounded-2xl shadow-lg p-6 slide-in" style="animation-delay: 0.1s">
                <h3 class="text-lg font-bold text-gray-800 mb-4 flex items-center gap-2">
                    <span class="text-2xl">💓</span> Signes Vitaux
                </h3>
                <div class="space-y-4">
                    <div class="p-4 bg-gradient-to-br from-red-50 to-pink-50 rounded-xl">
                        <div class="flex items-center justify-between mb-2">
                            <span class="text-sm font-medium text-gray-600">🌡️ Température</span>
                            <span class="text-xs px-2 py-1 bg-green-100 text-green-700 rounded-full font-semibold">Normal</span>
                        </div>
                        <p class="text-3xl font-bold text-red-600">37.2°C</p>
                        <p class="text-xs text-gray-500 mt-1">Normal: 36.5 - 37.5°C</p>
                    </div>
                    <div class="p-4 bg-gradient-to-br from-blue-50 to-cyan-50 rounded-xl">
                        <div class="flex items-center justify-between mb-2">
                            <span class="text-sm font-medium text-gray-600">💉 Tension Artérielle</span>
                            <span class="text-xs px-2 py-1 bg-green-100 text-green-700 rounded-full font-semibold">Normal</span>
                        </div>
                        <p class="text-3xl font-bold text-blue-600">120/80</p>
                        <p class="text-xs text-gray-500 mt-1">mmHg</p>
                    </div>
                    <div class="p-4 bg-gradient-to-br from-purple-50 to-pink-50 rounded-xl">
                        <div class="flex items-center justify-between mb-2">
                            <span class="text-sm font-medium text-gray-600">❤️ Pouls</span>
                            <span class="text-xs px-2 py-1 bg-green-100 text-green-700 rounded-full font-semibold">Normal</span>
                        </div>
                        <p class="text-3xl font-bold text-purple-600">72 bpm</p>
                        <p class="text-xs text-gray-500 mt-1">Normal: 60 - 100 bpm</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Column - Consultation Form -->
        <div class="lg:col-span-2">
            <form id="consultationForm" class="space-y-6">
                <!-- Motif Section -->
                <div class="bg-white rounded-2xl shadow-lg p-6 slide-in" style="animation-delay: 0.2s">
                    <h3 class="text-xl font-bold text-gray-800 mb-4 flex items-center gap-2">
                        <span class="text-2xl">📋</span> Motif de la Consultation
                    </h3>
                    <div>
                        <label for="motif" class="block text-sm font-medium text-gray-700 mb-2">
                            Décrivez le motif de la visite <span class="text-red-500">*</span>
                        </label>
                        <select
                                id="motif"
                                name="motif"
                                required
                                class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none bg-white"
                        >
                            <option value="">Sélectionnez un motif...</option>
                            <option value="consultation_generale">🩺 Consultation générale</option>
                            <option value="fievre">🤒 Fièvre</option>
                            <option value="douleur">😣 Douleurs</option>
                            <option value="toux">🤧 Toux / Rhume</option>
                            <option value="allergie">🤧 Allergies</option>
                            <option value="suivi">📊 Suivi médical</option>
                            <option value="certificat">📄 Certificat médical</option>
                            <option value="ordonnance">💊 Renouvellement ordonnance</option>
                            <option value="autre">🔍 Autre</option>
                        </select>
                    </div>

                </div>

                <!-- Observations Section -->
                <div class="bg-white rounded-2xl shadow-lg p-6 slide-in" style="animation-delay: 0.3s">
                    <h3 class="text-xl font-bold text-gray-800 mb-4 flex items-center gap-2">
                        <span class="text-2xl">🔬</span> Observations & Remarques du Médecin
                    </h3>
                    <div>
                        <label for="observations" class="block text-sm font-medium text-gray-700 mb-2">
                            Notes de consultation <span class="text-red-500">*</span>
                        </label>
                        <textarea
                                id="observations"
                                name="observations"
                                required
                                rows="10"
                                placeholder="Décrivez vos observations cliniques, diagnostics, recommandations...&#10;&#10;Exemples:&#10;- État général du patient&#10;- Symptômes observés&#10;- Examens réalisés&#10;- Diagnostic&#10;- Traitement prescrit&#10;- Recommandations&#10;- Rendez-vous de suivi"
                                class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none resize-none"
                        ></textarea>
                        <div class="flex items-center justify-between mt-2">
                            <p class="text-xs text-gray-500">Soyez précis et détaillé dans vos observations</p>
                            <span id="charCount" class="text-xs text-gray-400">0 caractères</span>
                        </div>
                    </div>

                    <!-- Quick Notes Templates -->
                    <div class="mt-4 p-4 bg-gradient-to-br from-blue-50 to-purple-50 rounded-xl">
                        <p class="text-sm font-semibold text-gray-700 mb-2">📝 Modèles rapides:</p>
                        <div class="flex flex-wrap gap-2">
                            <button type="button" class="quick-note px-3 py-2 bg-white text-gray-700 text-sm rounded-lg hover:bg-pink-50 hover:text-pink-700 transition-all border border-gray-200" data-text="Patient en bon état général. ">
                                État général ✓
                            </button>
                            <button type="button" class="quick-note px-3 py-2 bg-white text-gray-700 text-sm rounded-lg hover:bg-pink-50 hover:text-pink-700 transition-all border border-gray-200" data-text="Examen clinique normal. ">
                                Examen normal ✓
                            </button>
                            <button type="button" class="quick-note px-3 py-2 bg-white text-gray-700 text-sm rounded-lg hover:bg-pink-50 hover:text-pink-700 transition-all border border-gray-200" data-text="Prescription: ">
                                Prescription 💊
                            </button>
                            <button type="button" class="quick-note px-3 py-2 bg-white text-gray-700 text-sm rounded-lg hover:bg-pink-50 hover:text-pink-700 transition-all border border-gray-200" data-text="Repos recommandé pendant 7 jours. ">
                                Repos 🛏️
                            </button>
                            <button type="button" class="quick-note px-3 py-2 bg-white text-gray-700 text-sm rounded-lg hover:bg-pink-50 hover:text-pink-700 transition-all border border-gray-200" data-text="Rendez-vous de suivi dans 15 jours. ">
                                RDV suivi 📅
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Action Buttons -->
                <div class="bg-white rounded-2xl shadow-lg p-6 slide-in" style="animation-delay: 0.4s">
                    <h3 class="text-lg font-bold text-gray-800 mb-4">Actions</h3>
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                        <!-- Envoyer les résultats -->
                        <button
                                type="submit"
                                class="px-6 py-4 bg-gradient-to-r from-green-400 to-teal-500 text-white font-bold rounded-xl hover:from-green-500 hover:to-teal-600 transform hover:scale-105 transition-all shadow-lg hover:shadow-xl flex items-center justify-center gap-2"
                        >
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                            </svg>
                            <span>Envoyer les résultats</span>
                        </button>

                        <!-- Demander une expertise -->
                        <button
                                type="button"
                                id="expertiseBtn"
                                class="px-6 py-4 bg-gradient-to-r from-blue-400 to-purple-500 text-white font-bold rounded-xl hover:from-blue-500 hover:to-purple-600 transform hover:scale-105 transition-all shadow-lg hover:shadow-xl flex items-center justify-center gap-2"
                        >
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"></path>
                            </svg>
                            <span>Demander une expertise</span>
                        </button>

                        <!-- Annuler -->
                        <button
                                type="button"
                                id="cancelBtn"
                                class="px-6 py-4 bg-gradient-to-r from-red-400 to-pink-500 text-white font-bold rounded-xl hover:from-red-500 hover:to-pink-600 transform hover:scale-105 transition-all shadow-lg hover:shadow-xl flex items-center justify-center gap-2"
                        >
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>
                            <span>Annuler</span>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</main>

<!-- Success Modal -->
<div id="successModal" class="hidden fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 fade-in">
    <div class="bg-white rounded-2xl shadow-2xl p-8 max-w-md mx-4 slide-in">
        <div class="text-center">
            <div class="w-20 h-20 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
                <svg class="w-10 h-10 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
            </div>
            <h3 class="text-2xl font-bold text-gray-800 mb-2">Consultation terminée ! ✨</h3>
            <p class="text-gray-600 mb-6">Les résultats ont été enregistrés avec succès.</p>
            <button id="closeModal" class="px-8 py-3 bg-gradient-to-r from-pink-400 to-purple-400 text-white font-semibold rounded-xl hover:from-pink-500 hover:to-purple-500 transition-all">
                Retour à la file d'attente
            </button>
        </div>
    </div>
</div>

<script>
    const consultationForm = document.getElementById('consultationForm');
    const observations = document.getElementById('observations');
    const charCount = document.getElementById('charCount');
    const quickNotes = document.querySelectorAll('.quick-note');
    const successModal = document.getElementById('successModal');
    const closeModal = document.getElementById('closeModal');
    const expertiseBtn = document.getElementById('expertiseBtn');
    const cancelBtn = document.getElementById('cancelBtn');
    const logoutBtn = document.getElementById('logoutBtn');

    // Character count
    observations.addEventListener('input', function() {
        charCount.textContent = `${this.value.length} caractères`;
    });

    // Quick notes
    quickNotes.forEach(btn => {
        btn.addEventListener('click', function() {
            const text = this.getAttribute('data-text');
            observations.value += text;
            observations.focus();
            charCount.textContent = `${observations.value.length} caractères`;
        });
    });

    // Form submission
    consultationForm.addEventListener('submit', function(e) {
        e.preventDefault();

        const formData = {
            patient: 'Marie Dubois',
            motif: document.getElementById('motif').value,
            motifDetails: document.getElementById('motifDetails').value,
            observations: observations.value,
            timestamp: new Date().toISOString()
        };

        console.log('Consultation envoyée:', formData);

        // Show success modal
        successModal.classList.remove('hidden');
    });

    // Close modal
    closeModal.addEventListener('click', function() {
        successModal.classList.add('hidden');
        // window.location.href = 'file-attente.html';
    });

    // Expertise button
    expertiseBtn.addEventListener('click', function() {
        if (confirm('📋 Demander une expertise à un spécialiste ?\n\nVous allez être redirigé vers le formulaire de demande d\'expertise.')) {
            console.log('Demande d\'expertise initiée');
            alert('🩺 Votre demande d\'expertise sera envoyée aux spécialistes disponibles.');
            // window.location.href = 'demande-expertise.html';
        }
    });

    // Cancel button
    cancelBtn.addEventListener('click', function() {
        if (confirm('⚠️ Êtes-vous sûr de vouloir annuler cette consultation ?\n\nToutes les données non enregistrées seront perdues.')) {
            console.log('Consultation annulée');
            // window.location.href = 'file-attente.html';
        }
    });

    // Logout
    logoutBtn.addEventListener('click', function() {
        if (confirm('⚠️ Attention ! Une consultation est en cours.\n\nÊtes-vous sûr de vouloir vous déconnecter ?')) {
            console.log('Déconnexion...');
            alert('À bientôt Dr. Dubois ! 💖');
            // window.location.href = 'login.html';
        }
    });
</script>
</body>
</html>