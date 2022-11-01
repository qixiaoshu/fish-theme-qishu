#welcome
function money -d "payroll"
    set -f pd (math (date +%d)\*1)
    if test $pd -le 5
        set -f rq (math (date +%Y)\*10000+(date +%m)\*100+5)
    else
        set -f rq  (math (date +%Y)\*10000+(date +%m)\*100+105)
    end
    set -f temp (math (date -d "$rq 1500" +%s)/86400-(date +%s)/86400)
    set -f xq (date -d "$rq" +%u)
    if test $xq=6
    set final (math -s1 $temp+2)
    else if test $xq=7
    set final (math -s1 $temp+1)
    else
    set final (math -s1 $temp)
    end
    if test $final=1
    echo $final day away from payroll.
    else
    echo $final days away from payroll.
    end
end


function holiday -d "weekend"
set -f wday (math 5-(date +%u))
set_color 00b7c3
if test $wday -ge 0
    echo The weekend is $wday day away.
else
    echo Today is the weekend.
end
end

function runnian -d "ruannian"
set -f ny (math (date +%Y)\*10000+10101)
set -f temp (math -s0 (date -d "$ny" +%s)/86400-(date +%s)/86400+1)

set_color 00b7c3
if test $temp -eq 1
    echo Countdown one day !!!.
else if test $temp -eq 0
    echo Happy new year !!!!!!
else 
    echo $temp days left this year.
end
end

set_color yellow
date '+Today is %F %A.'
date '+It is the %jth day and %Wth week of this year.'
runnian
holiday
money
