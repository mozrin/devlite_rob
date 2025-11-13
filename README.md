# Devlite Rob – Devcontainer Setup

![alt text](.devcontainer/stop-and-read-this.png)

Devlite Rob uses a **devcontainer** — a ready‑made development environment that runs inside Docker.  
Think of it as a "coding sandbox" that already has Node.js, Firebase CLI, Google Cloud SDK, and other tools installed.  
You don’t need to set up your machine manually — the container gives you a consistent, repeatable environment.

---

## 🚀 Quickstart

1. **Clone the project from GitHub**

   ```bash
   git clone https://github.com/mozrin/devlite_rob.git my_project
   cd my_project
   ```

2. **Open in VS Code**

   ```bash
   code .
   ```

   - VS Code will detect the `.devcontainer` folder.
   - When asked **"Reopen in Devcontainer"**, click **No** the first time.

3. **Edit the devcontainer.json**

   - Open `.devcontainer/devcontainer.json`.
   - Find this line:
     ```json
     "workspaceFolder": "/change_this_before_using",
     ```
   - Change it to match your folder name. For example, if you cloned into `my_project`:
     ```json
     "workspaceFolder": "/my_project",
     ```
   - Save the file and exit VS Code.

4. **Restart VS Code in your project folder**

   ```bash
   code .
   ```

   - This time, when asked **"Reopen in Devcontainer"**, click **Yes**.

5. **Wait for the first build**

   - The first time will take longer because Docker builds the container and installs all tools.
   - Be patient — once it finishes, you’ll be inside the devcontainer.

6. **Possible Missing Jupyter Extension**
   ```bash
   The first time you install a container, might see an error about a missing Jupyter Extension. This
   extension runs in vscode and is (evidently) required for this environment. Follow the prompts to install
   it and the Reload the container. It takes just seconds the next time it loads.
   ```

---

## 📦 What Happens During Setup

- **Docker builds the container** using the base Ubuntu image.
- **postCreateCommand.sh** runs automatically:
  - Installs utilities (`ping`, `make`, `gawk`).
  - Installs Python3 (utility functionaility and tool access).
  - Installs Node.js (for frontend/backend).
  - Installs Firebase CLI (`firebase` command).
  - Installs Google Cloud SDK (`gcloud` command).
  - Optionally installs PHP + Composer (disabled by default).
- VS Code connects you directly into this container environment.

---

## 🧪 Common Commands Inside the Container

- Start frontend:
  ```bash
  cd src/frontend
  npm run dev
  ```
- Start backend:
  ```bash
  cd src/backend/nlsearch
  npm run start
  ```
- Deploy to Firebase:
  ```bash
  firebase deploy --only hosting
  ```
- Deploy backend to Cloud Run:
  ```bash
  gcloud run deploy nlsearch
  ```

---

## 🔑 Authentication

- **Firebase**: Run `firebase login` inside the container.
- **Google Cloud**: Run `gcloud auth login` inside the container.
- Credentials are stored in mounted volumes so you don’t have to re‑auth every time.

---

## 🎯 Why This Matters

- **Consistency**: Everyone on the team gets the same environment.
- **Isolation**: No clutter on your host machine.
- **Automation**: Tools install themselves — no manual setup.
- **Portability**: Works the same on Windows, macOS, and Linux.

---
