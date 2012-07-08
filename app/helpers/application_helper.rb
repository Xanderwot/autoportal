module ApplicationHelper
	def alert_type(name)
 		if name == :alert
    	"error"
    else
    	"success"
    end		
	end
end
