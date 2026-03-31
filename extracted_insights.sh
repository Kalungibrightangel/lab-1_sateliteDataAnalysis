#!/bin/bash

#extract top 10 highest temperature
sort -k3 -t',' -nr raw_data/satelite_temperature_data.csv | cut -d, -f3 | head >> analyzed_data/highest_temp.csv

#extract humidity data for Chad
grep 'Chad' raw_data/satelite_temperature_data.csv | sort -nr -t',' -k4  >> analyzed_data/humidity_data_Chad.csv 
