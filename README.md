# Computer-Aided-Design-for-VLSI-Design_My-CKT

> Author : Ya Chen <br>
> Date : 2020 / 11 / 13

---

<br>

# Description

Consider a system consisting of 4 input ports and 1 output port as shown below.<br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<img src = "https://i.imgur.com/Z9MTOeT.png" width = "200">

In the system, the 4
input ports are denoted by A, B , C and S , respectively. Let
A = { A<sub>3</sub> , A<sub>2</sub> , A<sub>1</sub> , A<sub>0</sub> }, B = { B<sub>3</sub> , B<sub>2</sub> , B<sub>1</sub> , B<sub>0</sub> }, C = { C<sub>3</sub> , C<sub>2</sub> , C<sub>1</sub> , C<sub>0</sub> }, and S = { S<sub>1</sub> , S<sub>0</sub> }. The output port is denoted by Y = { Y<sub>3</sub> , Y<sub>2</sub> , Y<sub>1</sub> , Y<sub>0</sub> }. The input port S determines the mode
of the operation s . There are 4 modes in the system. The following table shows the operations of each mode.<br>

<table bold = "1">
    <tr>
        <td>Mode</td>
        <td>Operation</td>
    </tr>
    <tr>
        <td>Mode 1 ( S = { S<sub>1</sub> , S<sub>0</sub> } = { 0, 0 } )</td>
        <td>Y<sub>i</sub> = A<sub>i</sub> OR B<sub>i</sub> , i = 3 , 2 , 1 , 0</td>
    </tr>
    <tr>
        <td>Mode 2 ( S = { S<sub>1</sub> , S<sub>0</sub> } = { 0, 1 } )</td>
        <td>Y = max { A , B , C }</td>
    </tr>
    <tr>
        <td>Mode 3 ( S = { S<sub>1</sub> , S<sub>0</sub> } = { 1, 0 } )</td>
        <td>Y = A * B</td>
    </tr>
    <tr>
        <td>Mode 4 ( S = { S<sub>1</sub> , S<sub>0</sub> } = { 1, 1 } )</td>
        <td>Y = A + C</td>
    </tr>

</table>
<br>
For modes 2, 3 and 4, inputs A, B, and C are treated as unsign ed integers.<br>
<br>
Write a VHDL code to implement the system using <b>Quartus II</b>. Your project report should include the following items

1. the Quartus II project file containing the VHDL code of the system
2. the word files containing the simulation r esults and t he corresponding discus sions
