

# MySQL Mathematical Functions - Complete Reference

## 📐 Overview

MySQL Mathematical Functions are built-in operations that perform numerical calculations directly within SQL queries. They enable efficient data transformation, statistical analysis, and complex computations without requiring application-level processing.

---

## 📑 Function Reference Table

```sql
| Function      | Description                          | Syntax                     | Example                  | Result         |
|---------------|--------------------------------------|----------------------------|--------------------------|----------------|
| ABS()         | Returns absolute value              | ABS(number)                | ABS(-10)                | 10             |
| CEIL()        | Rounds up to nearest integer       | CEIL(number)               | CEIL(4.3)               | 5              |
| CEILING()     | Rounds up to nearest integer       | CEILING(number)            | CEILING(4.3)            | 5              |
| FLOOR()       | Rounds down to nearest integer     | FLOOR(number)              | FLOOR(4.7)              | 4              |
| ROUND()       | Rounds to specified decimals       | ROUND(num, decimals)       | ROUND(123.456, 2)       | 123.46         |
| TRUNCATE()    | Truncates decimals (no rounding)   | TRUNCATE(num, decimals)    | TRUNCATE(123.456, 2)    | 123.45         |
| POW()         | Raises to power                    | POW(base, exponent)        | POW(2, 3)               | 8              |
| POWER()       | Raises to power                    | POWER(base, exponent)      | POWER(2, 3)             | 8              |
| SQRT()        | Square root                        | SQRT(number)               | SQRT(16)                | 4              |
| EXP()         | e raised to power                  | EXP(number)                | EXP(1)                  | 2.71828        |
| LOG()         | Natural logarithm                  | LOG(number)                | LOG(10)                 | 2.30259        |
| LOG10()       | Base-10 logarithm                  | LOG10(number)              | LOG10(100)              | 2              |
| LOG2()        | Base-2 logarithm                   | LOG2(number)               | LOG2(8)                 | 3              |
| RAND()        | Random number (0-1)                | RAND() or RAND(seed)       | RAND()                  | 0.123456       |
| SIGN()        | Returns sign (-1,0,1)              | SIGN(number)               | SIGN(-5)                | -1             |
| MOD()         | Remainder of division              | MOD(n, d) or n % d         | MOD(10, 3)              | 1              |
| PI()          | Returns π value                    | PI()                       | PI()                    | 3.141593       |
| RADIANS()     | Degrees to radians                 | RADIANS(degrees)           | RADIANS(180)            | 3.14159        |
| DEGREES()     | Radians to degrees                 | DEGREES(radians)           | DEGREES(PI())           | 180            |
| SIN()         | Sine                               | SIN(radians)               | SIN(PI()/2)             | 1              |
| COS()         | Cosine                             | COS(radians)               | COS(0)                  | 1              |
| TAN()         | Tangent                            | TAN(radians)               | TAN(PI()/4)             | 1              |
| ASIN()        | Arc sine                           | ASIN(number)               | ASIN(1)                 | 1.5708         |
| ACOS()        | Arc cosine                         | ACOS(number)               | ACOS(1)                 | 0              |
| ATAN()        | Arc tangent                        | ATAN(number)               | ATAN(1)                 | 0.7854         |
| COT()         | Cotangent                          | COT(radians)               | COT(PI()/4)             | 1              |
| LEAST()       | Returns smallest value             | LEAST(val1, val2, ...)     | LEAST(5, 3, 8)          | 3              |
| GREATEST()    | Returns largest value              | GREATEST(val1, val2, ...)  | GREATEST(5, 3, 8)       | 8              |
