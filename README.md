# docker-vscode-coding-tracker-server
# Dockerized VS Code Coding Tracker Server (VSCT)

This project provides a Docker container for the **VS Code Coding Tracker** server, a tool for tracking your coding time in Visual Studio Code.

## Features

- Based on Node.js (version 23-alpine)
- Exposes port `10345`
- Local data persistence via volume
- Token-based authentication (replace default value)
- Automatic restart if the container stops unexpectedly

## Project Structure

<ul>
  <li>docker-compose.yml</li>
  <li>Dockerfile</li>
  <li>vscode-coding-tracker-server/</li>
  <li>volumes/
    <ul>
      <li>database/</li>
    </ul>
  </li>
</ul>

## Usage

### 1. Clone the repository

```bash
git clone https://github.com/tecteluy/docker-vscode-coding-tracker-server.git
cd docker-vscode-coding-tracker-server
```

### 2. Set your authentication token

Edit the Dockerfile and replace the token for your own:
```dockerfile
CMD ["npm", "start", "--", "-t", "my-secret-token"]
```

### 3. Build and run the container
```bash
docker-compose up --build -d
```

The server will be available at http://localhost:10345

### 4. Stop the container
```bash
docker-compose down
```