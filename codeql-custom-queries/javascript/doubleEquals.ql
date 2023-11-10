/**
 * @id js/double-equals
 * @name Double Equals Usages
 * @description Finds all usages of the double equals operator.
 * @kind problem
 * @problem.severity warning
 */

 import javascript

 from EqualityTest eq
 where eq.getOperator() = "=="
 select eq, "This is a usage of the double equals operator."