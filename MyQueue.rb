require 'forwardable'

class MyQueue
  extend Forwardable

  def initialize
    @q = []
  end

  def_delegator :@q, :push, :enq
  def_delegator :@q, :shift, :deq

  def_delegators :@q, :clear, :first, :push, :shift, :size
end

q = MyQueue.new

q.enq 1, 2, 3, 4, 5

puts q.deq

while q.size > 0
  puts q.deq
end

q.enq "Ruby", "Perl", "Python"
puts q.first

# クリアしたらnilになる確認
q.clear
puts q.first

# インスタンスメソッド一覧を取得したい
puts MyQueue.instance_methods(false)