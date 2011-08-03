module ApplicationHelper
<<<<<<< HEAD
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end
=======
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
end
