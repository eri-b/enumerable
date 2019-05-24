# enumerable

Ruby!


###my_each
my_each is a method
(it is in the array class so you can call directly on array)

in the method definition, it inherits the array preceding the call (self),
and then yields to the block that exists when it's called.

the yield passes each element of the inherited array (self) to the block
and the block does something.

finally, the method implicitly returns the last line (self)

returning and putting value
