#!/bin/bash

read -p "enter file name : " file_path

if [[ "$file_path" = "" ]]; then
    ./s21_grep
    if [ "$?" = 0 ]; then
      echo "test 0: SUCCESS"
    else
      echo "test 0: FAIL"
    fi
exit $?;
fi

./s21_grep -e 'the' $file_path > result.txt
grep -e 'the' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 1: SUCCESS"
else
  echo "test 1: FAIL"
fi


./s21_grep -i 'file' $file_path > result.txt 2> /dev/null
grep -i 'file' $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 2: SUCCESS"
else
  echo "test 2: FAIL"
fi


./s21_grep -v 'the' $file_path > result.txt 2> /dev/null
grep -v 'the' $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 3: SUCCESS"
else
  echo "test 3: FAIL"
fi



./s21_grep -c 'if' $file_path > result.txt 2> /dev/null
grep -c 'if' $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 4: SUCCESS"
else
  echo "test 4: FAIL"
fi



./s21_grep -l 'size' $file_path > result.txt 2> /dev/null
grep -l 'size' $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 5: SUCCESS"
else
  echo "test 5: FAIL"
fi



./s21_grep -n 'not' $file_path > result.txt 2> /dev/null
grep -n 'not' $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 6: SUCCESS"
else
  echo "test 6: FAIL"
fi



./s21_grep -h '\0' $file_path > result.txt 2> /dev/null
grep -h '\0' $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 7: SUCCESS"
else
  echo "test 7: FAIL"
fi



./s21_grep -s 'is' $file_path > result.txt 2> /dev/null
grep -s 'is' $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 8: SUCCESS"
else
  echo "test 8: FAIL"
fi



./s21_grep -f 'if' $file_path > result.txt 2> /dev/null
grep -f 'if' $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 9: SUCCESS"
else
  echo "test 9: FAIL"
fi

./s21_grep -f 'if' $file_path > result.txt 2> /dev/null
grep -f 'if' $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 10: SUCCESS"
else
  echo "test 10: FAIL"
fi

./s21_grep -o 'это' $file_path > result.txt 2> /dev/null
grep -o 'это' $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 11: SUCCESS"
else
  echo "test 11: FAIL"
fi

./s21_grep -e 'line' $file_path "grep.txt"> result.txt
grep -e 'line' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 12: SUCCESS"
else
  echo "test 12: FAIL"
fi

./s21_grep -e 'if not, then read further using read' $file_path > result.txt
grep -e 'if not, then read further using read' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 13: SUCCESS"
else
  echo "test 13: FAIL"
fi

./s21_grep -n 'read' $file_path "grep.txt"> result.txt
grep -n 'read' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 14: SUCCESS"
else
  echo "test 14: FAIL"
fi

./s21_grep -n 'line' $file_path "grep.txt"> result.txt
grep -n 'line' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 15: SUCCESS"
else
  echo "test 15: FAIL"
fi

./s21_grep -v 'line' $file_path "grep.txt" > result.txt
grep -v 'line' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 16: SUCCESS"
else
  echo "test 16: FAIL"
fi

./s21_grep -c 'is' $file_path "grep.txt" > result.txt
grep -c 'is' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 17: SUCCESS"
else
  echo "test 17: FAIL"
fi

./s21_grep --ignore-case 'the' $file_path > result.txt
grep --ignore-case 'the' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 18: SUCCESS"
else
  echo "test 18: FAIL"
fi

./s21_grep --invert-match 'if' $file_path > result.txt
grep --invert-match 'if' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 19: SUCCESS"
else
  echo "test 19: FAIL"
fi

./s21_grep --files-with-matches 'is' $file_path > result.txt
grep --files-with-matches 'is' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 20: SUCCESS"
else
  echo "test 20: FAIL"
fi

./s21_grep --line-number 're' $file_path > result.txt
grep --line-number 're' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 21: SUCCESS"
else
  echo "test 21: FAIL"
fi

./s21_grep --no-filename 're' $file_path > result.txt
grep --no-filename 're' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 22: SUCCESS"
else
  echo "test 22: FAIL"
fi

./s21_grep --no-messages 'are' $file_path > result.txt
grep --no-messages 'are' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 23: SUCCESS"
else
  echo "test 23: FAIL"
fi

./s21_grep --only-matching 'no' $file_path > result.txt
grep --only-matching 'no' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 24: SUCCESS"
else
  echo "test 24: FAIL"
fi

./s21_grep -c '^' $file_path "grep.txt" > result.txt
grep -c '^' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 25: SUCCESS"
else
  echo "test 25: FAIL"
fi

./s21_grep -iv 'if' $file_path "grep.txt" > result.txt
grep -iv 'if' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 26: SUCCESS"
else
  echo "test 26: FAIL"
fi

./s21_grep -ic 'if' $file_path "grep.txt" > result.txt
grep -ic 'if' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 27: SUCCESS"
else
  echo "test 27: FAIL"
fi

./s21_grep -il 'if' $file_path "grep.txt" > result.txt
grep -il 'if' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 28: SUCCESS"
else
  echo "test 28: FAIL"
fi

./s21_grep -in 'if' $file_path "grep.txt" > result.txt
grep -in 'if' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 29: SUCCESS"
else
  echo "test 29: FAIL"
fi

./s21_grep -ih 'g' $file_path "grep.txt" > result.txt
grep -ih 'g' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 30: SUCCESS"
else
  echo "test 30: FAIL"
fi

