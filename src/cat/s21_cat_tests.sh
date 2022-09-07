#!/bin/bash

read -p "enter file name : " file_path

if [[ "$file_path" = "" ]]; then
    ./s21_cat
    if [ "$?" = 0 ]; then
      echo "test 0: SUCCESS"
    else
      echo "test 0: FAIL"
    fi
exit $?;
fi

./s21_cat -n $file_path > result.txt 2> /dev/null
cat -n $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 1: SUCCESS"
else
  echo "test 1: FAIL"
fi


./s21_cat -v $file_path > result.txt 2> /dev/null
cat -v $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 2: SUCCESS"
else
  echo "test 2: FAIL"
fi

./s21_cat -e $file_path > result.txt 2> /dev/null
cat -e $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 3: SUCCESS"
else
  echo "test 3: FAIL"
fi


./s21_cat -e $file_path > result.txt 2> /dev/null
cat -e $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 4: SUCCESS"
else
  echo "test 4: FAIL"
fi


./s21_cat -s $file_path > result.txt 2> /dev/null
cat -s $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 5: SUCCESS"
else
  echo "test 5: FAIL"
fi


./s21_cat --number-nonblank $file_path > result.txt 2> /dev/null
cat -b $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 6: SUCCESS"
else
  echo "test 6: FAIL"
fi

./s21_cat -e $file_path > result.txt 2> /dev/null
cat -e $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 7: SUCCESS"
else
  echo "test 7: FAIL"
fi


./s21_cat --number $file_path > result.txt 2> /dev/null
cat -n $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 8: SUCCESS"
else
  echo "test 8: FAIL"
fi


./s21_cat --squeeze-blank $file_path > result.txt 2> /dev/null
cat -s $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 9: SUCCESS"
else
  echo "test 9: FAIL"
fi


./s21_cat -t $file_path > result.txt 2> /dev/null
cat -t $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 10: SUCCESS"
else
  echo "test 10: FAIL"
fi


./s21_cat --show-nonprinting $file_path > result.txt 2> /dev/null
cat -v $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 11: SUCCESS"
else
  echo "test 11: FAIL"
fi


./s21_cat -nb $file_path > result.txt 2> /dev/null
cat -nb $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 12: SUCCESS"
else
  echo "test 12: FAIL"
fi

./s21_cat -vb $file_path > result.txt 2> /dev/null
cat -vb $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 13: SUCCESS"
else
  echo "test 13: FAIL"
fi


./s21_cat -ve $file_path > result.txt 2> /dev/null
cat -ve $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 14: SUCCESS"
else
  echo "test 14: FAIL"
fi


./s21_cat -usn $file_path > result.txt 2> /dev/null
cat -usn $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 15: SUCCESS"
else
  echo "test 15: FAIL"
fi


./s21_cat -nubt $file_path > result.txt 2> /dev/null
cat -nubt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 16: SUCCESS"
else
  echo "test 16: FAIL"
fi


./s21_cat -ssnn $file_path > result.txt 2> /dev/null
cat -ssnn $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 17: SUCCESS"
else
  echo "test 17: FAIL"
fi


./s21_cat -b -t -bb $file_path > result.txt 2> /dev/null
cat -b -t -bb  $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 18: SUCCESS"
else
  echo "test 18: FAIL"
fi

./s21_cat -v -bn $file_path > result.txt 2> /dev/null
cat -v -bn $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 19: SUCCESS"
else
  echo "test 19: FAIL"
fi


./s21_cat -be $file_path > result.txt 2> /dev/null
cat -be $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 20: SUCCESS"
else
  echo "test 20: FAIL"
fi


./s21_cat -b -u $file_path > result.txt 2> /dev/null
cat -b -u $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 20: SUCCESS"
else
  echo "test 20: FAIL"
fi


./s21_cat -bs $file_path > result.txt 2> /dev/null
cat -bs $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 21: SUCCESS"
else
  echo "test 21: FAIL"
fi


./s21_cat -bt $file_path > result.txt 2> /dev/null
cat -bt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 22: SUCCESS"
else
  echo "test 22: FAIL"
fi


./s21_cat -b -ut $file_path > result.txt 2> /dev/null
cat -b -ut $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 23: SUCCESS"
else
  echo "test 23: FAIL"
fi


./s21_cat -eu -u -bnt $file_path > result.txt 2> /dev/null
cat -eu -u -bnt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 23: SUCCESS"
else
  echo "test 23: FAIL"
fi


./s21_cat -en $file_path > result.txt 2> /dev/null
cat -en $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 24: SUCCESS"
else
  echo "test 24: FAIL"
fi


./s21_cat -es $file_path > result.txt 2> /dev/null
cat -es $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 25: SUCCESS"
else
  echo "test 25: FAIL"
fi


./s21_cat -et $file_path > result.txt 2> /dev/null
cat -et $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 26: SUCCESS"
else
  echo "test 26: FAIL"
fi


./s21_cat -euuuuuuuuuuu $file_path > result.txt 2> /dev/null
cat -euuuuuuuuuuu $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 27: SUCCESS"
else
  echo "test 27: FAIL"
fi


./s21_cat -ev $file_path > result.txt 2> /dev/null
cat -ev $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 28: SUCCESS"
else
  echo "test 28: FAIL"
fi


