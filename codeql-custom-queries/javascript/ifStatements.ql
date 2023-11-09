/**
 * @id js/if-statements
 * @name If Statements
 * @description Finds all the if statements
 * @kind problem
 * @problem.severity warning
 */

import javascript

// Find all if statements
// https://codeql.github.com/docs/writing-codeql-queries/metadata-for-codeql-queries/
from IfStmt ifstmt
select ifstmt, "This is an if statement."