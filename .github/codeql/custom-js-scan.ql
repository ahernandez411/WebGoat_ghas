import javascript

// Predicate for eval usages
predicate isEvalCall(CallExpr call) {
  call.getCalleeName() = "eval"
}

// Predicate for duplicate hard-coded strings in a file
predicate isDuplicateString(StringLiteral s) {
  exists(StringLiteral other |
    other.getFile() = s.getFile() and
    other != s and
    other.getValue() = s.getValue()
  )
}

// Predicate for the string "hello world"
predicate isHelloWorldString(StringLiteral s) {
  s.getValue() = "hello world"
}

// Main query
from Expr e
where (e instanceof CallExpr and isEvalCall(e)) or
      (e instanceof StringLiteral and isDuplicateString(e)) or
      (e instanceof StringLiteral and isHelloWorldString(e))
select e, "Potential issue found."