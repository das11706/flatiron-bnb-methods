class City < ActiveRecord::Base
  
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods


 
  def city_openings(start_date, end_date)
    Reservation.all.select do |r|
      binding.pry
      # if (start_date <= r.checkout.to_s) && (end_date >= r.checkin.to_s)
      #  r.listing
      if !((start_date <= r.checkout.to_s) && !(end_date >= r.checkin.to_s))
        r.listing
       
      end
    end
  end
end

# if !((start_date <= r.checkout.to_s) && (end_date >= r.checkin.to_s))

# if (r.checkin.to_s.between?(start_date <= end_date) && (r.checkout.to_s.between?(start_date >= end_date)

# if (r.checkin.to_s && r.checkout.to_s).between?(start_date, end_date)

# (StartA <= EndB) and (EndA >= StartB)


# Right, but instead of StartA/EndA we can use the start_date and end_date of the method, 
# and StartB and EndB can be the checkin/checkout of r