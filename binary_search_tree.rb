class BST

        attr_accessor :data, :left, :right

        def initialize(data)
            self.data = data

        end

        def insert(value)
            if value <= self.data
                if left.nil?
                    self.left = BST.new(value)
                else
                    self.left.insert(value)
                end
            else
                if right.nil?
                    self.right = BST.new(value)
                else
                    self.right.insert(value)
                end
            end

        end

        def each(&block)
            left.each(&block) if left
            block.call(data)
            right.each(&block) if right
          end

end