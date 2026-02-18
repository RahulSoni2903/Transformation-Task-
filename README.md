# 📊 Transformation Task – SSIS ETL Pipeline

This project builds a complete ETL pipeline using SSIS to process client-provided CSV files.
The data is extracted, cleaned, validated, and transformed using SSIS transformation tasks.
Finally, the transformed and quality-checked data is loaded into SQL Server.

---

## 📁 Source Data Overview

Here, we have a total of **3 business dates**, and for each date there are **2 regional source files**.

**Regions:**

* East
* West

**Dates available in the data:**

* 10/02/2026
* 11/02/2026
* 12/02/2026

So, for each date, two CSV files are received (East and West).

---

## 📅 Date: 2026-02-10

### East Source

<img width="484" height="128" alt="10-02-2026(East)" src="https://github.com/user-attachments/assets/43f15bad-261f-45be-9365-fd47fbbdf5b4" />

### West Source

<img width="490" height="122" alt="10-02-2026(West)" src="https://github.com/user-attachments/assets/e448627c-a583-4137-8f54-74205a627f1a" />

---

## 📅 Date: 2026-02-11

### East Source

<img width="482" height="125" alt="11-02-2026(East)" src="https://github.com/user-attachments/assets/f4c90c34-25ef-43cf-bdb6-faa231ee4d7f" />

### West Source

<img width="465" height="123" alt="11-02-2026(West)" src="https://github.com/user-attachments/assets/0c5ea3b8-281b-48a0-bb95-aac41cc45359" />

---

## 📅 Date: 2026-02-12

### East Source

<img width="466" height="121" alt="12-02-2026(East)" src="https://github.com/user-attachments/assets/b3133d1f-0204-4100-aec7-6e153b2c4dfc" />

### West Source

<img width="466" height="129" alt="12-02-2026(West)" src="https://github.com/user-attachments/assets/816ca476-585f-4a15-b1ff-0947800c1882" />

---

## 🛠️ Project Objective

The main objective of this project is to build a **professional and reliable ETL pipeline** that:

* reads multiple CSV files received from the client,
* handles **two regions (East and West)**,
* processes data **date-wise**,
* performs required **data cleaning, validation, and transformations**, and
* loads the final, high-quality data into **SQL Server**.

---
