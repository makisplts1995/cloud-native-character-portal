# Rick and Morty Cloud-Native Explorer

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
    git clone <repository-url>
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

Academic exercise for the "Cloud Computing and Advanced Application Architectures" course at the University of Piraeus.
