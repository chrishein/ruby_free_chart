module RubyFreeChart
  class PieChart

    attr_accessor :backgroundColor, :borderColor, :height, :title, :width

    def initialize()
      @data = []
      
      char_render_path = Pathname(File.expand_path(File.join(File.dirname(__FILE__), '../../jar/chartrender.jar'))) 
      @command = "java -jar #{char_render_path}"
    end
    
    def add_value(label, value, hexColor=nil)
      @data << (hexColor.nil?? {:label => label, :value => value} : {:label => label, :value => value, :hexColor => hexColor })
    end
    
    def render_png
      params = { :title => title, :width => width, :height => height, :data => @data }

      pipe = IO.popen @command, 'wb+'
      pipe.puts params.to_json
      response = pipe.read
      pipe.close
      
      return response
    end
  
    def render_png_to_file(file_name)
      file = File.new(file_name, "wb+")
      file.puts render_png
    end
  end
end