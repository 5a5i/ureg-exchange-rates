# U-Reg Exchange Rates

This project handles currency exchange rates with backend (Laravel) and frontend (React) applications.

---

## 📚 **Tech Stack**
- Backend: **Laravel 11**, **PHP 8.2**
- Frontend: **React 19**, **Node.js 20**
- Database: **MySQL 8.0**
- Web Server: **Nginx**

---

## 🛠️ **Prerequisites**
- **Docker Desktop** (latest version)

---

## 🚀 **Setup & Run the Project**
1. Clone the main repository:
   ```bash
   git clone --recurse-submodules https://github.com/yourusername/ureg-exchange-rates.git
2. Enter into project directory:
   ```bash
   cd ureg-exchange-rates
3. Start Docker Compose:
- Method 1 - Execute using Makefile from project directory:
   ```bash
   make setup
   make data
- Method 2 - Execute directly into submodules from project directory:
   ```bash
   docker compose -f ./backend/docker-compose.yml build --no-cache --force-rm
   docker compose -f ./frontend/docker-compose.yml build --no-cache --force-rm
   docker compose -f ./backend/docker-compose.yml up -d
   docker compose -f ./frontend/docker-compose.yml up -d
   docker exec app bash -c "composer update"
   docker exec app bash -c "php artisan migrate"
   docker exec app bash -c "php artisan db:seed"
4. Stop Docker Compose:
- Method 1 - Execute using Makefile from project directory:
   ```bash
   make stop
- Method 2 - Execute directly into submodules from project directory:
   ```bash
   docker compose -f ./backend/docker-compose.yml stop
   docker compose -f ./frontend/docker-compose.yml stop
5. Access the application:
- Backend API: http://localhost:8000/api/rates
- Frontend UI: http://localhost:3000

---

## 🔑 **Environment Variables**
1. Backend (backend/.env.example)
   ```plaintext
    APP_KEY=base64:randomkeyhere
    DB_CONNECTION=mysql
    DB_HOST=mysql
    DB_PORT=3306
    DB_DATABASE=ureg_exchange_rates
    DB_USERNAME=ureg
    DB_PASSWORD=password
2. Frontend (frontend/.env.example)
   ```plaintext
    REACT_APP_API_URL=http://localhost:8000/api
---

## 📂 **Project Structure**
1. Backend (backend/.env.example)
   ```plaintext
    /ureg-exchange-rates
    ├── docker-compose.yml
    ├── Dockerfile
    ├── /backend    <-- Laravel backend
    ├── /frontend   <-- React frontend
    └── README.md
---
## 📬 **Contact Information**
If you have any questions, suggestions, or need assistance with this project, feel free to reach out:

👤 Name: Sasi Kumaran<br />
📧 Email: [sasi_kumaran@ymail.com](mailto:sasi_kumaran@ymail.com)<br />
📱 WhatsApp: [+6016 2527271](https://wa.me/60162527271)