def timeConversion(s)
    # Write your code here
    timeArray = s.split(":")
    hours= timeArray[0].to_i
    minutes = timeArray[1]
    seconds = timeArray[2].slice(0,2)
    meridian = timeArray[2].slice(-2,2)

    if meridian === "PM" and hours != 12
        hours += 12
    elsif meridian === "AM" and hours === 12
        hours = 0
    end

    militaryTime=hours.to_s.rjust(2,"0")


    milihours = militaryTime + ":" + minutes + ":" + seconds

    milihours

end