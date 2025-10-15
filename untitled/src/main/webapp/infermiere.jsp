<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Infirmière - Ajouter un Patient</title>
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
                    <h1 class="text-2xl font-bold text-gray-800">Espace Infirmière</h1>
                    <p class="text-sm text-gray-500">Gestion des patients 👩‍⚕️</p>
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
                        Déconnexion
                    </a>
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
                    <a href="#" class="flex items-center gap-3 px-4 py-3 bg-gradient-to-r from-pink-100 to-purple-100 text-pink-700 rounded-xl font-medium transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path>
                        </svg>
                        Nouveau patient
                    </a>
                    <a href="getPatients" class="flex items-center gap-3 px-4 py-3 text-gray-600 hover:bg-gray-50 rounded-xl transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                        </svg>
                        Mes patients
                    </a>
                    <a href="#" class="flex items-center gap-3 px-4 py-3 text-gray-600 hover:bg-gray-50 rounded-xl transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                        </svg>
                        Rendez-vous
                    </a>
                </nav>

                <!-- Quick Stats -->
                <div class="mt-6 space-y-3">
                    <div class="bg-gradient-to-br from-blue-50 to-blue-100 rounded-xl p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-xs text-blue-600 font-medium">Patients aujourd'hui</p>
                                <p class="text-2xl font-bold text-blue-700">12</p>
                            </div>
                            <div class="text-3xl">🏥</div>
                        </div>
                    </div>
                    <div class="bg-gradient-to-br from-green-50 to-green-100 rounded-xl p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-xs text-green-600 font-medium">Examens terminés</p>
                                <p class="text-2xl font-bold text-green-700">8</p>
                            </div>
                            <div class="text-3xl">✅</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Form Section -->
        <div class="lg:col-span-3">
            <div class="bg-white rounded-2xl shadow-lg p-8 slide-in" style="animation-delay: 0.1s">
                <div class="mb-6">
                    <h2 class="text-2xl font-bold text-gray-800 mb-2">Enregistrer un nouveau patient 🩺</h2>
                    <p class="text-gray-500 text-sm">Remplissez les informations du patient et ses signes vitaux</p>
                </div>

                <form id="patientForm" action="ajouterPatient" method="post" class="space-y-8">
                    <!-- Section: Informations Personnelles -->
                    <div class="border-2 border-pink-100 rounded-2xl p-6 bg-gradient-to-br from-pink-50 to-purple-50">
                        <h3 class="text-lg font-semibold text-gray-800 mb-4 flex items-center gap-2">
                            <span class="text-2xl">👤</span> Informations Personnelles
                        </h3>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <!-- Nom -->
                            <div>
                                <label for="lastName"  class="block text-sm font-medium text-gray-700 mb-2">
                                    Nom <span class="text-red-500">*</span>
                                </label>
                                <input
                                        type="text"
                                        id="lastName"
                                        name="nom"
                                        required
                                        class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none bg-white"
                                        placeholder="Dupont"
                                >
                            </div>

                            <!-- Prénom -->
                            <div>
                                <label for="firstName" class="block text-sm font-medium text-gray-700 mb-2">
                                    Prénom <span class="text-red-500">*</span>
                                </label>
                                <input
                                        type="text"
                                        id="firstName"
                                        name="prenom"
                                        required
                                        class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none bg-white"
                                        placeholder="Marie"
                                >
                            </div>

                            <!-- Date de naissance -->
                            <div>
                                <label for="birthDate" class="block text-sm font-medium text-gray-700 mb-2">
                                    🎂 Date de naissance <span class="text-red-500">*</span>
                                </label>
                                <input
                                        type="date"
                                        id="birthDate"
                                        name="dateNaissance"
                                        required
                                        class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none bg-white"
                                >
                            </div>

                            <!-- Numéro de sécurité sociale -->
                            <div>
                                <label for="socialSecurity" class="block text-sm font-medium text-gray-700 mb-2">
                                    🆔 Numéro de sécurité sociale <span class="text-red-500">*</span>
                                </label>
                                <input
                                        type="text"
                                        id="socialSecurity"
                                        name="num_securite_sociale"
                                        required
                                        pattern="[0-9]{15}"
                                        maxlength="15"
                                        class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none bg-white"
                                        placeholder="123456789012345"
                                >
                                <p class="text-xs text-gray-500 mt-1">15 chiffres</p>
                            </div>

                            <!-- Téléphone -->
                            <div>
                                <label for="phone" class="block text-sm font-medium text-gray-700 mb-2">
                                    📞 Téléphone <span class="text-red-500">*</span>
                                </label>
                                <input
                                        type="tel"
                                        id="phone"
                                        name="tele"
                                        required
                                        class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none bg-white"
                                        placeholder="06 12 34 56 78"
                                >
                            </div>

                            <!-- Adresse -->
                            <div>
                                <label for="address" class="block text-sm font-medium text-gray-700 mb-2">
                                    🏠 Adresse <span class="text-red-500">*</span>
                                </label>
                                <input
                                        type="text"
                                        id="address"
                                        name="adresse"
                                        required
                                        class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none bg-white"
                                        placeholder="123 Rue de la Santé, Paris"
                                >
                            </div>
                        </div>
                    </div>

                    <!-- Section: Signes Vitaux -->
                    <div class="border-2 border-blue-100 rounded-2xl p-6 bg-gradient-to-br from-blue-50 to-cyan-50">
                        <h3 class="text-lg font-semibold text-gray-800 mb-4 flex items-center gap-2">
                            <span class="text-2xl">💓</span> Signes Vitaux
                        </h3>

                        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                            <!-- Température -->
                            <div>
                                <label for="temperature" class="block text-sm font-medium text-gray-700 mb-2">
                                    🌡️ Température (°C) <span class="text-red-500">*</span>
                                </label>
                                <div class="relative">
                                    <input
                                            type="number"
                                            id="temperature"
                                            name="temperature"
                                            required
                                            step="0.1"
                                            min="35"
                                            max="42"
                                            class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-blue-400 focus:ring-4 focus:ring-blue-100 transition-all outline-none bg-white"
                                            placeholder="37.0"
                                    >
                                    <span class="absolute right-4 top-1/2 transform -translate-y-1/2 text-gray-500 font-medium">°C</span>
                                </div>
                                <p class="text-xs text-gray-500 mt-1">Normal: 36.5 - 37.5°C</p>
                            </div>

                            <!-- Tension artérielle -->
                            <div>
                                <label for="tension" class="block text-sm font-medium text-gray-700 mb-2">
                                    💉 Tension artérielle <span class="text-red-500">*</span>
                                </label>
                                <input
                                        type="text"
                                        id="tension"
                                        name="tension"
                                        required
                                        pattern="[0-9]{2,3}/[0-9]{2,3}"
                                        class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-blue-400 focus:ring-4 focus:ring-blue-100 transition-all outline-none bg-white"
                                        placeholder="120/80"
                                >
                                <p class="text-xs text-gray-500 mt-1">Format: systolique/diastolique (ex: 120/80)</p>
                            </div>

                            <!-- Pouls -->
                            <div>
                                <label for="pulse" class="block text-sm font-medium text-gray-700 mb-2">
                                    ❤️ Pouls (bpm) <span class="text-red-500">*</span>
                                </label>
                                <div class="relative">
                                    <input
                                            type="number"
                                            id="pulse"
                                            name="pouls"
                                            required
                                            min="40"
                                            max="200"
                                            class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-blue-400 focus:ring-4 focus:ring-blue-100 transition-all outline-none bg-white"
                                            placeholder="72"
                                    >
                                    <span class="absolute right-4 top-1/2 transform -translate-y-1/2 text-gray-500 font-medium">bpm</span>
                                </div>
                                <p class="text-xs text-gray-500 mt-1">Normal: 60 - 100 bpm</p>
                            </div>
                        </div>
                    </div>

                    <!-- Submit Buttons -->
                    <div class="flex gap-4 pt-4">
                        <button
                                type="submit"
                                class="flex-1 bg-gradient-to-r from-pink-400 to-purple-400 text-white font-semibold py-4 rounded-xl hover:from-pink-500 hover:to-purple-500 transform hover:scale-105 transition-all duration-200 shadow-lg hover:shadow-xl flex items-center justify-center gap-2"
                        >
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                            </svg>
                            Enregistrer le patient
                        </button>
                        <button
                                type="reset"
                                class="px-8 py-4 border-2 border-gray-300 text-gray-700 font-semibold rounded-xl hover:bg-gray-50 transition-all duration-200"
                        >
                            Réinitialiser
                        </button>
                    </div>
                </form>
                <% String message = (String) request.getAttribute("message"); %>
                <% if (message != null) { %>
                <div class="mt-6 bg-green-50 border-2 border-green-300 rounded-xl p-4 flex items-center gap-3 shadow-md animate-fade-in">
                    <div class="text-3xl">✅</div>
                    <div>
                        <p class="font-semibold text-green-800"><%= message %></p>
                        <p class="text-sm text-green-600">Les informations du patient ont été enregistrées.</p>
                    </div>
                </div>
                <% } %>

                <!-- Success Message -->
                <div id="successMessage" class="hidden mt-6 bg-green-50 border-2 border-green-200 rounded-xl p-4">
                    <div class="flex items-center gap-3">
                        <div class="text-3xl">✅</div>
                        <div>
                            <p class="font-semibold text-green-800">Patient enregistré avec succès !</p>
                            <p class="text-sm text-green-600" id="successDetails"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<%--<script>--%>
