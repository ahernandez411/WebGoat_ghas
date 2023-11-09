/**
 * @id js/hello-world
 * @name Hello World
 * @description Finds all usages of the string "hello world".
 * @kind problem
 * @problem.severity warning
 */

 import javascript

 from StringLiteral str
 where str.getValue() = "hello world"
 select str, "This is a usage of the string 'hello world'."