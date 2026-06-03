# Local YouTube Video Frame Player

A lightweight web utility designed for Ubuntu users to stream YouTube videos inside a clean web frame. The project includes a dedicated Python launcher script that instantly fires up a local web server and opens the application in a secure browser environment.

## Features

- **Embedded Video Frame:** Clean layout focused entirely on the video content.
- **Dynamic Input:** Easily paste any YouTube video URL to load and play it instantly via JavaScript.
- **One-Click Local Server:** A Python automated script manages the local web server setup effortlessly.
- **Privacy First:** The Python launcher automatically triggers your default Ubuntu browser to open the site in **Private / Incognito** mode.
- **Auto-Cleanup:** The background server process terminates automatically when you close the terminal or press `Ctrl+C`.
- **Automated Desktop Integration:** Create a fully working desktop shortcut with a single installation command.

## Getting Started

### Prerequisites

- Ubuntu Linux (or any Linux distribution with a compatible terminal)
- Python 3.x
- Modern web browser (Firefox, Google Chrome, or Chromium)

### Installation & Usage

1. **Clone the repository:**
   ```bash
   git@github.com:ilambrev/youtube-player.git
   ```

2. **Make the launcher script executable:**
   ```bash
   chmod +x start.sh
   ```

3. **Run the project via terminal:**
   ```bash
   ./start.sh
   ```

### Desktop Shortcut Setup (Automated)

You can easily generate a desktop shortcut with a custom icon that adapts automatically to your system paths.

1. **Make the installer script executable:**
   ```bash
   chmod +x install.sh
   ```

2. **Run the installer:**
   ```bash
   ./install.sh
   ```

3. **Enable the shortcut on Ubuntu:**
   Go to your Desktop, **right-click** on the newly created `YoutubePlay` icon, and select **"Allow Launching"**. 
   
The generic launcher icon will instantly transform into your custom `icon.png`, and you can now launch the app with a simple double-click.

## How It Works (Under the Hood)

The Python automated launcher performs the following operations:
1. **Locates the directory** where the script itself is safely stored.
2. **Starts the built-in Python web server** on port `8000` running strictly in the background.
3. **Saves the server process ID (PID)** to ensure proper session management and tracking.
4. **Waits half a second** for the server environment to initialize completely.
5. **Opens the website** using Ubuntu's default web browser strictly inside a private window.
6. **Cleans up the environment** by automatically stopping the server process as soon as the terminal closes or a `Ctrl+C` interrupt is detected.

## Technologies Used

- **Frontend:** HTML5, CSS3, JavaScript
- **Backend/Automation:** Python 3 (http.server & subprocess orchestration)

## License

This project is open-source and available under the [MIT License](LICENSE).
