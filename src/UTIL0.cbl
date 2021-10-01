       IDENTIFICATION                                          DIVISION.
       PROGRAM-ID.         UTIL0.
       AUTHOR.             RODRIGO DORNELLES.
      *DESCRIPTION.        DJB2 ALGORITHM
       
       DATA                                                    DIVISION.
       WORKING-STORAGE                                          SECTION.
       77  I           PICTURE 99.
       77  TEXT-SIZE   PICTURE 99.
       
       LINKAGE                                                  SECTION.
       77  TEXT-PARAM  PIC X(32).
       
       PROCEDURE                                                DIVISION
                                                       USING TEXT-PARAM.
       DJB2.
           MOVE 5381 TO RETURN-CODE
           CALL "UTIL1"
               USING BY CONTENT TEXT-PARAM
               RETURNING TEXT-SIZE
           END-CALL

           PERFORM HASH VARYING I FROM 1 BY 1 UNTIL I > TEXT-SIZE.
       
       HASH                                                     SECTION.
           COMPUTE RETURN-CODE = 
               (RETURN-CODE * 33) + FUNCTION ORD (TEXT-PARAM(I:1)).
