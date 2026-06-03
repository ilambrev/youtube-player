#!/bin/bash

# Finds the directory where the script itself is located
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

# Starts the built-in Ubuntu Python web server on port 8000 in the background
python3 -m http.server 8000 > /dev/null 2>&1 &

# Saves the server process ID (PID) so we can stop it later
SERVER_PID=$!

# Waits half a second for the server to start up
sleep 0.5

# Opens the website in Ubuntu's default browser (Firefox/Chrome)
# xdg-open "http://localhost:8000"
firefox --private-window "http://localhost:8000"

# When the user closes the terminal or presses Ctrl+C, the server stops automatically
trap "kill $SERVER_PID" EXIT
wait

