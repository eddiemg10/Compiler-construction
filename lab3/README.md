# Lab 3

<details>
  <summary>Group Members</summary>

- 134338
- 136047
- 129277
- 135114
- 136809
- 134022
- 135012
- 134469
</details>

---

## Task 3

Notebook has been included with the Python implementation of the task - `construct_LL1_table.ipynb`. The explanation of the task has been included in the notebook.

### Results

The grammar used is shown below.
![image](https://github.com/eddiemg10/Compiler-construction/assets/59659920/f630396b-e05b-4ae6-91a9-60a17a08c564)


However, some modifications were made in the code implementation as follows
| Image | Code |
|-------|------------------------|
| E' | Ē |
| T' | Ť |
| ε | Empty string(`""`) |

#### Expected First and Follow Table

The following shows the expected First and Follow table for the grammar VS the results respectively. As can be seen, the generated table matches the true result

![image](https://github.com/eddiemg10/Compiler-construction/assets/59659920/d6c55262-77f7-4bfb-8a8d-166eb8bbbf3a)

![image](https://github.com/eddiemg10/Compiler-construction/assets/59659920/ec412b95-3ecd-4a48-b19a-ad4fa2ce76a8)

#### Expected LL(1) Parsing table

The following shows the expected parsing table for the grammar VS the results respectively. As can be seen, the generated table matches the true result

![image](https://github.com/eddiemg10/Compiler-construction/assets/59659920/8e98493b-12aa-4185-be4f-edba6af01d6f)

![image](https://github.com/eddiemg10/Compiler-construction/assets/59659920/91f210dd-2def-4d44-89f6-7bcc0acebed4)
