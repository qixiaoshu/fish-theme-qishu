#welcome
function holiday -d "weekend"
set -l week (date '+%A')
set_color 00b7c3
if test $week = Monday
	echo The weekend is 5 day away.
else if test $week = Tuesday
	echo The weekend is 4 day away.
else if test $week = Wednesday
	echo The weekend is 3 day away.
else if test $week = Thursday
	echo The weekend is 2 day away.
else if test $week = Friday
	echo The weekend is 1 day away.
else
	echo Today is the weekend.
end
end

function runnian -d "ruannian"
set -l year (date '+%Y')
set -l day (date '+%j')
set -l run (math 366-$day)
set -l ping (math 365-$day)
set_color 00b7c3
if test $year%4=0 -a $year%100!=0 -o $year%400=0
	echo {$run} days left this year.
else 
	echo {$ping} days left this year.
end
end

set_color yellow
date '+Today is %F %A.'
date '+It is the %jth day and %Wth week of this year.'
runnian
holiday
