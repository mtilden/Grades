
with ada.text_io; use ada.text_io;
WITH Ada.Integer_Text_Io; USE Ada.Integer_Text_Io;
WITH Ada.Float_Text_Io; USE Ada.Float_Text_Io;
with ada.characters.handling; use ada.characters.handling;



procedure missing is

  procedure start(gi: out nums_weights) is

      gi: nums_weight;

  begin
  -- gets number entries for each category from standard input
  -- and weight for each category following num_.... of that categ.
	  get(num_progs);		--programs
	  get(weight_progs);
	  get(num_quiz);       -- quizes
	  get(weight_quiz);
	  get(num_test);		--tests
     Get(Weight_Test);Tori7226

	  get(num_final);		-- final ... final should always be one
	  get(weight_final);

  end start;
----------------------------------------------------------------------------]
  PROCEDURE Get_Student_Info(s1 : out Student_info; gi: in nums_weights) IS


        Temp1, p_index, q_index t_index: Integer RANGE 0 ..100;
        countercurrent : integer := 0;
	  c: Character;
        EOL: Boolean;
         stud_name : String(1 .. 100);

  begin

      skip_line;

	  while not end_Of_File loop   -- while not end of file get students info
        Get(Stud_Name);
        s1.name := stud_name;
		 ----------------------------------
			  look_Ahead(c, EOL);
			  if EOL then      -- Only look at c if not at eol
				  skip_line;
                    ELSE
                       if is_digit(c) then   -- if c is a digit get the digit save to spot in array
				  get(temp1);
                 Countercurrent := Countercurrent + Temp1;
                 p_index := p_index + 1;
                          ELSE
                          get(c);		-- gets blank to move c to next input marker
                       END IF;
                    end if;

        S1.Progspoints := Countercurrent;
        currentcount := 0;

         ---------------------------------

		  -- checks if all the spots in array are full
		 -- for e in 1 .. gi.num_progs loop
		--	  if s.a_prog(e)'value = null then   -- if it is null 0' will be added
		--	      s.a_prog(e) := 0;
		  --    end if;
			--  put(s.a_prog(e)); --TESTING
	  	 -- end loop;				-- end loop progs check
		--	  new_line; --TESTING

		------------------------------------------------------------
			  -- for loop for quizzes

			  look_Ahead(c, EOL);
			  if EOL then		 -- Only look at c if not at eol
                        skip_line;
                    ELSE
                         if is_digit(c) then 		-- if c is a digit get the digit save to spot in array
				  get(temp1);
                          Countercurrent := Currentcounter + Temp1;
                          q_index := q_index + 1;
			        else
				  get(c); 			-- gets blank to move c to next input marker
                          END IF;
                     end if;

        St.Quizpoints := Countercurrent;
        countercurrent := 0;

		  -- checks if all the spots in array are full
		 -- for n in 1 .. gi.num_quiz loop
		--	  if s.a_quiz(n)'value = null then
		--	      s.a_quiz(n) := 0;
		 --	  end if;
		--	  put(s.a_quiz(n)); --TESTING
	--  	  end loop;
	--	  new_line; --TESTING
		  -------------------------------------------------------------

			  look_Ahead(c, EOL);
			  if EOL then
				  skip_line;
                       if is_digit(c) then
				  get(temp1);
                          Countercurrent := Countercurrent + Temp1;
                           t_index := t_index + 1;
			     else
				  get(c);
			     end if;
                    end if;
		  end loop;
        S1.Testpoints := Countercurrent;
        countercurrent := 0;

      -------------------------------------
        Look_Ahead(C, EOL);         -- looks ahead for a final grade value
        Get(Temp1); -- gets digit
        s1.finalexam := temp1;      -- adds value of temp1 to final exam
        skip_line;

         ----------------------------------
     IF T_Index < Gi.Num_Tests THEN  -- if test is missing a final exam grade replaces them
        WHILE T_Index < Gi.Num_Tests loop
           S1.Testpoints := S1.Testpoints + S1.Finalexam;
           t_index := t_index + 1;
        end loop;
     end if;
        ------------------
      gi.studentcounter := g1.studentcounter + 1;
     END LOOP;         -- end while not end of file loop

         --Weights();


  end get_student_info;


-------------------------------------------------------------



