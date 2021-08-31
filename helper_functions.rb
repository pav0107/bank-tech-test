def to_2_decimal_places(number)
  '%.2f' % number
end

def current_date
  date_day = "0#{Date.today.day}"[-2, 2]
  date_month = "0#{Date.today.month}"[-2, 2]
  date_year = Date.today.year
  "#{date_day}/#{date_month}/#{date_year}"
end