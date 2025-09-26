<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>VemuCollege LMS</title>

  <style>
    /* === Global Styles === */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Segoe UI", sans-serif;
    }

    body {
      background: linear-gradient(to right, #6a11cb, #2575fc);
      color: #fff;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
    }

    header {
      background: rgba(0, 0, 0, 0.2);
      padding: 20px;
      text-align: center;
      box-shadow: 0 2px 8px rgba(0,0,0,0.2);
    }

    header h1 {
      font-size: 2em;
      letter-spacing: 1px;
    }

    nav {
      background: rgba(255, 255, 255, 0.1);
      display: flex;
      justify-content: center;
      padding: 10px 0;
      gap: 30px;
    }

    nav a {
      color: #fff;
      text-decoration: none;
      font-weight: bold;
      transition: color 0.3s ease;
    }

    nav a:hover {
      color: #00f7ff;
    }

    main {
      flex: 1;
      padding: 40px 20px;
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }

    .login-box, .dashboard {
      background: rgba(255, 255, 255, 0.1);
      padding: 30px;
      border-radius: 12px;
      max-width: 400px;
      width: 100%;
      box-shadow: 0 8px 20px rgba(0,0,0,0.3);
    }

    .login-box h2 {
      margin-bottom: 20px;
    }

    .login-box input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: none;
      border-radius: 6px;
      outline: none;
    }

    .login-box button {
      width: 100%;
      padding: 12px;
      border: none;
      background: #00f7ff;
      color: #000;
      font-weight: bold;
      border-radius: 6px;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    .login-box button:hover {
      background: #00d3d6;
    }

    footer {
      background: rgba(0, 0, 0, 0.2);
      text-align: center;
      padding: 15px;
      font-size: 14px;
    }
  </style>
</head>

<body>
  <header>
    <h1>Vignesh College - Learning Management System</h1>
  </header>

  <nav>
    <a href="#" onclick="showLogin()">Login</a>
    <a href="#" onclick="showDashboard()">Dashboard</a>
    <a href="#">Courses</a>
    <a href="#">About</a>
  </nav>

  <main>
    <!-- Login Form -->
    <div class="login-box" id="loginBox">
      <h2>Student Login</h2>
      <input type="text" id="username" placeholder="Username" />
      <input type="password" id="password" placeholder="Password" />
      <button onclick="handleLogin()">Login</button>
    </div>

    <!-- Dashboard Placeholder -->
    <div class="dashboard" id="dashboard" style="display:none;">
      <h2>Welcome, <span id="userDisplay">Student</span>!</h2>
      <p>This is your LMS dashboard. Access courses, materials, and more here.</p>
    </div>
  </main>

  <footer>
    &copy; 2025 VemuCollege LMS. All rights reserved.
  </footer>

  <script>
    function handleLogin() {
      const user = document.getElementById('username').value.trim();
      const pass = document.getElementById('password').value.trim();

      if (user === "" || pass === "") {
        alert("Please fill in both fields.");
        return;
      }

      // Dummy login logic
      if (user === "student" && pass === "1234") {
        document.getElementById('loginBox').style.display = "none";
        document.getElementById('dashboard').style.display = "block";
        document.getElementById('userDisplay').innerText = user;
      } else {
        alert("Invalid credentials. Try student / 1234");
      }
    }

    function showLogin() {
      document.getElementById('loginBox').style.display = "block";
      document.getElementById('dashboard').style.display = "none";
    }

    function showDashboard() {
      document.getElementById('loginBox').style.display = "none";
      document.getElementById('dashboard').style.display = "block";
    }
  </script>
</body>
</html>

