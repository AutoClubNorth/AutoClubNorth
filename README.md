# AutoClubNorth
## Car Club Membership Management - Cloud App

A cloud-based application for managing car club members. The app includes a React & TailwindCSS frontend, a Spring Boot backend using Gradle, authentication with Spring Security and JWT, and monitoring with Sentry & Grafana Cloud.

### Technologies Used
- **Frontend**: React, TailwindCSS
- **Backend**: Java17, Spring Boot v3.4.0, Spring Security, JWT, Lombok
- **Build Tool**: Gradle
- **Database**:
  - PostgreSQL (hosted on Render)
  - Flyway (Database migrations)
  - JPA (Database interaction and ORM)
- **Cloud Hosting**: Render (combined backend/frontend hosting)
- **Logs & Monitoring**: 
  - Sentry (error tracking)
  - Grafana Cloud (log monitoring)
  - Actuator (application metrics and monitoring)
- **CI/CD**: GitHub Actions
- **Containerization**: Docker
- **Testing**: JUnit
- **API Documentation**: Swagger

### Features
- Manage members (add, update, delete)
- Role-based access control (ADMIN, USER)
- Real-time logs & error tracking
- Responsive UI with TailwindCSS

## Getting Started
### Prerequisites
- Java 17
- Node.js & npm
- Docker

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

## API Documentation
You can view the API documentation at the following URL:
[SwaggerUI API Docs](http://localhost:8080/swagger-ui.html)

