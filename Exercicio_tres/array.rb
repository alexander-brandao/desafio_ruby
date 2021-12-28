
dates = ['11 Aug 2020', '29 Jan', '27 Jan', '1 Dec 2022', '28 Jan']

    # returns block of date intervals without gaps 
    dates.each do |dates|
        puts dates.scan(/\w+/).join
    end