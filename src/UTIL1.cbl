       IDENTIFICATION                                          DIVISION.
       PROGRAM-ID.         UTIL1.
       AUTHOR.             RODRIGO DORNELLES.
      *DESCRIPTION.        TEXT LENGTH
       
       DATA                                                    DIVISION.
       WORKING-STORAGE                                          SECTION.
       77  LEAD PICTURE 9.
       
       LINKAGE                                                  SECTION.
       77  PARAM0    PIC X(32).
       
       PROCEDURE                                                DIVISION
                                                           USING PARAM0.
           INSPECT 
               FUNCTION REVERSE(PARAM0) 
               TALLYING LEAD FOR LEADING SPACES
           
           COMPUTE RETURN-CODE = LENGTH OF PARAM0 - LEAD.
