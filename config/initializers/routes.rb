module ActionDispatch
  module Routing
    class Mapper
      def draw(routes_name)
        instance_eval(File.read(Rails.root.join('config', 'routes', "#{routes_name}.rb")))
      end
    end
  end
end
