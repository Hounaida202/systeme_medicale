<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion - Espace Médical</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }
        .float { animation: float 3s ease-in-out infinite; }

        @keyframes pulse-soft {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.6; }
        }
        .pulse-soft { animation: pulse-soft 2s ease-in-out infinite; }
    </style>
</head>
<%--<a href="Dashbaord.jsp">--%>
<%--    <button>Dash</button>--%>
<%--</a>--%>
<body class="bg-gradient-to-br from-blue-50 via-pink-50 to-purple-50 min-h-screen flex items-center justify-center p-4">
<!-- Decorative elements -->
<%--<div class="absolute top-10 left-10 text-6xl opacity-20 float">💊</div>--%>
<%--<div class="absolute top-20 right-20 text-5xl opacity-20 float" style="animation-delay: 0.5s">🩺</div>--%>
<%--<div class="absolute bottom-20 left-20 text-5xl opacity-20 float" style="animation-delay: 1s">❤️</div>--%>
<%--<div class="absolute bottom-10 right-10 text-6xl opacity-20 float" style="animation-delay: 1.5s">💉</div>--%>

<!-- Login Card -->
<div class="bg-white rounded-3xl shadow-2xl p-8 max-w-md w-full relative overflow-hidden">
    <!-- Decorative top wave -->
<%--    <div class="absolute top-0 left-0 right-0 h-2 bg-gradient-to-r from-blue-400 via-pink-400 to-purple-400"></div>--%>

    <!-- Header -->
    <div class="text-center mb-8">
        <div class="inline-block bg-gradient-to-br from-blue-100 to-pink-100 rounded-full p-4 mb-4">
            <svg class="w-16 h-16 text-pink-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
            </svg>
        </div>
        <h1 class="text-3xl font-bold text-gray-800 mb-2">Bienvenue ! 👋</h1>
        <p class="text-gray-500 text-sm">Connectez-vous à votre espace santé</p>
    </div>

    <!-- Login Form -->
    <form id="loginForm" action="login" method="post" class="space-y-6">
        <!-- Email Input -->
        <div class="relative">
            <label for="email" class="block text-sm font-medium text-gray-700 mb-2">
                 Adresse email
            </label>
            <div class="relative">
                <input
                        type="email"
                        id="email"
                        name="email"
                        required
                        class="w-full px-4 py-3 pl-12 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none"
                        placeholder="exemple@email.com"
                >
                <div class="absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-400">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207"></path>
                    </svg>
                </div>
            </div>
        </div>

        <!-- Password Input -->
        <div class="relative">
            <label for="password" class="block text-sm font-medium text-gray-700 mb-2">
                 Mot de passe
            </label>
            <div class="relative">
                <input
                        type="password"
                        id="password"
                        name="password"
                        required
                        class="w-full px-4 py-3 pl-12 border-2 border-gray-200 rounded-xl focus:border-pink-400 focus:ring-4 focus:ring-pink-100 transition-all outline-none"
                        placeholder="••••••••"
                >
                <div class="absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-400">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                    </svg>
                </div>
            </div>
        </div>

        <!-- Remember Me & Forgot Password -->
        <div class="flex items-center justify-between text-sm">
            <label class="flex items-center cursor-pointer">
                <input type="checkbox" class="w-4 h-4 text-pink-500 border-gray-300 rounded focus:ring-pink-400">
                <span class="ml-2 text-gray-600">Se souvenir de moi</span>
            </label>
            <a href="#" class="text-pink-500 hover:text-pink-600 font-medium transition-colors">
                Mot de passe oublié ?
            </a>
        </div>

        <!-- Submit Button -->
        <button
                type="submit"
                class="w-full bg-gradient-to-r from-pink-400 to-purple-400 text-white font-semibold py-3 rounded-xl hover:from-pink-500 hover:to-purple-500 transform hover:scale-105 transition-all duration-200 shadow-lg hover:shadow-xl"
        >
            Se connecter
        </button>
        <% if (request.getAttribute("errorMessage") != null) { %>
        <div style="color:red; text-align:center; margin-bottom:10px;">
            <%= request.getAttribute("errorMessage") %>
        </div>
        <% } %>

    </form>

    <!-- Divider -->
    <div class="relative my-6">
        <div class="absolute inset-0 flex items-center">
            <div class="w-full border-t border-gray-200"></div>
        </div>
        <div class="relative flex justify-center text-sm">
            <span class="px-4 bg-white text-gray-500">Ou</span>
        </div>
    </div>

    <!-- Sign Up Link -->
    <div class="text-center">
        <p class="text-gray-600 text-sm">
            Pas encore de compte ?
            <a href="#" class="text-pink-500 hover:text-pink-600 font-semibold transition-colors">
                Créer un compte
            </a>
        </p>
    </div>

    <!-- Footer Note -->
    <div class="mt-6 text-center">
        <p class="text-xs text-gray-400 flex items-center justify-center gap-1">
            <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                <path fill-rule="evenodd" d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z" clip-rule="evenodd"></path>
            </svg>
            Connexion sécurisée et cryptée
        </p>
    </div>
</div>

<%--<script>--%>
<%--    document.getElementById('loginForm').addEventListener('submit', function(e) {--%>
<%--        e.preventDefault();--%>
<%--        const email = document.getElementById('email').value;--%>
<%--        const password = document.getElementById('password').value;--%>

<%--        // Simulation de connexion--%>
<%--        alert('Connexion en cours...\nEmail: ' + email);--%>
<%--        console.log('Email:', email, 'Password:', password);--%>
<%--    });--%>
<%--</script>--%>
</body>
</html>