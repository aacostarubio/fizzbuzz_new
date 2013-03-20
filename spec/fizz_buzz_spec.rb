class FizzBuzz
	def self.play(range)
			zzeer = lambda {|x,n,w| (x%n == 0) ? w : x }
			range.map { |x| zzeer.call(zzeer.call(zzeer.call(x,15,"fizzbuzz"),3,"fizz"),5,"buzz")}
  end
end



describe FizzBuzz do
  it "fizz" do
    FizzBuzz.play(1..3).should == [1,2,"fizz"]  	  	
  end

  it "works for 1" do
    FizzBuzz.play(1..1).should == [1]
   end

   it "works for buzz" do
   	FizzBuzz.play(1..5).should == [1,2,"fizz",4,"buzz"]
   end

   it "works for fizzbuzz" do
   	FizzBuzz.play(1..15).should == [1,2,"fizz",4,"buzz","fizz",7,8,
   		"fizz","buzz",11,"fizz",13,14,"fizzbuzz"]
   	
   end

end

