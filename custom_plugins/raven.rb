#Thomas
module Lita
  module Handlers
    class Raven < Handler

      route(/^kraww\s+(.+)/i, :greet, command: true, help: {
        'kraww NAME' => 'krawws NAME'
      })

      def greet(response)
        name = response.matches[0][0]
        
        response.reply("kraww #{name} kraww kraww")
      end
    end

    Lita.register_handler(Raven)
  end
end