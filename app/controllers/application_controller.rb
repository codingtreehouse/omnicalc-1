class ApplicationController < ActionController::Base
  def blank_square_form

    render({:template =>"calculation_templates/square_form.html.erb"})

  end

  def calculate_square

    @num = params.fetch("number").to_f
    @square_of_num = @num ** 2
    render({:template =>"calculation_templates/square_results.html.erb"})
  end
  
  def random_form

    render({:template => "calculation_templates/rand_new.html.erb"})
  end

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @rand = rand(@lower..@upper)
    render({:template => "calculation_templates/rand_results.html.erb"})
  end

  def sqrt_form
    render({:template => "calculation_templates/sqrt_form.html.erb"})
  end

  def sqrt_results
    @number = params.fetch("sqrt").to_f
    @sqrt = Math.sqrt(@number)
    render({:template => "calculation_templates/sqrt_results.html.erb"})
  end
end
