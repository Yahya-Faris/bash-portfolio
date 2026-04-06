 #!/usr/bash/env bash

# Description: A Bash script utilizing 'case' statements to efficiently 
# manage service states (start/stop) with user input validation.

read -p "Enter action (start/stop): " action

case $action in
    "start" | "up")
        echo "✅ Starting Service..."
        ;;
    "stop" | "down")
        echo "🛑 Stopping Service..."
        ;;
    *)
        echo "❌ Error: Invalid input."
        ;;
esac
