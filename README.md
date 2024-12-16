# AutoClubNorth
## Car Club Membership Management - Cloud App

A cloud-based application for managing car club members. The app includes a React & TailwindCSS frontend, a Spring Boot backend using Gradle, authentication with Spring Security and JWT, and monitoring with Sentry & Grafana Cloud.

### Technologies Used
- **Frontend**: React, TailwindCSS
- **Backend**: Spring Boot, Spring Security, JWT
- **Build Tool**: Gradle
- **Database**: PostgreSQL (hosted on Render)
- **Cloud Hosting**: Render (combined backend/frontend hosting)
- **Logs & Monitoring**: 
  - Sentry (error tracking)
  - Grafana Cloud (log monitoring)
- **CI/CD**: GitHub Actions
- **Containerization**: Docker

### Features
- Manage members (add, update, delete)
- Role-based access control (ADMIN, USER)
- Real-time logs & error tracking
- Responsive UI with TailwindCSS

## Getting Started
### Prerequisites
- Java 17
- Node.js & npm
- Docker (optional)

### Installation
1. Clone the repository:
   ```
   git clone https://github.com/username/car-club-management.git
   ```
2. Backend Setup:
   ```
   ./gradlew bootRun
   ```
3. Frontend Setup:
   ```
   cd frontend
   npm install
   npm start
   ```

## Deployment
1. Build the frontend:
```npm run build```
2. Place the **build** folder in the backend's `src/main/resources/static` directory.
3. Deploy the backend to Render.

## Monitoring
- **Sentry**: Tracks application errors and exceptions.
- **Grafana Cloud**: Logs and performance metrics.
