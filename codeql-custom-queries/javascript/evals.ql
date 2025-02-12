/**
 * @id js/evals
 * @name Evals
 * @description Finds all usages of the eval function.
 * @kind problem
 * @problem.severity warning
 */

 import javascript

 from CallExpr call
 where call.getCalleeName() = "eval"
 select call, "This is a usage of the eval function."