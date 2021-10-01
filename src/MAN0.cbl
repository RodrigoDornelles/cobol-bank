       IDENTIFICATION                                          DIVISION.
       PROGRAM-ID.         MAN0.
       AUTHOR.             RODRIGO DORNELLES.

       DATA                                                    DIVISION.
       WORKING-STORAGE                                          SECTION.
       77  INP-MENU PIC 9.

       PROCEDURE                                               DIVISION.
       MAIN.
           PERFORM SHOW-MENU. 
           EVALUATE TRUE
               WHEN INP-MENU = "1" PERFORM OPTION-REGISTER
               WHEN INP-MENU = "0" PERFORM OPTION-EXIT
               WHEN OTHER PERFORM OPTION-INVALID
           END-EVALUATE
           GO TO MAIN.

       SHOW-MENU                                                SECTION.
           DISPLAY "---------------------------------------------------"
           DISPLAY " MAIN MANAGER MENU"
           DISPLAY "---------------------------------------------------"
           DISPLAY " > 1 register customer"
           DISPLAY " > 0 exit"
           DISPLAY ""
           DISPLAY "[?] Choose your option: "
           ACCEPT INP-MENU.

       OPTION-REGISTER                                          SECTION.
           CALL "MAN1".

       OPTION-INVALID                                           SECTION.
           DISPLAY "[X] Invalid option!".
           STOP RUN.

       OPTION-EXIT                                              SECTION.
           DISPLAY "[!] Bye."
           STOP RUN.
