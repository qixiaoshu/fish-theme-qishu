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


function fish_greeting -d "hello,world"
set_color yellow
date '+Today is %F %A'
date '+It is the %jth day and %Wth week of this year.'
holiday
end
