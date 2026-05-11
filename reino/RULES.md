# Reino — Game Rules

## Overview
- **Deck**: Full Spanish deck (40 cards: 4 suits of 1–7, 10–12).
- **Players**: 2–4 (more possible by adding another deck or at least one suit).
- **Goal**: Collect the 3 kings (10, 11, 12) of the same suit, or reach a target score agreed upon before the game starts.

## Setup
1. Each player is dealt **3 cards** face down (their **hand**).
2. The remaining deck is placed face down in the center (the **draw pile**).
3. Each player has a personal **stack** (face-down pile next to them).
4. Each player has an **activation pile** (face-up pile next to their stack).

## Turn Structure

### First Turn
Every player draws **1 card** from the draw pile and places it face down on their **stack**.

### Subsequent Turns
Each turn consists of up to **2 actions**, chosen from:
- **Swap** — exchange a card between the hand and the stack.
- **Activate** — activate a card's ability (place it face up on the activation pile).

Valid action combinations per turn:
- 2 swaps
- 2 activations
- 1 swap + 1 activation

After actions are done, **draw 1 card** from the draw pile to end the turn.

### Special End-of-Turn Rule
If the player performed **fewer than 2 actions** during their turn, the card drawn can be immediately swapped with a card from the hand.

**Important**: Drawing ends the turn — no actions after drawing.

## Winning
When a player has the 3 kings (10, 11, 12) of the same suit in hand, they must **immediately** lay them down and declare **"Reino"** to end the round.

## Scoring

| Card Type | In Hand | In Stack | Activated |
|-----------|---------|----------|-----------|
| Kings (10, 11, 12) | +10 | −10 | — |
| Special cards (1–9) | −5 | +2 | +5 |
| Normal cards | −5 | +1 | — |
| Jokers | −10 | *value of the stack* | — |

- **Reino activation bonus**: +20

**Note**: Jokers in the stack score the same value as whatever card they are replacing from the stack.

## Prisoners (Duplicate Kings)
If a player draws a king of the same rank as one they already hold (e.g., already have 10 of bastos, draw 10 of oros), the duplicate king must be placed face up in a **prisoner pile**. The draw and swap rules for kings follow the same rules as normal cards. Prisoners can be targeted by abilities (e.g., 2 protects them, 3 swaps them, 7 steals them).

## Card Abilities

### Activating Abilities
- Cards can be activated from the **hand** or the **stack**.
- If activated from hand, the player must **draw 1 card from their stack** to maintain 3 cards in hand.
- Exception: if the activated card retrieves another card directly, that card goes to the hand and no stack draw is needed.

### Card List

**1 (Re-activator)**
Re-activates an already-activated card (moves it back to the activation pile, enabling its ability again).

**2 (Shield)**
Played face up showing the number to all players. Protects a card (or a prisoner) from being stolen or swapped. Only blocks **one interaction**, then is discarded.

**3 (Swapper)**
Swap a card from your hand or stack with a card from another player's hand or stack (respectively).

**7 (Thief)**
Steal a card from another player (hand or stack, player's choice).

**9 (Pile Thief)**
Steal a card from the draw pile. This does **not** cancel the normal end-of-turn draw.

### 8 (The Curse)
The 8 is a special case. When drawn or received:
- It becomes a **4th card** in the hand.
- The player **cannot declare Reino** while holding it.
- It deducts **−5 points** at scoring.
- It **cannot be swapped** with a card from the stack or the draw pile.

**Getting rid of the 8:**
- **1 (Re-activator)**: Can re-activate the 8 to move it to another player's hand as a 4th card. Only works **once** per 8.
- **3 (Swapper)**: Can swap the 8 for a card from another player's stack, sending the 8 to that player's activation pile.
- **7 (Thief)**: Can "steal itself" — the player discards the 8 to their own activation pile.

**Playing with 4 cards**: If a player holding the 8 activates a different card, they must draw 1 from their stack to keep playing with 4 cards (same rule as playing with 3).
