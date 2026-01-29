<div align="center">

  <h1>Cloud-Native Microservices Architecture</h1>
  <h3>Cloud Computing and Advanced Application Architectures</h3>
  <p><em>Rick and Morty Themed Implementation</em></p>

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![Redis](https://img.shields.io/badge/redis-%23DD0031.svg?style=for-the-badge&logo=redis&logoColor=white)
![CouchDB](https://img.shields.io/badge/CouchDB-E42528?style=for-the-badge&logo=Apache%20CouchDB&logoColor=white)
![Budibase](https://img.shields.io/badge/Budibase-%23000000.svg?style=for-the-badge&logo=budibase&logoColor=white)

</div>

<br />

A scalable, microservices-based web application for exploring the Rick and Morty multiverse and managing favorite characters.

## Features

- **Character Explorer**: Browse the full cast using the API.
- **Family Interactions**: Dynamic interaction with characters using Groq.
- **Favorites Collection**: Persist your favorite characters locally via CouchDB.
- **Microservices**: Decoupled architecture (Budibase, CouchDB, Redis, Nginx).
- **Mock Context**: Custom mock server data for application context.

## Architecture

| Service       | Technology  | Description                   |
| :------------ | :---------- | :---------------------------- |
| **Gateway**   | Nginx       | Single entry point (Port 80). |
| **UI/Logic**  | Budibase    | Frontend and business logic.  |
| **Database**  | CouchDB     | NoSQL database for favorites. |
| **Cache**     | Redis       | Session state management.     |
| **Mock APIs** | JSON Server | Static data providers.        |
| **Ops**       | Portainer   | Container management.         |

## Quick Start

1.  **Clone the repo:**

    ```bash
    git clone https://github.com/makisplts1995/cloud-native-character-portal.git
    ```

2.  **Start the stack:**

    ```bash
    cd Infrastructure
    docker compose up -d --build
    ```

3.  **Access:**
    - **App:** [http://localhost](http://localhost)
    - **Portainer:** [http://localhost:9000](http://localhost:9000)

## Configuration

### API Keys

To enable the interactive features, add a **Groq API Key** in the Budibase settings:

- **Location:** Budibase > Design > Data Sources > Groq
- **Header:** `Authorization: Bearer <your-api-key>`

### Defaults

- **CouchDB**: `admin` / `admin`

## License

Academic exercise for the "Cloud Computing and Advanced Application Architectures" course.
