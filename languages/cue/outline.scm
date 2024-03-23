(package_clause
  ("package" @context)
  (package_identifier) @name) @item

((attribute) @name) @item

; Single import
(import_declaration
  ("import" @context)
  (import_spec) @name) @item

; List import
(import_declaration
  ("import" @context)
  (import_spec_list)) @item

; Each import in a list
(["(" ","]
 .
 (import_spec) @name) @item

; Struct literals
(((identifier) @name)
  "="
  (struct_lit)) @item

; Module level fields and struct fields
(field
  (label
    [
      (identifier)
      (string)
    ] @name)) @item
