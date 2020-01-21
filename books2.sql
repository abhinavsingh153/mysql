SELECT 
    SUBSTRING
            (
                REPLACE(
                
                    REVERSE(title),"e",0
                )
                ,1,10
            )
        form books;