---------------------------------------------------------------
  PROCEDURE Weights(STUD_Arr : IN OUT Student_Array;
     gi : out num_we) IS




  BEGIN
     FOR J IN 1 .. counter LOOP -- for each student in Student_arr
         s1.programpoints :=  s1.progspoints / giNum_Progs;            -- divides sum of all prog grades by number of total programs
        gi.weight_progavg := s1.programpoints * giweight_progs;      -- gets the weight of all program by * programs average by the weight
         -----------------------------------------------

        s1.Quizpoints := s1.Quizpoints / gi.Num_Quiz;         -- divides sum of all quiz grades by number of total quizzes

        weight_quizavg := quiz_avg * weight_quiz;  -- gets the weight of all quizzes by * quiz average by the weight
        ------------------------------------------------

        s1.Testpoints := s1.Testpoints / gi.Num_Test;         -- divides sum of all test grades by number of total tests
        gi.weight_testavg := s1.test_avg * gi.weight_test; -- gets the weight of all tests by * tests average by the weight

        ------------------------------------------------



        g1.Weight_Finalavg := s1.FinalExam * gi.Weight_Final;   -- gets weight avg of final exam

        s1.Final_Grade := gi.Weight_Progavg + g1.Weight_Quizavg + s1.Weight_Testavg + s1.Weight_Finalavg;  -- gets final grade
           -- EVERYTHING IS STILL AN INTEGER HERE

         function getgradeletter(avg. stud_arr(j));
     END LOOP;


   end Weights;
----------------------------------------------------------------------------

-- checks to see what letter grade srudent gets
   function getgradeletter(avg : in float; Stud_Arr: IN OUT Student_arr) return String is

 	   returngrade : String (1..1);

       begin

 		if avg >= 90.0 then               -- see's what final grade student has
 			Returngrade := "A";         --returns a if above 90.0
 		elsif (avg >= 80.0) then            --returns b if 80 -88.9
                  returngrade := "B";
 		elsif (avg >= 70.0) then
 			Returngrade := "C";
 		elsif (avg >= 60.0) then
 			Returngrade := "D";
 		else
 			Returngrade := "F";

 	      end if;

 	return Returngrade;

 end getgradeletterGrade;
---------------------------------------------
   --    PROCEDURE Sortstudents (Stud_Arr: IN OUT Student_Array)
   --       FOR I IN 1 .. Gi.Studentcount LOOP
   --       IF Stud_Arr(I).Lettergrade = 'A' THEN
     --        Put("Name: ");
   --          Put(Stud_Arr(I).Name'Img, base =>2 , witdth =>3);
     --        New_Line;
    ---         Put("Overall Average: ");
    --         Put(Stud_Arr(I).Progpoits'Img, base =>2 , witdth =>3);
    --         New_Line;


  --    a : LetterGrade;
--
--  end printoutStudent;

    type nums_weights is RECORD
       Num_Progs : Integer; --holds number of programs
       Num_Quiz : Integer;  --holds number of quiz
       Num_Test : Integer;      -- holds number of tests

       Weight_Progs : Integer;
       Weight_Quiz : Integer;
       Weight_Test: Integer;
       Weight_Final: Integer;
       studentcounter : Integer := 0;
    END RECORD;
         ---------------------------------------------------
         -- type studentinfo holds the name and grades and final grade of students
     TYPE StudentInfo IS RECORD

	    name: String(1 .. 100);      --hold student name
          Progspoints : Integer;      --holds programs points
          Quizpoints : Integer;      --holds quiz points
          testpoints : Integer;      --hold total test points
          FinalExam: Integer RANGE 0 .. 100;			--only one final exam entry 0 to 100
          lettergrade: String(0 .. 1); -- holds letter grade of student

     end record;			-- end record of type student

	  type Student_arr is array(1 .. 100) of StudentInfo;
         numberofstudents : Student_array;
         Gi: Nums_Weights;


begin


   Start(Gi);  -- start procedure
      while not end_of_file loop
      Get_Student_Info(Numberofstudnets);

      end loop;
      Gi.Studentcounter := G1.Studentcounter + 1;
      end loop

           --Weights(STUD_Arr, S1, Weight_Progs, Weight_Quiz, Weight_Test, Weight_Final, Num_Progs,
             --  Num_Quiz, Num_Test, Num_Final);

end missing;
