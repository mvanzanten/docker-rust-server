#!/bin/bash
steamcmd +login anonymous +force_install_dir /data +app_update 258550 +quit

./RustDedicated \
    +rcon.web 0 \
    +server.port $SERVER_PORT \
    +server.hostname $SERVER_HOSTNAME \
    +server.seed $SERVER_SEED \
    +server.saveinterval $SERVER_SAVE_INTERVAL \
    +server.maxplayers $SERVER_MAX_PLAYERS \
    +server.worldsize $SERVER_WORLD_SIZE \
    +nav_disable \
    -logfile -
