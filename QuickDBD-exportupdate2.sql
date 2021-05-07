﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Police_Killings" (
    "Victim_name" varchar   NOT NULL,
    "Victim_age" int   NOT NULL,
    "Victim_gender" varchar   NOT NULL,
    "Victim_race" varchar   NOT NULL,
    "Date_of_Incident" DATE   NOT NULL,
    "Street_Address" varchar   NOT NULL,
    "City" varchar   NOT NULL,
    "State" varchar   NOT NULL,
    "Zipcode" int   NOT NULL,
    "County" varchar   NOT NULL,
    "Agency_responsible_for_death" varchar   NOT NULL,
    "Cause_of_death" varchar   NOT NULL,
    "Official_disposition" varchar   NOT NULL,
    "Criminal_Charges" varchar   NOT NULL,
    "Symptoms" varchar   NOT NULL,
    "Armed_Status" varchar   NOT NULL,
    "Alleged_Weapon" varchar   NOT NULL,
    "Alleged" varchar   NOT NULL,
    "Fleeing" varchar   NOT NULL,
    "Body_Camera" varchar   NOT NULL,
    "Off-Duty_Killing" varchar   NOT NULL,
    "Geography" varchar   NOT NULL,
    "Initial_Reported_Encounter" varchar   NOT NULL,
    "Names_of_Officers_Involved" varchar   NOT NULL,
    "Call_for_Service" varchar   NOT NULL,
    CONSTRAINT "pk_Police_Killings" PRIMARY KEY (
        "City","State"
     )
);

CREATE TABLE "Killing_By_PD" (
    "City" varchar   NOT NULL,
    "Police_Department" varchar   NOT NULL,
    "Black_People_Killed_by_P" int   NOT NULL,
    "Hispanic_People_Killed_by_P" int   NOT NULL,
    "Native_American_People_Killed_by_P" int   NOT NULL,
    "Asian_People_Killed_by_Police" int   NOT NULL,
    "Pacific_Islanders_Killed_by_P" int   NOT NULL,
    "White_People_Killed_by_P" int   NOT NULL,
    "Unknown_Race_People_Killed_by_P" int   NOT NULL,
    "All_People_Killed_by_Police" int   NOT NULL,
    "Allegedly_Armed_People_Killed_by_P" int   NOT NULL,
    "Unarmed_People_Killed_by_P" int   NOT NULL,
    "Unclear_Armed_Status_People_Killed_by_P" int   NOT NULL,
    "People_Armed_with_Vehicle_Killed_by_P" int   NOT NULL,
    "Total_Population" int   NOT NULL,
    "Black" int   NOT NULL,
    "White" int   NOT NULL,
    "Amer_Indian" int   NOT NULL,
    "Asian" int   NOT NULL,
    "Hawaiian" int   NOT NULL,
    "Asian_Pacific_Islander" int   NOT NULL,
    "other_race" int   NOT NULL,
    "two_or_more_races" int   NOT NULL,
    "Hispanic" int   NOT NULL,
    "Black_White_Dissimilarity_Index" float   NOT NULL,
    "Avg_Ann_P_Homicide_Rate" float   NOT NULL,
    "Avg_Ann_P_Homicide_Rate_Black" float   NOT NULL,
    "Avg_Ann_P_Homicide_Rate_White" float   NOT NULL,
    "Avg_Ann_P_Homicide_Rate_Hispanic" float   NOT NULL,
    "Black_White_Disparity" float   NOT NULL,
    "Hispanic_White_Disparity" float   NOT NULL,
    "Violent_crimes_2013" int   NOT NULL,
    "Violent_crimes_2014" int   NOT NULL,
    "Violent_crimes_2015" int   NOT NULL,
    "Violent_crimes_2016" int   NOT NULL,
    "Violent_crimes_2017" int   NOT NULL,
    "Violent_crimes_2018" int   NOT NULL,
    "Violent_crimes_2019" int   NOT NULL,
    "Avg_Violent_Crimes_2013_19" float   NOT NULL,
    "Violent_Crime_Rate" float   NOT NULL,
    "2013_Total_Arrests" int   NOT NULL,
    "2014_Total_Arrests" int   NOT NULL,
    "2015_Total_Arrests" int   NOT NULL,
    "2016_Total_Arrests" int   NOT NULL,
    "2017_Total_Arrests" int   NOT NULL,
    "2018_Total_Arrests" int   NOT NULL,
    "2019_Total_Arrests" int   NOT NULL,
    "Estimated_Avg_Arrests_per_Year" int   NOT NULL,
    "Killings_by_Police_per_10k_Arrests" float   NOT NULL
);

CREATE TABLE "Killings_by_state" (
    "State" varchar   NOT NULL,
    "State_Abbreviation" varchar   NOT NULL,
    "Black_Pop" int   NOT NULL,
    "Hispanic_Pop" int   NOT NULL,
    "Native_Pop" int   NOT NULL,
    "Asian_Pop" int   NOT NULL,
    "Pacific_Islander_Pop" int   NOT NULL,
    "White_Pop" int   NOT NULL,
    "Other_Pop" int   NOT NULL,
    "Percent_African_American" float   NOT NULL,
    "Percent_Victims_Black" float   NOT NULL,
    "Disparity" int   NOT NULL,
    "Num_Black_people_killed" int   NOT NULL,
    "Num_Hispanic_people_killed" int   NOT NULL,
    "Num_Native_people_killed" int   NOT NULL,
    "Num_Asian_people_killed" int   NOT NULL,
    "Num_Pacific_Islanders_killed" int   NOT NULL,
    "Num_Unknown_race_people_killed" int   NOT NULL,
    "People_killed" int   NOT NULL,
    "Black_rate" float   NOT NULL,
    "Native_rate" float   NOT NULL,
    "Hispanic_rate" float   NOT NULL,
    "Asian_rate" float   NOT NULL,
    "Pacific_Islanders_rate" float   NOT NULL,
    "White_rate" float   NOT NULL,
    "All_rate" float   NOT NULL,
    "Disparity_in_Rate" float   NOT NULL,
    "Black_White_Disparity" float   NOT NULL,
    "Hispanic_White_Disparity" float   NOT NULL,
    "Native_American_White_Disparity" float   NOT NULL,
    "Armed_People_Killed_by_P" int   NOT NULL,
    "Unarmed_People_Killed_by_P" int   NOT NULL,
    "Unclear_Armed_Status" int   NOT NULL,
    "People_Armed_with_Vehicle" int   NOT NULL
);

CREATE TABLE "Police_killings_of_Black_Men" (
    "City" varchar   NOT NULL,
    "PD" varchar   NOT NULL,
    "Black_Men_Killed" int   NOT NULL,
    "Black_Male_Population" int   NOT NULL,
    "Avg_P_Homicide_Rate_Black" float   NOT NULL
);

ALTER TABLE "Police_Killings" ADD CONSTRAINT "fk_Police_Killings_City" FOREIGN KEY("City")
REFERENCES "Police_killings_of_Black_Men" ("City");

ALTER TABLE "Police_Killings" ADD CONSTRAINT "fk_Police_Killings_State" FOREIGN KEY("State")
REFERENCES "Killings_by_state" ("State");

