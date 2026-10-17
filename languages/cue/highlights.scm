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
  "else"
  "otherwise"
  "fallback"
  "for"
  "in"
  "let"
  "try"
  "func"
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
  "~"
  "->"
] @operator

; Variables, which the more specific patterns below override, since a
; later pattern takes precedence

(identifier) @variable

((identifier) @variable.special
  (#any-of? @variable.special "self" "__self"))

((identifier) @function
  (#any-of? @function
    "len" "close" "and" "or" "div" "mod" "quo" "rem" "matchN" "matchIf" "error"))

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

(spread_expression "..." @operator)

(list_lit "#" @punctuation.special)

(struct_lit "#" @punctuation.special)

(unary_expression
  ("*"
   (_))) @keyword

; Interpolations

(interpolation "\\(" @punctuation.special (_) ")" @punctuation.special) @none

(interpolation "\\(" (identifier) @variable ")")

; Comments

(comment) @comment
