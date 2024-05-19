#!/bin/bash
steamcmd +login anonymous +force_install_dir /data +app_update 258550 +quit

# Install Oxide
if [ "$ENABLE_OXIDE" = "true" ]; then
    echo "Downloading and installing Oxide.."
    export OXIDE_URL="https://umod.org/games/rust/download/develop"
    curl -L $OXIDE_URL > oxide.zip
    unzip -o oxide.zip
    rm oxide.zip
    chmod 755 /steamcmd/rust/CSharpCompiler.x86_x64 > /dev/null 2>&1 &
fi

# Run server
./RustDedicated \
    +rcon.web 1 \
    +rcon.port $RCON_PORT \
    +rcon.password $RCON_PASSWORD \
    +app.port $APP_PORT \
    +server.port $SERVER_PORT \
    +server.hostname $SERVER_HOSTNAME \
    +server.seed $SERVER_SEED \
    +server.saveinterval $SERVER_SAVE_INTERVAL \
    +server.maxplayers $SERVER_MAX_PLAYERS \
    +server.worldsize $SERVER_WORLD_SIZE \
    +server.identity $SERVER_HOSTNAME \
    +decay.scale $DECAY_SCALE \
    +nav_disable \
    -logfile -
