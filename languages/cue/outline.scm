(package_clause
  ("package" @context)
  (package_identifier) @name) @item

((attribute) @name) @item

; Single imports
 (import_declaration
   ("import" @context)
   (import_spec) @name) @item

; List imports
(import_declaration
  ("import") @context
  (import_spec_list
    "("
    (import_spec) @name @item))

; Struct literals
(((identifier) @name)
  "="
  (struct_lit)) @item

; Module level fields and struct fields
(field
  (label
    [
      (identifier)
      (optional
        (identifier))
      (string)
    ] @name)) @item
