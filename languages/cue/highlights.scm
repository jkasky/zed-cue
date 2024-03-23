; Literals

(string) @string

[
  (escape_char)
  (escape_unicode)
] @string.escape

[
  (float)
  (number)
  (si_unit)
] @number

(boolean) @boolean

[
  (null)
  (top)
  (bottom)
] @constant.builtin

; Includes

[
  (package_clause "package")
  (import_declaration "import")
] @keyword

; Namespaces

(package_identifier) @label

(import_spec ["." "_"] @punctuation.special)

; Attributes

(attribute) @attribute

; Keywords

[
  "if"
  "for"
  "in"
  "let"
] @keyword

; Operators

[
  "+"
  "-"
  "*"
  "/"
  "||"
  "&&"
  "=="
  "!="
  "<"
  "<="
  ">"
  ">="
  "=~"
  "!~"
  "!"
  "="
] @operator

; Fields & Properties

(field
  (label
    [
      (identifier)
      (string)
    ] @property))

(selector_expression
  (_)
  (identifier) @property)

; Functions

(call_expression
  (identifier) @function)

(call_expression
  (selector_expression
  (_)
  (identifier) @function))

(call_expression
  (builtin_function) @function)

(builtin_function) @function

; Variables

(identifier) @variable

; Types

(primitive_type) @type

((identifier) @type
  (#match? @type "^(#|_#)"))

[
  (slice_type)
  (pointer_type)
] @type ;; In attributes

; Punctuation

[
  ","
  ":"
] @punctuation.delimiter

[
  "{" "}"
  "[" "]"
  "(" ")"
  "<" ">"
] @punctuation.bracket

[
  (ellipsis)
  "?"
  "!"
  "&"
  "|"
] @punctuation.special

(unary_expression
  ("*"
   (_))) @keyword

; Interpolations

(interpolation "\\(" @punctuation.special (_) ")" @punctuation.special) @none

(interpolation "\\(" (identifier) @variable ")")

; Comments

(comment) @comment
