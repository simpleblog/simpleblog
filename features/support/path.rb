module NavigationHelpers
  def path_to(page_name)
    result = case page_name
              when "add blogs"
                '/blogs/new'
              when "admin"
                '/admin'
              else
                begin
                  page_name =~ /(.*)/
                  path_components = $1.split(/\s+/)
                  self.send(path_components.push('path').join('_').to_sym)
                rescue Object => e
                  raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
                  "Now, go and add a mapping in #{__FILE__}"
                end
              end
  end

  def fill_in_with_field_converted(arg_name,value)
    arg_convert = arg_name.split(/\s+/).join('_')
    fill_in(arg_convert, :with => value)
  end
end

World(NavigationHelpers)