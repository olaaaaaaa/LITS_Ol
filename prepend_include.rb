 module A
    def hello
      super if defined?(super)
      puts "hello from A"
    end
  end

  module B
    def hello
      super if defined?(super)
      puts "hello from B"
    end
  end

  # ------ A,C,B ----

  class C
    include A
    prepend B

    def hello
      super if defined?(super)
      puts "hello from C"
    end
  end



  # ------ A,B,C ----

  # class C
  #   include A
  #   include B

  #   def hello
  #     super if defined?(super)
  #     puts "hello from C"
  #   end
  # end



  # ------ B,A,C ----
  
  # class C
  #   include B
  #   include A

  #   def hello
  #     super if defined?(super)
  #     puts "hello from C"
  #   end
  # end



  # ------ C,B,A ----

  # class C
  #   prepend B
  #   prepend A

  #   def hello
  #     super if defined?(super)
  #     puts "hello from C"
  #   end
  # end



  # ------ C,A,B ----

  # class C
  #   prepend A
  #   prepend B

  #   def hello
  #     super if defined?(super)
  #     puts "hello from C"
  #   end
  # end

c = C.new
c.hello
puts c.class.ancestors