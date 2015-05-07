class SetIndexFlash
  include Interactor

  def call
    if context.tenant == 'hansolo'
      context.message = "It's really cold out there."
    elsif context.tenant == 'chewbacca'
      context.message = "Have you grred today?"
    else
      context.fail!(message: "Idk what to tell you...")
    end
  end
end
