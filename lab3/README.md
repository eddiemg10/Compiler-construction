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

The following shows the expected First and Follow table for the grammar and the results respectively. As can be seen, the generated table matches the true result

![image](https://github.com/eddiemg10/Compiler-construction/assets/59659920/aba1e7d7-ae2e-4bda-a26a-3192d8d08568)

![image](https://github.com/eddiemg10/Compiler-construction/assets/59659920/7caf44fa-5940-47ae-bf1b-1360ee28933d)


#### Expected LL(1) Parsing table

The following shows the expected parsing table for the grammar and the results respectively. As can be seen, the generated table matches the true result

![image](https://github.com/eddiemg10/Compiler-construction/assets/59659920/0f5b39d7-039e-4e93-93e1-5983c23acfd9)


![image](https://github.com/eddiemg10/Compiler-construction/assets/59659920/05401020-55e7-4774-ac7a-916f48c47f87)

