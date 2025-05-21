| Feature              | **Scalar Function**                                        | **Aggregate Function**                                  |
| -------------------- | ---------------------------------------------------------- | ------------------------------------------------------- |
| **Returns**          | A **single value per row** or based on input               | A **single value for a group of rows** (or whole table) |
| **Used in**          | Can be used in `SELECT`, `WHERE`, etc., on individual rows | Used in `SELECT` with or without `GROUP BY`             |
| **Input**            | Works on individual values                                 | Works on **a set of rows** or values                    |
| **Example Use Case** | Format a name, check if a number is even                   | Count rows, sum salaries, get average price             |
| **Example Function** | `is_even(4)` → `TRUE`                                      | `COUNT(*)`, `SUM(price)`                                |
| **Custom Creation**  | You can define with `CREATE FUNCTION`                      | Can define custom ones but it's more complex            |
