So here's my original (dumb) sketch of a process for finding, mainly by random chance, ["dissectable prime numbers"](http://vaguery.com/words/dissectable-numbers).

1. run `div3.rb`, and it will poop out a Ruby `Array` of digits which satisfy the property that they don't add up to a multiple of three, and no subset missing a single item does either. That's literally the only criterion here.
2. copy that text and _paste it into the code_ of `primes.rb`, in the obvious blob of array; edit to fix syntax, since I was lazy.
3. run the new `primes.rb` and it will consider each set of digits you pasted in; in each step it will look for a dissectable prime among every possible permutation of the given digits, avoiding any that are shorter (starting with zeroes). If no winner is found, the counter is printed; if a winner is found, it's printed.

As a facepalm, I later wrote `primes2.rb`, which uses the Ruby `Prime` library and just looks through the functionally-defined sequence of prime numbers until it finds 50 dissectable ones. Be careful if you try to change that limit (50), because the numbers are much _much_ scarcer as you go up in length of primes, and so it will sit there cranking along with no feedback for a Long Time if you try, say, the first 100 of them. 
