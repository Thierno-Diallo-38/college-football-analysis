# # College Football Analysis

## Project Overview
This project analyzes college football viewership data from the 2022, 2023, and 2024 seasons, focusing on the impact of broadcasting changes in the sport. Specifically:
- Evaluates the effects of CBS’s decision to transition from broadcasting SEC games to Big Ten games.
- Examines how ABC’s acquisition of SEC broadcasting rights affected network viewership.
- Highlights trends in conference visibility, network performance, and time-slot dynamics.

The analysis leverages SQL, Python, and visual storytelling to provide insights into the college football media landscape.

---

## Objectives
- **Assess** the impact of CBS losing SEC broadcasting rights on its viewership performance.
- **Compare** network performance (CBS vs. ABC) with new conference broadcasting arrangements.
- **Analyze** viewership trends for major conferences (SEC, Big Ten, etc.) over three seasons.
- **Visualize** key insights using Python and PowerPoint.

---

## Steps Taken
1. **Data Cleaning (SQL):**
   - Updated team conference alignments for 2022, 2023, and 2024.
   - Split combined conference columns into `Team1_Conference` and `Team2_Conference` for detailed matchup analysis.
   - Addressed null values and standardized viewership and network data.

2. **Data Analysis (SQL & Python):**
   - SQL queries generated insights on:
     - Average viewership by network and conference.
     - Top-viewed games by season.
     - Yearly and conference-based viewership trends.
   - Python was used to create visualizations for key metrics.

3. **Visual Storytelling (PowerPoint):**
   - Developed a presentation summarizing:
     - The CBS-SEC split and its implications.
     - Network performance shifts after broadcasting changes.
     - Conference-level viewership trends and projections.

---

## Files in this Repository
- **`sql_scripts/`**:
  - `data_cleaning.sql`: Script for cleaning and preparing the dataset.
  - `analysis_queries.sql`: Script for generating insights and metrics.
- **`notebooks/`**:
  - `CFBAnalysis.ipynb`: Python notebook for visualizations and additional analysis.
- **`data/`**:
  - `games.csv`: Cleaned dataset of college football games from 2022 to 2024.
- **`presentation/`**:
  - `CBS_and_SEC_split.pptx`: PowerPoint summarizing the analysis and key takeaways.

---

## Dataset
- **File**: `data/games.csv`
- **Description**: Contains game details, including:
  - **Date**: Game date.
  - **Teams**: Competing teams.
  - **Conferences**: Team affiliations (e.g., SEC, Big Ten).
  - **Viewership**: Total viewers per game.
  - **Network**: Broadcasting network (e.g., CBS, ABC, FOX).
- The dataset was cleaned to ensure consistency and accuracy.

---

## Key Insights
1. **Viewership Trends:**
   - SEC games on CBS averaged **6.06M viewers/game** (2022–2023), while Big Ten games on CBS in 2024 averaged **3.54M viewers/game.**
   - ABC’s SEC broadcasts averaged **6.03M viewers/game in 2024**, showing the conference’s consistent popularity.

2. **Network Performance:**
   - **CBS:** Struggled post-SEC, with total viewership dropping from **6.06M** to **3.54M/game.**
   - **ABC:** Leveraged SEC games to grow total viewership by **38%,** achieving **7.21M viewers** in prime-time slots.

3. **Conference Dynamics:**
   - **SEC** consistently led in average viewership (5.26M/game) across all seasons.
   - **Big Ten** followed with steady growth, peaking at **4.57M viewers/game** in 2023.

4. **Time Slot Impact:**
   - ABC’s 7:30 PM prime-time slot averaged **7.21M viewers in 2024**, surpassing CBS’s historical dominance at 3:30 PM.

---

## Visualizations
### **1. Yearly Viewership Trends**
![Yearly Viewership Trends](images/yearly_trends.png)

### **2. Conference Matchups**
![Conference Matchups](images/conference_matchups.png)

### **3. Network Performance**
![Network Performance](images/network_performance.png)

---

## Tools Used
- **SQL**: Data cleaning and querying for key insights.
- **Python**: Analysis and visualization with Pandas, Matplotlib, and Seaborn.
- **PowerPoint**: Presentation of findings and storytelling.

---

## How to Reproduce
1. **SQL Analysis**:
   - Run `data_cleaning.sql` to prepare the dataset.
   - Use `analysis_queries.sql` to generate metrics.

2. **Python Notebook**:
   - Open `CFBAnalysis.ipynb` to explore visualizations.

3. **PowerPoint**:
   - Review `CBS_and_SEC_split.pptx` for a summary of key findings.

---

