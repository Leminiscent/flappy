# Flappy Bird

A simple rendition of the popular game Flappy Bird, written in Lua using the LÖVE2D game engine. The game features multiple states including a title screen, countdown, gameplay, and score display.

## File Descriptions

- **main.lua**: The entry point of the game, setting up the game window and managing the game loop.
- **BaseState.lua**: Base class for game states, providing default methods that can be overridden by derived states.
- **StateMachine.lua**: Handles the switching and updating of states based on game events.
- **Bird.lua**: The main player character, the bird, including its physics and rendering logic.
- **Pipe.lua**: Definition of the pipe obstacles that the bird must navigate.
- **PipePair.lua**: Handles the logic of spawning pairs of pipes and moving them across the screen.
- **CountdownState.lua**: A brief countdown before the game transitions into the play state, allowing the player to prepare.
- **PlayState.lua**: The main game state where the player controls the bird, avoiding pipes and scoring points.
- **ScoreState.lua**: Displays the player's score after the game ends and waits for player input to restart or exit.
- **TitleScreenState.lua**: Shows the title screen and handles the transition to the countdown state when starting the game.

## How to Run

Ensure you have LÖVE2D installed on your system. You can start the game by running the following command in your terminal while in the top-level directory of the game:

```bash
love .
```

## Controls

- **Jump**: `space bar` | `left mouse button`
- **Pause / Resume**: `p`
