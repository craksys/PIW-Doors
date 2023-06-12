class PagesController < ApplicationController
    def about

    end
  
    def contact

    end
  
    def lost_card

    end
    
    def revoke_permit
        user = current_user
        all_rooms = Room.all
        all_rooms.each do |room|
            if room.users.include?(user)
                room.users.delete(user)
            end
        end
    end
    
  end
  