       IDENTIFICATION                                          DIVISION.
       PROGRAM-ID.         MAN1.
       AUTHOR.             RODRIGO DORNELLES.
           
       DATA                                                    DIVISION.
       WORKING-STORAGE                                          SECTION.
       77  CLIENT-NAME PIC X(32).
       77  CLIENT-HASH PIC 9(10).
           
       PROCEDURE                                               DIVISION.
       MAIN.
           DISPLAY "---------------------------------------------------"
           DISPLAY " COSTUMER REGISTER"
           DISPLAY "---------------------------------------------------"
           DISPLAY ""
           
           DISPLAY "[?] Complete name: "
           ACCEPT CLIENT-NAME
           CALL "UTIL0"
               USING BY CONTENT CLIENT-NAME
               RETURNING CLIENT-HASH
           END-CALL
           
           DISPLAY "[!] Display HASH:"
           DISPLAY CLIENT-HASH.
