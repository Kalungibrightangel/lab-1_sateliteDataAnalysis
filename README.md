# Guidelines, Respository structure, and Process

## Before You Start

Follow these steps to prepare for your work:

1. **Fork the Repository**  
   Click on the **Fork** button at the top of the repository page. This creates a copy of the repository for your group.

2. **Add Collaborators**  
   Once the repository is forked:
   - Go to **Settings** > **Collaborators and teams** > **Add people**.
   - Invite all group members as collaborators.

---

## Working on the Project

After forking and setting up collaborators, follow these steps:

1. **Clone the Repository**  
   Clone your forked repository to your local machine:
   ```bash
   git clone https://github.com/your-username/project-name.git
   ```
---

#  Satellite Data Analysis using Linux

##  Project Overview
The team **Hackers404** partnered with an AI-based firm in Mauritius to analyze satellite data for predicting weather patterns across Africa. This project focuses on using Linux command-line tools to clean, organize, and extract meaningful insights from large datasets.

The goal is to apply practical Linux skills to manipulate real-world data and generate useful outputs for agricultural optimization.

# Repository Structure

The following are the tasks that were performed.

##  Task 1: Repository Cleanup

The following steps were performed:

- Renamed directory:
rename_directory → analyzed_data

- Removed unnecessary files:
dummy
raw_data/dummy-2
analyzed_directory/dummy-3.txt

- Moved dataset into raw data folder:
satelite_temperature_data.csv → raw_data/

#### Command used:
```bash
mv satelite_temperature_data.csv raw_data
```
---

##  Task 2: Data Analysis Using Linux Commands

###  1. Top 10 Highest Temperatures

Extracted the top 10 highest temperatures from the dataset and saved them into:

analyzed_data/highest_temp.csv


#### Command used:
```bash
sort -t',' -k3 -nr raw_data/satelite_temperature_data.csv | cut -d, -f3 | head -n 10 >> analyzed_data/highest_temp.csv
```

### 2. Humidity Analysis by Country

Extracted data for a selected country (Chad) and sorted it by humidity (highest to lowest).

**Output file:**

analyzed_data/humidity_data_Chad.csv

#### Command used:
```bash
grep "Chad" raw_data/satelite_temperature_data.csv | sort -t',' -k4 -nr >> analyzed_data/humidity_data_Chad.csv
```

##  BONUS Task
In this task we wrote a bash script **extracted_insight** found in the root directory, to automate both task 1 and task 2.
```bash

#!/bin/bash

#extract top 10 highest temperature
sort -k3 -t',' -nr raw_data/satelite_temperature_data.csv | cut -d, -f3 | head >> analyzed_data/highest_temp.csv

#extract humidity data for Chad
grep 'Chad' raw_data/satelite_temperature_data.csv | sort -nr -t',' -k4  >> analyzed_data/humidity_data_Chad.csv  
```

How to run the script
First, you make it executable,


#### Command used:
```bash
chmod +x extracted_insight.sh
```

Then you run the script.
#### Command used:
```bash
./extracted_insight.sh
```
OR
```bash
bash extracted_insight.sh
```

**Authors**
- Sampson Foli
- Kalungi Bright Angel
- Bibi Shania Tinkouree
- Mmadu Chioma
- Nelson Fodjo

