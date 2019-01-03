class MyBadQueue < Array
  alias enq push
  alias deq shift
end

q = MyBadQueue.new
q.enq 1,2,3,4,5
q.push 6

q.shift 1
while q.size > 0
  puts q.deq
end

q.enq "Ruby", "Perl", "Python"

q.each do |n|
  puts "Start #{n}"
end