./s21_cat -en $file_path > result.txt 2> /dev/null
cat -en $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 29: SUCCESS"
else
  echo "test 29: FAIL"
fi


./s21_cat -es $file_path > result.txt 2> /dev/null
cat -es $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 30: SUCCESS"
else
  echo "test 30: FAIL"
fi


./s21_cat -et $file_path > result.txt 2> /dev/null
cat -et $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 31: SUCCESS"
else
  echo "test 31: FAIL"
fi


./s21_cat -venssssnsns $file_path > result.txt 2> /dev/null
cat -venssssnsns $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 32: SUCCESS"
else
  echo "test 32: FAIL"
fi


./s21_cat -nv $file_path > result.txt 2> /dev/null
cat -nv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 33: SUCCESS"
else
  echo "test 33: FAIL"
fi


./s21_cat -nt $file_path > result.txt 2> /dev/null
cat -nt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 34: SUCCESS"
else
  echo "test 34: FAIL"
fi


./s21_cat -nt $file_path > result.txt 2> /dev/null
cat -nt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 35: SUCCESS"
else
  echo "test 35: FAIL"
fi

./s21_cat -ns $file_path > result.txt 2> /dev/null
cat -ns $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 36: SUCCESS"
else
  echo "test 36: FAIL"
fi


./s21_cat -nt $file_path > result.txt 2> /dev/null
cat -nt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 37: SUCCESS"
else
  echo "test 37: FAIL"
fi


./s21_cat -nv $file_path > result.txt 2> /dev/null
cat -nv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 38: SUCCESS"
else
  echo "test 38: FAIL"
fi


./s21_cat -ts $file_path > result.txt 2> /dev/null
cat -ts $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 39: SUCCESS"
else
  echo "test 39: FAIL"
fi


./s21_cat -uv $file_path > result.txt 2> /dev/null
cat -uv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 40: SUCCESS"
else
  echo "test 40: FAIL"
fi

./s21_cat -benstuv $file_path > result.txt 2> /dev/null
cat -benstuv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 41: SUCCESS"
else
  echo "test 41: FAIL"
fi


./s21_cat -snb $file_path > result.txt 2> /dev/null
cat -snb $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 42: SUCCESS"
else
  echo "test 42: FAIL"
fi


./s21_cat -ssss $file_path > result.txt 2> /dev/null
cat -ssss $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 43: SUCCESS"
else
  echo "test 43: FAIL"
fi


./s21_cat -ssssttttt $file_path > result.txt 2> /dev/null
cat -ssssttttt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 43: SUCCESS"
else
  echo "test 43: FAIL"
fi


./s21_cat -sb $file_path > result.txt 2> /dev/null
cat -sb $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 44: SUCCESS"
else
  echo "test 44: FAIL"
fi


./s21_cat  -bbbnnntt $file_path > result.txt 2> /dev/null
cat -bbbnnntt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 45: SUCCESS"
else
  echo "test 45: FAIL"
fi


./s21_cat -sssstttttssss $file_path > result.txt 2> /dev/null
cat -sssstttttssss $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 46: SUCCESS"
else
  echo "test 46: FAIL"
fi


./s21_cat -u $file_path > result.txt 2> /dev/null
cat -u $file_path > result2.txt 2> /dev/null
if [ "$?" = 0 ]; then 2> /dev/null
  echo "test 47: SUCCESS"
else
  echo "test 47: FAIL"
fi


./s21_cat -ubbbb $file_path > result.txt 2> /dev/null
cat -ubbbb $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 48: SUCCESS"
else
  echo "test 48: FAIL"
fi


./s21_cat -t $file_path > result.txt 2> /dev/null
cat -t $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 49: SUCCESS"
else
  echo "test 49: FAIL"
fi


./s21_cat -v $file_path > result.txt 2> /dev/null
cat -v $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 50: SUCCESS"
else
  echo "test 50: FAIL"
fi


./s21_cat -uv $file_path > result.txt 2> /dev/null
cat -uv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 51: SUCCESS"
else
  echo "test 51: FAIL"
fi


./s21_cat -ub $file_path > result.txt 2> /dev/null
cat -ub $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 52: SUCCESS"
else
  echo "test 52: FAIL"
fi


./s21_cat -ue $file_path > result.txt 2> /dev/null
cat -ue $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 52: SUCCESS"
else
  echo "test 52: FAIL"
fi


./s21_cat -ue $file_path > result.txt 2> /dev/null
cat -ue $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 53: SUCCESS"
else
  echo "test 53: FAIL"
fi


./s21_cat -un $file_path > result.txt 2> /dev/null
cat -un $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 54: SUCCESS"
else
  echo "test 54: FAIL"
fi


./s21_cat -us $file_path > result.txt 2> /dev/null
cat -us $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 55: SUCCESS"
else
  echo "test 55: FAIL"
fi


./s21_cat -ut $file_path > result.txt 2> /dev/null
cat -ut $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 56: SUCCESS"
else
  echo "test 56: FAIL"
fi


./s21_cat -ut $file_path > result.txt 2> /dev/null
cat -ut $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 57: SUCCESS"
else
  echo "test 57: FAIL"
fi


./s21_cat -uv $file_path > result.txt 2> /dev/null
cat -uv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ $d == "0" ]; then
  echo "test 58: SUCCESS"
else
  echo "test 58: FAIL"
fi

