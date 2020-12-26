# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# LWOT (I leave work on time)
We have created an app that reduces the workload of nurses.

# Description
I am a nurse.  Although it is said to be an angel in a white coat, it is a burden both physically and mentally to be next to the pressure of not making medical errors while responding to the needs of patients in normal work. As a fledgling engineer, I made it because I wanted to help a nurse.

# テーブル設計

## nurse テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| name            | string | null: false |
| employee_number | string | null: false |
| password        | string | null: false |
| image           |        | null: false |

### Association

- has_one: patient_list
- has_many: patients

## patients テーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| name        | string | null: false |
| doctor      | string | null: false |
| room_number | string | null: false |
| password    | string | null: false |

### Association

- belongs_to: nurse
- belongs_to: patient_list
- belongs_to: question

## patient_lists テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| nurse_id   | references | null: false, foreign_key: true |
| patient_id | references | null: false, foreign_key: true |

### Association

- has_one: nurse
- has_many: patient
- has_many: question

## questions　テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| nurse_id   | references | null: false, foreign_key: true |
| patient_id | references | null: false, foreign_key: true |

### Association
 
- has_one: patient
- belongs_to: patient_list
- has_one: symptoms
- has_one: medical_treatment
- has_one: checkup

## symptoms　テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| oneset_time  | date       | null: false                    |
| body_region  | string     | null: false                    |
| condition    | string     | null: false                    |
| question_id  | references | null: false, foreign_key: true |

### Association
 
- has_one: question

## medical_treatments　テーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| consultation_content | integer    | null: false                    |
| detail               | text       | null: false                    |
| question_id          | references | null: false, foreign_key: true |

### Association
 
- has_one: question

## checkups　テーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| consultation_content | integer    | null: false                    |
| detail               | text       | null: false                    |
| question_id          | references | null: false, foreign_key: true |

### Association
 
- has_one: question