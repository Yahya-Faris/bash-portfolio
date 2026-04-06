 #!/usr/bash/env bash

# Description: An advanced scanner using nested loops to iterate through 
# servers and ports. It features emergency abort mechanisms ('break 2') 
# upon detecting critical port failures.

for server in "Server_1" "Server_2" "Server_3"; do
    echo "Connecting to $server..."
    
    for port in 80 443 22; do
        if [ "$port" -eq 22 ] && [ "$server" == "Server_1" ]; then
            echo "CRITICAL ERROR on $server port $port! Aborting ALL operations."
            break 2
        fi
        
        echo "  Checking port $port... OK"
    done
done

echo "Script Terminated."
