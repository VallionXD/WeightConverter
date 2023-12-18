       IDENTIFICATION DIVISION.
       PROGRAM-ID. WeightConverter.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 KG-BASE      PIC 9(5)V9(6) VALUE .453592.
       01 LBS-BASE     PIC 9(5)V9(6) VALUE 2.20462.
       01 CONVERSION   PIC 9 VALUE 0.
       01 WEIGHT       PIC 9(5)V9(1) VALUE 0.
       01 CONVERTED-WEIGHT PIC 9(5)V9(1) VALUE 0.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY 'What type of conversion do you need?'.
           DISPLAY '1. KG to LBS'.
           DISPLAY '2. LBS to KG'.
           DISPLAY 'Select an option using numbers (1 or 2): '.
           ACCEPT CONVERSION.

           IF CONVERSION = 1 THEN
               DISPLAY 'Enter the amount of KG to convert: '.
               ACCEPT WEIGHT.
               COMPUTE CONVERTED-WEIGHT = FUNCTION TRUNCATE(WEIGHT * LBS-BASE).
               DISPLAY WEIGHT ' KG = ' CONVERTED-WEIGHT ' LBS'.
           ELSE IF CONVERSION = 2 THEN
               DISPLAY 'Enter the amount of LBS to convert: '.
               ACCEPT WEIGHT.
               COMPUTE CONVERTED-WEIGHT = FUNCTION TRUNCATE(WEIGHT * KG-BASE).
               DISPLAY WEIGHT ' LBS = ' CONVERTED-WEIGHT ' KG'.
           ELSE
               DISPLAY 'Invalid option'.
           END-IF.
           STOP RUN.
       END.
