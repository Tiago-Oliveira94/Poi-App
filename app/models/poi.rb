class Poi < ApplicationRecord
    validates :name, presence: true, length: { minimum: 5 }
    validates :x, presence: true, numericality: { greater_than: 0 }
    validates :y, presence: true, numericality: { greater_than: 0 }

    def euclidean_distance(p1,p2)
        sum_of_squares = 0
        p1.each_with_index do |p1_coord,index| 
          sum_of_squares += (p1_coord - p2[index]) ** 2 
        end
        Math.sqrt( sum_of_squares ).round(2)
    end
end