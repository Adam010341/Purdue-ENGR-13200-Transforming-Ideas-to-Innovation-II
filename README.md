# Purdue ENGR 132 MATLAB Coursework (NCKU–Purdue, Summer 2025)

[繁體中文](README.zh-TW.md)

MATLAB programs I wrote in the NCKU–Purdue summer program in July 2025. The course's file templates are labelled "ENGR 132". The repository contains short assignments on scripting, plotting, selection, loops, user-defined functions and linear regression. It also contains a team final project: a text-based casino game that runs in the MATLAB Command Window.

## Highlights

- **Final project: text-based casino** ([`final-project/text-based-casino/`](final-project/text-based-casino/)). This was a team project. I wrote the slot machine, roulette and "Chinese Roulette" games, which animate ASCII art with `fprintf`, `clc` and `pause` and draw random outcomes with `randi`. The roulette board is stored as a 12×12 matrix. [Details below](#final-project-text-based-casino).
- **Linear regression on NOAA greenhouse-gas data** ([`A11Q3_airPolution.m`](assignments/A11-linear-regression/A11Q3_airPolution.m)). The program fits trend lines to NOAA GML global monthly means with `polyfit`, then computes SSE, SST and r² in loops. The fitted slopes are 1.8434 ppm/yr for CO₂ (1979–2023) and 5.5272 ppb/yr for CH₄ (1983–2023).
- **Work from measured force data** ([`A07Q4_conveyorPusher.m`](assignments/A07-loops/A07Q4_conveyorPusher.m)). A `for` loop integrates 31 force–displacement samples with the trapezoidal rule. The total work is 157.19 J.

![CO2 and CH4 measured data with fitted trend lines](docs/figures/A11Q3_co2_ch4_trend.png)

*A11 Q3 output from MATLAB R2025a (the figure saved with the original submission).*

![Force and cumulative work versus displacement](docs/figures/A07Q4_work_vs_displacement.png)

*A07 Q4 output from MATLAB (the figure saved with the original submission).*

## Contents

| Folder | File | What it does | Key MATLAB concepts |
|---|---|---|---|
| [`assignments/A04-scripts-and-plotting`](assignments/A04-scripts-and-plotting/) | `A04Q1_semimajoraxis.m` | Rewrites a provided script with variable names that match the formula and degree-based trig. Then it applies one Newton–Raphson update to estimate a spacecraft orbit's semi-major axis. Output: `7098.88314 km`. | script structure, `sind`/`cosd`, `format longg`, `fprintf` |
| | `A04Q2_plots.m` | Plots two cost/area data series as three figures: single, stacked and overlaid. | `figure`, `plot` line specs, `subplot`, `hold on`, axis labels |
| [`assignments/A05-selection-structures`](assignments/A05-selection-structures/) | `A05Q3_selection.m` | Applies a piecewise rule to a number the user enters. | `input`, `if`/`elseif`/`else`, relational and logical operators |
| [`assignments/A07-loops`](assignments/A07-loops/) | `A07Q1_while.m` | Halves A and triples B until both stop conditions hold, counting the iterations (7). | `while`, compound conditions, counters |
| | `A07Q3_for.m` | Accumulates a running sum over a vector's length (result `S = 442`). | `for`, `length` |
| | `A07Q4_conveyorPusher.m` | Reads force–displacement data from a CSV file and integrates it into cumulative work. Plots force and work against displacement. | `readmatrix`, `for`, trapezoidal rule, `subplot` |
| [`assignments/A08-user-defined-functions`](assignments/A08-user-defined-functions/) | `A08Q2_tankVol.m` | `drain_time` returns a cylindrical tank's volume, fluid volume and drain time for horizontal (0) or vertical (90) orientation, or `-99` for any other orientation. | user-defined function with 4 inputs and 3 outputs, `input`/`str2num`, selection |
| [`assignments/A11-linear-regression`](assignments/A11-linear-regression/) | `A11Q2_wirebonds.m` | Fits bond-failure percentage against chloride concentration (`y = 75.796645x - 1.173225`), prints goodness of fit and two predictions, and plots data and model. | `readmatrix` on a tab-delimited file, `polyfit`/`polyval`, loops |
| | `A11Q3_airPolution.m` | Fits CO₂ and CH₄ trend lines, prints SSE, SST and r², and plots both in one figure. | function file, `polyfit`/`polyval`, `subplot`, `legend` |
| [`in-class/enzyme-regression`](in-class/enzyme-regression/) | `EnzymeALR.m` | Fits a line to a 90-row window of an enzyme product-concentration time series. Prints SSE, SST, r² and r. | `readmatrix`, array slicing, `polyfit`, loops |
| [`quizzes/quiz1`](quizzes/quiz1/) | `NCKU_quiz1_Adam_Fan.m` | Element-wise array arithmetic, indexing, sorting and row means. | `.*`, `.^`, `./`, `sort`, `mean` with transpose |
| [`quizzes/quiz2`](quizzes/quiz2/) | `NCKU_quiz2_Fan.m` | Marker plot with a legend, a selection structure, and logical search over two matrices. | `plot` markers, `legend`, `if`/`elseif`, `find` with logical operators |
| [`quizzes/quiz3`](quizzes/quiz3/) | `NCKU_quiz3_Fan.m` | Sums a vector with a `for` loop (`sum_x = 189`). | `for` |
| [`final-project/text-based-casino`](final-project/text-based-casino/) | 25 files | Team casino game (see below). | functions calling functions, `while` menus, `switch`, `randi`, ASCII animation, CSV persistence with `readtable`/`writetable` |

Only assignments that contain my own code are included, so the numbering has gaps.

## Final project: text-based casino

The project brief was addressed to "MATgames Studios", which wanted MATLAB games that help new programmers learn while having fun. The games had to be text-based. Team 3 built a casino with four games and a persistent leaderboard.

```matlab
cd final-project/text-based-casino
main_function        % prompts for a player name, then shows the menu
```

The menu options are: `s` shows chips, `g1` opens Slot Machine, `g2` Roulette, `g3` Shoot Dragon Gate and `g4` Chinese Roulette, `r` shows the ranking, and `q` quits. New players start with 1000 chips. When a player quits, `main_function` saves `Name`, `Chips` and `Status` to `player_records.csv`, sorts the file by chips and prints the player's rank. A name that went bankrupt cannot be reused.

| Game | Files | Author (per file header) | Rules as coded |
|---|---|---|---|
| Menu, records, ranking | `main_function.m` | Andy Gao | see above |
| Slot machine | `slot_machine_main.m`, `number_rand_main.m`, `number_rand.m`, `number_one.m` … `number_nine.m` | Adam Fan | Stake of at least 100. Each reel is drawn close to the previous reel's value. 7-7-7 pays 10×, three of a kind 8×, three consecutive digits 5×. Any other result returns 30% of the stake. Digits are drawn as large ASCII numerals. |
| Roulette | `roulette_main.m`, `roulette.m`, `test_board.m` | Adam Fan | Pick a number on the board (1–36). The ball (`O`) circles the board three times and slows down before it stops. A hit pays 35×; otherwise 30% of the stake is returned. |
| Shoot Dragon Gate | `shoot_d_g.m` | not recorded in the file | Five rounds. Two cards are shown, and the player bets that the third card falls between them. |
| Chinese Roulette | `chinese_roulette_main.m`, `china_roulette.m`, `number_up.m`, `test_tankman_*.m` | Adam Fan (lists Edward Li as a collaborator) | All-in guess of a number from 1 to 6, with an ASCII animation. A correct guess multiplies the chips; a wrong guess sets them to 0. |

Here is the last roulette frame from a verification run in Octave (player picked 5, stake 200):

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

The team's technical brief (not included here) describes pre-play and post-play interviews with classmates. The brief lists three changes made from that feedback:

- the entrance cost was raised because winning was too easy;
- the screen now refreshes after each command, with a short delay so players can read it;
- player records are saved so returning players keep their chips, which made the scoreboard possible.

## How to run

Open the folder of the file in MATLAB and run the script or function by name. Every data file sits next to the script that reads it. The original work was done in MATLAB R2025a, according to the publish output of the original submission.

The following files also run unmodified in GNU Octave 10:

- `A04Q1`, `A04Q2`, `A05Q3`, `A07Q1`, `A07Q3`
- all three quizzes
- the four casino games when called directly, e.g. `slot_machine_main(1000)`, `roulette_main(1000)`, `shoot_d_g(1000)`, `chinese_roulette_main(1000)`

The rest need MATLAB:

- Files that call `readmatrix` (A07 Q4, A11 Q2/Q3, the enzyme in-class file) fail because Octave 10 does not provide `readmatrix`.
- `main_function.m` uses `table`, `readtable` and `writetable`, which Octave does not implement.
- `A08Q2_tankVol.m` defines its function before the script code. Octave treats such a file as a function file.

## Verification

The programs were re-run in Octave 10.3.0 with scripted keyboard input:

- **Outputs quoted above.** A04 Q1, A07 Q1/Q3 and quiz 3 printed the values listed in the table.
- **Casino games.** The four games were run with fixed random seeds. For speed, most runs replaced `pause` with a no-op; one slot-machine run used the real `pause` and gave the same result. The chip totals matched the payout rules: a 3-3-3 slot result turned 1000 chips into 2400 at stake 200, and a roulette hit turned 1000 into 7800.
- **Files that need `readmatrix`.** These were run with a small stand-in `readmatrix` that is not part of this repository. A11 Q2 and A11 Q3 reproduced, digit for digit, the output printed in the original MATLAB publish report.
- **A08 Q2.** This file was run from a copy with `1;` added at the top, which makes Octave treat it as a script. For a tank of length 10 and diameter 4 with fluid height 2 and a 0.5 drain, horizontal orientation gives max volume 125.663706, fluid volume 62.831853 and drain time 99.124399.
- **Not executed.** `main_function.m` was not run, because Octave has no `table`.

## Authorship and sources

- All code is mine unless noted. The exceptions are `main_function.m` (teammate Andy Gao, per its header) and `shoot_d_g.m` (no author recorded).
- The comment headers, `%% SECTION` scaffolding and academic-integrity statements come from the course templates. The starter templates themselves are not included.
- The data files are assignment inputs, not my work. `co2_mm_gl.csv` and `ch4_mm_gl.csv` are NOAA GML global monthly means; their headers carry NOAA's usage notes.
- Not included:
  - the course's P-code (`.p`) files and generated instruction images;
  - auto-generated exercises whose starter code embeds a university ID;
  - the A09 team task, which depends on teammates' files;
  - MATLAB publish output;
  - scratch sketches;
  - the team's technical brief.
