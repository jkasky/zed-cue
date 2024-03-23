@type(test)
package foo

import "bar"

import (
    "list",
    "math",
    "foo/bar:baz"
)

import (
    m "math",
    "foo/bar:yay",
)

import m "math"

// Identifiers
StructLiteral = {}

#TypeA = {
    typeAField: int @go(Field)
}

_#TypeB = {}

// Keyword Values
KeywordValues: [
  null,
  true,
  false,
]

// Literals
Literals: [
    1,
    2.0,
    1.5G,
    170_141,
    0b1010,
    0o755,
    0xaf0,
    2.3E-3,
    1E6,
    1e+2
]

StringEscapeLiterals: [
    "Hello, World!",
    "Hello, \"World!\"",
    "Hello, \nWorld!",
    "Hello, \rWorld!",
    "Hello, \tWorld!",
    "Hello, \bWorld!",
    "Hello, \fWorld!",
    "Hello, \vWorld!",
    "Hello, \aWorld!",
    //"Hello, \x41World!", - ERROR in tree sitter
    //"Hello, \051World!"  - ERROR in tree sitter
    "Hello, \u0041World!",
    "Hello, \U00000041World!",
]

StringInterpolation: "Hello, \(1)!"

MultiLineString: """
 Hello,
    World!
"""

// Functions: (call_expression (builtin_function))
BuiltinFunctions: [
    and([true, true]),
    close(),
    div(1, 1)
    len(""),
    mod(1, 1)
    or([0, 0]),
    quo(1, 1),
    rem(1, 1),
]

Unification: a & b & _

Disjunction: a | b | *c | _|_

Bounds: a & >=2

FieldConstraints: {
    required!: int,
    optional?: float,
}

DynamicFields: {
    (a): int,
    [=~"^i"]: int
    [=~"^b"]: bool
    [>"c"]:   string

    ...string
}

Attributes: {
    field: string @go(Field)
    attr:  int    @xml(,attr) @go(Attr)
}

Aliases: {
    X=a: int
    b: Y=c & string
}

Scopes: {
    _not_visible: 0
    _#NotVisible: "private"
}

// let expressions cause crash when syntax tree is open
// let x = 1

References: {
    selector: a.foo
    call: math.Sin(1)
    index: l[0]
}

ComprehensionA: [for x in a if x > 1 { x+1 }]  // [3, 4, 5]

ComprehensionB: {
    for x in a
    if x < 4
    let y = 1 {
        "\(x)": x + y
    }
}

a: {
    b: 2
    "c-e": 5
}
v: a.b
w: a["c-e"]
