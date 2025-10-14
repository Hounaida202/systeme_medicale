<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Ajouter un Utilisateur</title>
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
                    <h1 class="text-2xl font-bold text-gray-800">Dashboard Médical</h1>
                    <p class="text-sm text-gray-500">Gestion des utilisateurs 👨‍⚕️</p>
                </div>
            </div>
            <div class="flex items-center gap-4">
                <span class="text-sm text-gray-600">Admin</span>
                <div class="w-10 h-10 bg-gradient-to-br from-pink-300 to-purple-300 rounded-full flex items-center justify-center text-white font-semibold">
                    A
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
        <!-- Sidebar -->
        <div class="lg:col-span-1">
            <div class="bg-white rounded-2xl shadow-lg p-6 slide-in">
                <h2 class="text-lg font-semibold text-gray-800 mb-4 flex items-center gap-2">
                    <span>📊</span> Navigation
                </h2>
                <nav class="space-y-2">
                    <a href="#" class="flex items-center gap-3 px-4 py-3 bg-gradient-to-r from-pink-100 to-purple-100 text-pink-700 rounded-xl font-medium transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path>
                        </svg>
                        Ajouter un utilisateur
                    </a>
                    <a href="#" class="flex items-center gap-3 px-4 py-3 text-gray-600 hover:bg-gray-50 rounded-xl transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"></path>
                        </svg>
                        Liste des utilisateurs
                    </a>
                    <a href="#" class="flex items-center gap-3 px-4 py-3 text-gray-600 hover:bg-gray-50 rounded-xl transition-all">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                        </svg>
                        Statistiques
                    </a>
                </nav>

                <!-- Stats Cards -->
                <div class="mt-6 space-y-3">
                    <div class="bg-gradient-to-br from-blue-50 to-blue-100 rounded-xl p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-xs text-blue-600 font-medium">Total Médecins</p>
                                <p class="text-2xl font-bold text-blue-700">24</p>
                            </div>
                            <div class="text-3xl">👨‍⚕️</div>
                        </div>
                    </div>
                    <div class="bg-gradient-to-br from-pink-50 to-pink-100 rounded-xl p-4">
                        <div class="flex items-center justify-between">
                            <div>
                                <p class="text-xs text-pink-600 font-medium">Total Infirmiers</p>
                                <p class="text-2xl font-bold text-pink-700">18</p>
                            </div>
                            <div class="text-3xl">👩‍⚕️</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Form Section -->
        <div class="lg:col-span-2">
            <div class="bg-white rounded-2xl shadow-lg p-8 slide-in" style="animation-delay: 0.1s">
                <!-- Decorative elements -->
                <div class="absolute top-4 right-4 text-4xl opacity-10 float">🩺</div>

                <div class="mb-6">
                    <h2 class="text-2xl font-bold text-gray-800 mb-2">Ajouter un nouvel utilisateur ✨</h2>
                    <p class="text-gray-500 text-sm">Remplissez les informations ci-dessous pour créer un nouveau compte</p>
                </div>

<%--                l'ajout de la forme de l'insertion d'un utilisateur --%>

                <form id="userForm" action="ajouterCompte" method="post" class="space-y-6">
                    <!-- First Name & Last Name -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <label for="firstName" class="block text-sm font-medium text-gray-700 mb-2">
                                👤 Prénom
                            </label>
                            <input
                                    type="text"
                                    id="firstName"
                                    name="firstname"
                                    required
                                    class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none"
                                    placeholder="Jean"
                            >
                        </div>
                        <div>
                            <label for="lastName" class="block text-sm font-medium text-gray-700 mb-2">
                                👤 Nom
                            </label>
                            <input
                                    type="text"
                                    id="lastName"
                                    name="lastname"
                                    required
                                    class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none"
                                    placeholder="Dupont"
                            >
                        </div>
                    </div>

                    <!-- Email -->
                    <div>
                        <label for="email" class="block text-sm font-medium text-gray-700 mb-2">
                            📧 Adresse email
                        </label>
                        <input
                                type="email"
                                id="email"
                                name="email"
                                required
                                class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none"
                                placeholder="exemple@email.com"
                        >
                    </div>

                    <!-- Password -->
                    <div>
                        <label for="password" class="block text-sm font-medium text-gray-700 mb-2">
                            🔒 Mot de passe
                        </label>
                        <input
                                type="password"
                                id="password"
                                name="password"
                                required
                                minlength="6"
                                class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none"
                                placeholder="Minimum 6 caractères"
                        >
                        <p class="text-xs text-gray-500 mt-1">Le mot de passe doit contenir au moins 6 caractères</p>
                    </div>

                    <!-- Role -->
                    <div>
                        <label for="role" class="block text-sm font-medium text-gray-700 mb-2">
                            🏥 Rôle / Spécialité
                        </label>
                        <select
                                id="role"
                                name="role"
                                required
                                class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none bg-white"
                        >
                            <option value="">Sélectionnez un rôle...</option>
                            <option value="infirmier">👩‍⚕️ Infirmier</option>
                            <option value="medecin_general">👨‍⚕️ Médecin Général</option>
                            <option value="pediatre">🧒 Pédiatre</option>
                            <option value="gynecologue">👶 Gynécologue</option>
                            <option value="cardiologue">❤️ Cardiologue</option>
                            <option value="dermatologue">🔬 Dermatologue</option>
                            <option value="neurologue">🧠 Neurologue</option>
                            <option value="psychiatre">💭 Psychiatre</option>
                        </select>
                    </div>

                    <!-- Submit Buttons -->
                    <div class="flex gap-4 pt-4">
                        <button
                                type="submit"
                                class="flex-1 bg-gradient-to-r from-pink-400 to-purple-400 text-white font-semibold py-3 rounded-xl hover:from-pink-500 hover:to-purple-500 transform hover:scale-105 transition-all duration-200 shadow-lg hover:shadow-xl"
                        >
                            ✨ Créer l'utilisateur
                        </button>
                        <button
                                type="reset"
                                class="px-6 py-3 border-2 border-gray-300 text-gray-700 font-semibold rounded-xl hover:bg-gray-50 transition-all duration-200"
                        >
                            Réinitialiser
                        </button>
                    </div>
                </form>

    <%--           l'ajout de la forme de l'insertion d'un utilisateur --%>


                <!-- Success Message (hidden by default) -->
                <div id="successMessage" class="hidden mt-6 bg-green-50 border-2 border-green-200 rounded-xl p-4">
                    <div class="flex items-center gap-3">
                        <div class="text-2xl">✅</div>
                        <div>
                            <p class="font-semibold text-green-800">Utilisateur créé avec succès !</p>
                            <p class="text-sm text-green-600">Les informations ont été enregistrées.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<!-- Supprimez tout le JavaScript d'event listener et gardez juste : -->
<script>
    // Juste pour le logout
    const logoutBtn = document.getElementById('logoutBtn');

    logoutBtn.addEventListener('click', function() {
        if (confirm('Êtes-vous sûr de vouloir vous déconnecter ? 👋')) {
            console.log('Déconnexion...');
            alert('Déconnexion réussie ! À bientôt ! 💖');
        }
    });
</script>
</body>
</html>