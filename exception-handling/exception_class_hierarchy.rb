# ! Dalam Ruby, semua tipe exception merupakan turunan dari class Exception.
# ! Class Exception itu sendiri merupakan turunan dari class Object.
# ! Berikut ini merupakan exception standar yang disediakan oleh Ruby:
=begin
  * NoMemoryError
  * ScriptError
    * LoadError
    * NotImplementedError
    * SyntaxError
  * SecurityError
  * SignalException
    * Interrupt
  * StandardError -- default for rescue
    * ArgumentError
      * UncaughtThrowError
    * EncodingError
    * FiberError
    * IOError
      * EOFError
    * IndexError
      * KeyError
      * StopIteration
    * LocalJumpError
    * NameError
      * NoMethodError
    * RangeError
      * FloatDomainError
    * RegexError
    * RuntimeError -- default for raise
      * FrozenError
    * SystemCallError
      * Errno::*
    * ThreadError
    * TypeError
    * ZeroDivisionError
  * SystemExit
  * SystemStackError
  * fatal -- impossible to rescue
=end

# ! Masing-masing exception diatas merepresentasikan tipe kesalahan yang berbeda dan dipicu oleh kejadian yang berbeda juga.

# contoh program
puts a # NameError
puts 1 / 0 # ZeroDivisionError
