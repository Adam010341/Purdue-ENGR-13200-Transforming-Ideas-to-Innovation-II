# Purdue ENGR 132 (Transforming Ideas to Innovation II) — MATLAB Coursework, NCKU–Purdue Summer 2025

![MATLAB](https://img.shields.io/badge/language-MATLAB%20R2025a-0076A8)
![Octave](https://img.shields.io/badge/checked%20with-GNU%20Octave%2010-0790C0?logo=octave&logoColor=white)
![Course](https://img.shields.io/badge/course-Purdue%20ENGR%20132%20%C2%B7%20NCKU%E2%80%93Purdue-CEB888)
![Term](https://img.shields.io/badge/term-Summer%202025-555)

[繁體中文](README.zh-TW.md)

MATLAB assignments from the NCKU–Purdue summer program (July 2025): scripting, plotting, selection, loops, user-defined functions and linear regression, plus a team final project, a text-based casino game.

## Highlights

- **Text-based casino** ([`final-project/text-based-casino/`](final-project/text-based-casino/)). Team project. I wrote the slot machine, roulette and Chinese Roulette games: ASCII animation with `fprintf`, `clc` and `pause`, random outcomes with `randi`, and the roulette board as a 12×12 matrix. [Details below](#final-project-text-based-casino).
- **Linear regression on NOAA greenhouse-gas data** ([`A11Q3_airPolution.m`](assignments/A11-linear-regression/A11Q3_airPolution.m)). `polyfit` trend lines on NOAA GML global monthly means, with SSE, SST and r² computed in loops. Slopes: 1.8434 ppm/yr for CO₂ (1979–2023), 5.5272 ppb/yr for CH₄ (1983–2023).
- **Work from measured force data** ([`A07Q4_conveyorPusher.m`](assignments/A07-loops/A07Q4_conveyorPusher.m)). A `for` loop integrates 31 force–displacement samples with the trapezoidal rule. Total work: 157.19 J.

![CO2 and CH4 measured data with fitted trend lines](docs/figures/A11Q3_co2_ch4_trend.png)

*A11 Q3 output, saved with the original submission (MATLAB R2025a).*

![Force and cumulative work versus displacement](docs/figures/A07Q4_work_vs_displacement.png)

*A07 Q4 output, saved with the original submission.*

## Contents

| Folder | File | What it does |
|---|---|---|
| [`assignments/A04-scripts-and-plotting`](assignments/A04-scripts-and-plotting/) | `A04Q1_semimajoraxis.m` | One Newton–Raphson update to estimate a spacecraft orbit's semi-major axis. Output: `7098.88314 km`. |
| | `A04Q2_plots.m` | Two cost/area series as three figures: single, stacked, overlaid. |
| [`assignments/A05-selection-structures`](assignments/A05-selection-structures/) | `A05Q3_selection.m` | Piecewise rule applied to a user-entered number. |
| [`assignments/A07-loops`](assignments/A07-loops/) | `A07Q1_while.m` | Halves A and triples B until both stop conditions hold; 7 iterations. |
| | `A07Q3_for.m` | Running sum over a vector (`S = 442`). |
| | `A07Q4_conveyorPusher.m` | Reads force–displacement data from CSV, integrates to cumulative work, plots both. |
| [`assignments/A08-user-defined-functions`](assignments/A08-user-defined-functions/) | `A08Q2_tankVol.m` | `drain_time` returns a cylindrical tank's volume, fluid volume and drain time for horizontal (0) or vertical (90) orientation, or `-99` otherwise. |
| [`assignments/A11-linear-regression`](assignments/A11-linear-regression/) | `A11Q2_wirebonds.m` | Fits bond-failure percentage against chloride concentration (`y = 75.796645x - 1.173225`), prints goodness of fit and two predictions. |
| | `A11Q3_airPolution.m` | CO₂ and CH₄ trend lines with SSE, SST and r², plotted in one figure. |
| [`in-class/enzyme-regression`](in-class/enzyme-regression/) | `EnzymeALR.m` | Linear fit to a 90-row window of an enzyme concentration series. |
| [`quizzes/quiz1`](quizzes/quiz1/) | `NCKU_quiz1_Adam_Fan.m` | Element-wise array arithmetic, indexing, sorting, row means. |
| [`quizzes/quiz2`](quizzes/quiz2/) | `NCKU_quiz2_Fan.m` | Marker plot with legend, selection structure, logical search with `find`. |
| [`quizzes/quiz3`](quizzes/quiz3/) | `NCKU_quiz3_Fan.m` | `for` loop sum (`sum_x = 189`). |
| [`final-project/text-based-casino`](final-project/text-based-casino/) | 25 files | Team casino game (see below). |

## Final project: text-based casino

The brief came from "MATgames Studios", which wanted text-based MATLAB games that help new programmers learn. Team 3 built a casino with four games and a persistent leaderboard.

```matlab
cd final-project/text-based-casino
main_function        % prompts for a player name, then shows the menu
```

Menu: `s` shows chips, `g1` Slot Machine, `g2` Roulette, `g3` Shoot Dragon Gate, `g4` Chinese Roulette, `r` ranking, `q` quit. New players start with 1000 chips. On quit, `main_function` saves `Name`, `Chips` and `Status` to `player_records.csv`, sorts by chips and prints the player's rank. A bankrupt name cannot be reused.

| Game | Files | Author (per file header) | Rules as coded |
|---|---|---|---|
| Menu, records, ranking | `main_function.m` | Andy Gao | see above |
| Slot machine | `slot_machine_main.m`, `number_rand_main.m`, `number_rand.m`, `number_one.m` … `number_nine.m` | Adam Fan | Stake of at least 100. Each reel is drawn close to the previous one. 7-7-7 pays 10×, three of a kind 8×, three consecutive digits 5×; anything else returns 30% of the stake. |
| Roulette | `roulette_main.m`, `roulette.m`, `test_board.m` | Adam Fan | Pick a number from 1 to 36. The ball (`O`) circles the board three times and slows to a stop. A hit pays 35×; otherwise 30% of the stake is returned. |
| Shoot Dragon Gate | `shoot_d_g.m` | not recorded | Five rounds. Two cards are shown; bet that the third falls between them. |
| Chinese Roulette | `chinese_roulette_main.m`, `china_roulette.m`, `number_up.m`, `test_tankman_*.m` | Adam Fan (lists Edward Li as a collaborator) | All-in guess of 1 to 6. A correct guess multiplies the chips; a wrong one sets them to 0. |

Last roulette frame from an Octave run (player picked 5, stake 200):

```text
                O
    1  2  3  4  5  6  7  8  9 10
   36                         11
   35                         12
   34                         13
   33                         14
   32                         15
   31                         16
   30                         17
   29                         18
   28 27 26 25 24 23 22 21 20 19

Jackpot! 3500% reward:7000
```

Changes made after classmate interviews:

- raised the entrance cost, because winning was too easy;
- refresh the screen after each command, with a short delay;
- save player records so returning players keep their chips, which enabled the scoreboard.

## How to run

Open the file's folder in MATLAB and run the script or function by name. Data files sit next to the script that reads them. The original work used MATLAB R2025a.

These run unmodified in GNU Octave 10:

- `A04Q1`, `A04Q2`, `A05Q3`, `A07Q1`, `A07Q3`
- all three quizzes
- the four casino games called directly, e.g. `slot_machine_main(1000)`

The rest need MATLAB:

- A07 Q4, A11 Q2/Q3 and the enzyme file call `readmatrix`, which Octave 10 lacks.
- `main_function.m` uses `table`, `readtable` and `writetable`, which Octave does not implement.
- `A08Q2_tankVol.m` defines its function before the script code, so Octave treats it as a function file.

## Verification

Re-run in Octave 10.3.0 with scripted input:

- A04 Q1, A07 Q1/Q3 and quiz 3 print the values in the table.
- The four casino games ran with fixed seeds. A 3-3-3 slot result turned 1000 chips into 2400 at stake 200, and a roulette hit turned 1000 into 7800.
- A11 Q2 and A11 Q3 were run with a stand-in `readmatrix` (not in this repo) and matched the original MATLAB publish report digit for digit.
- `main_function.m` was not run, since Octave has no `table`.

## Authorship and sources

- All code is mine except `main_function.m` (Andy Gao, per its header) and `shoot_d_g.m` (no author recorded).
- Comment headers, `%% SECTION` scaffolding and academic-integrity statements come from the course templates.
- `co2_mm_gl.csv` and `ch4_mm_gl.csv` are NOAA GML global monthly means, provided as assignment inputs.
