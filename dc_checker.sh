 #!/usr/bash/env bash

# Description: A script to iterate through data center servers, utilizing 
# 'continue' to skip servers under maintenance and 'break' for critical 
# system-wide errors.

dc="DC_1"

echo "------------------------"
echo " Entering Data Center: $dc"

for server in "Server_A" "Server_B" "Server_C"; do
    if [ "$server" == "Server_B" ]; then
        echo " $server is under maintenance... Skipping."
        continue
    fi
    
    if [ "$server" == "Server_C" ] && [ "$dc" == "DC_1" ]; then
        echo " CRITICAL ERROR found in $server! Shutting down EVERYTHING."
        break 2
    fi
    
    echo " Checking $server... OK."
done

echo "Finished scanning $dc"

