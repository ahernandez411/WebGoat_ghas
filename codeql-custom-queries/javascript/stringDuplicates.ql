/**
 * @id js/find-duplicate-strings
 * @name Find duplicate strings
 * @description Finds strings that are used more than once in a file.
 * @kind problem
 * @problem.severity warning
 */

 import javascript

 from StringLiteral str, File f, int count
 where str.getFile() = f and
       str.getValue() = str.getValue() and
       count = count(StringLiteral s | s.getFile() = f and s.getValue() = str.getValue())
 select str, "This string is used " + count.toString() + " times in this file."