       IDENTIFICATION                                          DIVISION.
       PROGRAM-ID.         MAN1.
       AUTHOR.             RODRIGO DORNELLES.
           
       DATA                                                    DIVISION.
       WORKING-STORAGE                                          SECTION.
       77  CLIENT-HASH PIC 9(10).
       01  CLIENT-INFO.
       02  CLIENT-NAME PIC X(32).
       02  CLIENT-DATE-OF-BIRTH.
       03  CLIENT-YEAR-OF-BIRTH  PIC 9999.
       03  CLIENT-MONTH-OF-BIRTH PIC 99.
       03  CLIENT-DAY-OF-BIRTH   PIC 99.
           
       PROCEDURE                                               DIVISION.
       MAIN.
           DISPLAY "---------------------------------------------------"
           DISPLAY " COSTUMER REGISTER"
           DISPLAY "---------------------------------------------------"
           DISPLAY ""
           
           DISPLAY "[?] Complete name:"
           ACCEPT CLIENT-NAME
           
           DISPLAY "[?] Year of birth:"
           ACCEPT CLIENT-YEAR-OF-BIRTH
           
           DISPLAY "[?] Mounth of birth:"
           ACCEPT CLIENT-MONTH-OF-BIRTH

           DISPLAY "[?] Day of birth:"
           ACCEPT CLIENT-DAY-OF-BIRTH

           CALL "UTIL0" 
               USING BY CONTENT CLIENT-INFO
               RETURNING CLIENT-HASH
           END-CALL
           
           DISPLAY "[!] Client Acount ID:"
           DISPLAY CLIENT-HASH

           DISPLAY "[!] Client info:"
           DISPLAY CLIENT-INFO.
