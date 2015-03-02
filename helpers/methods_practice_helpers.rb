module MethodsPracticeHelpers

  def image_tag(source, alternate_text)
    %(<img src="#{source}" alt="#{alternate_text}" class="img-responsive img-thumbnail">)
  end

  def bootstrap_alert(message, type='info')
    %(<div class="alert alert-#{type} alert-dismissible" role="alert">  
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>#{message}</div>)
    # Generates the HTML for a Bootstrap alert (useful since it can be diffcult
    # to remember all HTML needed to do it right). It should show the message in
    # the "message" variable and should have a class appropriate for the "type"
    # that is passed in, defaulting to 'info' if no type is passed in.
  end

  def current_date_and_time
    Time.now.strftime('%B %-e, %Y at%l:%M%P')
  end

end
