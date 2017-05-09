class Booking < ActiveRecord::Base
    enum day: [:Sunday, :Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday]
end
