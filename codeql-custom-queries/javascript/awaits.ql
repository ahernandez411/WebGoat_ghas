/**
 * @id js/async-await-in-loop
 * @name Find async/await usage in loops
 * @description Finds all instances where async/await is used inside a loop, which can lead to performance issues.
 * @kind problem
 * @problem.severity warning
 */

 import javascript

 from AwaitExpr await, LoopStmt loop
 where await.getEnclosingStmt*() = loop
 select await, "An await expression is used inside a loop."