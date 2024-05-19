# Simple Rust Server (Docker)
This is a very simple installation of rust server and oxide with some of my preferred oxide mods. No Rcon. 

Docker image can be found here [uacmarine556/rust](https://hub.docker.com/r/uacmarine556/rust).
## Environment variables
Set the following setting for your server (values are set in docker compose).

| Variable                 | Description                                   |
| ------------------------ | --------------------------------------------- |
| **SERVER_PORT**          | The port to host the server (28015)           |
| **SERVER_HOSTNAME**      | The name to set for the server (LemonAid)     |
| **SERVER_SEED**          | The seed to set the map design (32345)        |
| **SERVER_SAVE_INTERVAL** | Frequency in seconds to save game (300)       |
| **SERVER_MAX_PLAYERS**   | Max player count (75)                         |
| **SERVER_WORLD_SIZE**    | The world size (4092)                         |
| **DECAY_SCALE**          | The decay scale for buildings (0)             |
| **ENABLE_OXIDE**         | Whether or not to install oxide (true, false) |

## Usage
### Build
First thing is to build the container, it uses the `APP_NAME` from the top of the `Makefile`.

```make build``` 

### Run
Make sure you have a directory called `data` in the directory where you launch the run command. This is where the game will be installed and where we have the oxide mods.

```make run```

### Stop
Stop the container with the stop command, or from Docker Desktop.

```make stop```

## Oxide
The `/data/oxide` directory contains some of my preferred oxide mods such as better loot.