<%--    const form = document.getElementById('patientForm');--%>
<%--    const successMessage = document.getElementById('successMessage');--%>
<%--    const successDetails = document.getElementById('successDetails');--%>
<%--    const logoutBtn = document.getElementById('logoutBtn');--%>

<%--    form.addEventListener('submit', function(e) {--%>
<%--        e.preventDefault();--%>

<%--        const patientData = {--%>
<%--            lastName: document.getElementById('lastName').value,--%>
<%--            firstName: document.getElementById('firstName').value,--%>
<%--            birthDate: document.getElementById('birthDate').value,--%>
<%--            socialSecurity: document.getElementById('socialSecurity').value,--%>
<%--            phone: document.getElementById('phone').value,--%>
<%--            address: document.getElementById('address').value,--%>
<%--            vitalSigns: {--%>
<%--                temperature: document.getElementById('temperature').value,--%>
<%--                tension: document.getElementById('tension').value,--%>
<%--                pulse: document.getElementById('pulse').value--%>
<%--            }--%>
<%--        };--%>

<%--        console.log('Nouveau patient enregistré:', patientData);--%>

<%--        // Show success message--%>
<%--        successDetails.textContent = `${patientData.firstName} ${patientData.lastName} a été ajouté(e) au système.`;--%>
<%--        successMessage.classList.remove('hidden');--%>

<%--        // Reset form--%>
<%--        form.reset();--%>

<%--        // Hide success message after 6 seconds--%>
<%--        setTimeout(() => {--%>
<%--            successMessage.classList.add('hidden');--%>
<%--        }, 6000);--%>
<%--    });--%>


<%--</script>--%>
</body>
</html>