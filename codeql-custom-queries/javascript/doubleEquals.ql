/**
 * @id js/double-equals-usage
 * @name Double Equals Usage
 * @description Finds all usages of the double equals operator.
 * @kind problem
 * @problem.severity warning
 */

 import javascript

 from EqualityTest eqTest
 where eqTest.getOperator() = "="
 select eqTest, "This is a usage of the double equals operator."