./s21_grep -is 'g' $file_path "grep.txt" > result.txt
grep -is 'g' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 31: SUCCESS"
else
  echo "test 31: FAIL"
fi

./s21_grep -io 'takes' $file_path > result.txt
grep -io 'takes' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 32: SUCCESS"
else
  echo "test 32: FAIL"
fi

./s21_grep -ie 'from' $file_path > result.txt
grep -ie 'from' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 33: SUCCESS"
else
  echo "test 33: FAIL"
fi

./s21_grep -vc 'using' $file_path > result.txt
grep -vc 'using' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 34: SUCCESS"
else
  echo "test 34: FAIL"
fi

./s21_grep -vl 'mistake' $file_path > result.txt
grep -vl 'mistake' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 35: SUCCESS"
else
  echo "test 35: FAIL"
fi

./s21_grep -vn 'pointer' $file_path > result.txt
grep -vn 'pointer' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 35: SUCCESS"
else
  echo "test 35: FAIL"
fi

./s21_grep -vh 'what' $file_path > result.txt
grep -vh 'what' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 36: SUCCESS"
else
  echo "test 36: FAIL"
fi

./s21_grep -vs 'add' $file_path > result.txt
grep -vs 'add' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 37: SUCCESS"
else
  echo "test 37: FAIL"
fi

./s21_grep -v 'left' $file_path > result.txt
grep -v 'left' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 38: SUCCESS"
else
  echo "test 38: FAIL"
fi

./s21_grep -co 'left' $file_path > result.txt
grep -co 'left' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 39: SUCCESS"
else
  echo "test 39: FAIL"
fi

./s21_grep -cn 'left' $file_path > result.txt
grep -cn 'left' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 40: SUCCESS"
else
  echo "test 40: FAIL"
fi

./s21_grep -ch 'a' $file_path > result.txt
grep -ch 'a' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 41: SUCCESS"
else
  echo "test 41: FAIL"
fi

./s21_grep -cs 'from' $file_path > result.txt
grep -ch 'from' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 42: SUCCESS"
else
  echo "test 42: FAIL"
fi

./s21_grep -l 'check' $file_path > result.txt
grep -l 'check' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 43: SUCCESS"
else
  echo "test 43: FAIL"
fi

./s21_grep -cn 'rest' $file_path > result.txt
grep -cn 'rest' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 44: SUCCESS"
else
  echo "test 44: FAIL"
fi

./s21_grep -ch 'to' $file_path > result.txt
grep -ch 'to' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 45: SUCCESS"
else
  echo "test 45: FAIL"
fi

./s21_grep -cs 'The second argument is a pointer ' $file_path > result.txt
grep -cs 'The second argument is a pointer ' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 46: SUCCESS"
else
  echo "test 46: FAIL"
fi

./s21_grep -co 'how' $file_path > result.txt
grep -co 'how' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 47: SUCCESS"
else
  echo "test 47: FAIL"
fi

./s21_grep -ln ':' $file_path > result.txt
grep -ln ':' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 48: SUCCESS"
else
  echo "test 48: FAIL"
fi

./s21_grep -lh 'takes' $file_path > result.txt
grep -lh 'takes' $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 49: SUCCESS"
else
  echo "test 49: FAIL"
fi

./s21_grep -ls 'открываем' $file_path "grep.txt" > result.txt
grep -ls 'открываем' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 50: SUCCESS"
else
  echo "test 50: FAIL"
fi

./s21_grep -lo 'enter' $file_path "grep.txt" > result.txt
grep -lo 'enter' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 51: SUCCESS"
else
  echo "test 51: FAIL"
fi

./s21_grep -nh 'loop' $file_path "grep.txt" > result.txt
grep -nh 'loop' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 52: SUCCESS"
else
  echo "test 52: FAIL"
fi

./s21_grep -ns 'is' $file_path "grep.txt" > result.txt
grep -ns 'is' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 53: SUCCESS"
else
  echo "test 53: FAIL"
fi

./s21_grep -h 'no' $file_path "grep.txt" > result.txt
grep -h 'no' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 54: SUCCESS"
else
  echo "test 54: FAIL"
fi

./s21_grep -hs 'only' $file_path "grep.txt" > result.txt
grep -hs 'only' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 55: SUCCESS"
else
  echo "test 55: FAIL"
fi

./s21_grep -ho 'match' $file_path "grep.txt" > result.txt
grep -ho 'match' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 56: SUCCESS"
else
  echo "test 56: FAIL"
fi

./s21_grep -s 'is' $file_path "grep.txt" > result.txt
grep -s 'is' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 57: SUCCESS"
else
  echo "test 57: FAIL"
fi

./s21_grep -lv 'is' $file_path "grep.txt" > result.txt
grep -lv 'is' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 58: SUCCESS"
else
  echo "test 58: FAIL"
fi

./s21_grep -l -v 'for' $file_path "grep.txt" > result.txt
grep -l -v 'for' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 59: SUCCESS"
else
  echo "test 59: FAIL"
fi

./s21_grep --no-messages --ignore-case --invert-match 'is' $file_path "grep.txt" > result.txt
grep --no-messages --ignore-case --invert-match 'is' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 60: SUCCESS"
else
  echo "test 60: FAIL"
fi

./s21_grep -e 're' -e 'read' -e 'is' $file_path "grep.txt" > result.txt
grep -e 're' -e 'read' -e 'is' $file_path "grep.txt" > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 61: SUCCESS"
else
  echo "test 61: FAIL"
fi
