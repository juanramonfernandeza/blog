module ApplicationHelper
  def display_greeting(tenant)
    if tenant == 'hansolo'
      "It's really cold out there."
    elsif tenant == 'chewbacca'
      "Have you grred today?"
    else
      "Idk what to tell you..."
    end
  end
end
