; Keywords

[
     "CHIP"
     "IN"
     "OUT"
     "PARTS"
] @keyword

; Literals

[
 (true)
 (false)
] @boolean

(comment) @comment

(bus_index) @number
(bus_slicing) @number

; Chips

(chip_definition
  name: (identifier) @function)

; Parts

(part
name: (identifier) @method)

; Expressions

(expression
  left: (parameter
          (identifier)) @parameter)
