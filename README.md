# ΑΡΧΙΤΕΚΤΟΝΙΚΗ ΠΡΟΗΓΜΕΝΩΝ ΥΠΟΛΟΓΙΣΤΩΝ
##  ΕΡΓΑΣΤΗΡΙΟ 2o


[![N|Solid](https://www.gem5.org/assets/img/gem5ColorLong.gif)](https://www.gem5.org/assets/img/gem5ColorLong.gif)

### Βήμα 1ο
##### Ερώτημα 1ο 
Στοιχεία για τον επεξεργαστή όπου προσωμειώνει ο gem5 μπορούμε να βρούμε στο αρχείο **_starter.py_** και πιο συγκεκριμένα από τον φάκελο common και το αρχείο **_options.py_**.
Παρακάτω παρατίθενται τα μεγέθη των caches :
 * L1 instruction : _("-- l1i_size", type="string", default=**"32kB"**)_
 * L1 Data : _("-- l1d_size", type="string", default=**"64kB"**)_ 
 * L2 cache : _("-- l2_size", type="string", default=**"2MB"**)_

Tο associativity κάθε μίας από αυτές:
* L1 instruction : _("-- l1i_assoc", type="int", default=**2**)_ 
* L1 Data : _("-- l1d_assoc", type="int", default=**2**)_
* L2 cache : _("-- l2_assoc", type="int", default=**8**)_

Και το μέγεθος της cache line : _("-- cacheline_size", type="int", default=**64**)_

##### Ερώτημα 2ο
Για κάθε ένα από τα παρακάτω benchmarks παρατηρούμε τα εξής:
*  _**specbzip**_ :
      * χρόνος εκτέλεσης : **0.083718** seconds
      * CPI (cycles per instruction) : **1.674353**
      * συνολικά miss rates : 
          * L1 instruction : **0.000077**
          * L1 Data : **0.014248**
          * L2 cache : **0.295243**

*  _**spechmmer**_ :
      * χρόνος εκτέλεσης : **0.059390** seconds
      * CPI (cycles per instruction) : **1.187803**
      * συνολικά miss rates : 
          * L1 instruction : **0.000212**
          * L1 Data : **0.001628**
          * L2 cache : **0.078296**

*  _**speclibm**_ :
      * χρόνος εκτέλεσης : **0.174771** seconds
      * CPI (cycles per instruction) : **3.495428**
      * συνολικά miss rates : 
          * L1 instruction : **0.000093**
          * L1 Data : **0.060972**
          * L2 cache : **0.999944**
*  _**specmcf**_ :
      * χρόνος εκτέλεσης :  **0.064937** seconds
      * CPI (cycles per instruction) : **1.298734**
      * συνολικά miss rates : 
          * L1 instruction : **0.023610**
          * L1 Data : **0.002079**
          * L2 cache : **0.055082**
*  _**specsjeng**_ :
      * χρόνος εκτέλεσης : **0.51381** seconds
      * CPI (cycles per instruction) : **10.276223**
      * συνολικά miss rates : 
          * L1 instruction : **0.000020**
          * L1 Data : **0.121831**
          * L2 cache : **0.999972**

-----------------------------------------------------------------------------------
                                        Χρόνος εκτέλεσης  
[![N|Solid](https://raw.githubusercontent.com/cmousikos/comp_arch_lab2/main/Graphs/Times.png)](https://raw.githubusercontent.com/cmousikos/comp_arch_lab2/main/Graphs/Times.png)

                                  CPI (Cycles per instruction) 
[![N|Solid](https://raw.githubusercontent.com/cmousikos/comp_arch_lab2/main/Graphs/CPI.png)](https://raw.githubusercontent.com/cmousikos/comp_arch_lab2/main/Graphs/CPI.png)

                                L1 instruction cache miss rate

[![N|Solid](https://raw.githubusercontent.com/cmousikos/comp_arch_lab2/main/Graphs/L1_instructions.png)](https://raw.githubusercontent.com/cmousikos/comp_arch_lab2/main/Graphs/L1_instructions.png)

                                   L1 data cache miss rate

[![N|Solid](https://raw.githubusercontent.com/cmousikos/comp_arch_lab2/main/Graphs/L1_Data.png)](https://raw.githubusercontent.com/cmousikos/comp_arch_lab2/main/Graphs/L1_Data.png)

                                        L2 cache miss rate
[![N|Solid](https://raw.githubusercontent.com/cmousikos/comp_arch_lab2/main/Graphs/L2_Cache.png)](https://raw.githubusercontent.com/cmousikos/comp_arch_lab2/main/Graphs/L2_Cache.png)

--------------------------------------------

Από τα γραφήματα παρατηρούμε ότι το **specsjeng** είναι το πιο *αργό* benchmark και έχει και τα  
μεγαλύτερα cache miss rates στις L2,L1 data, ενώ το μικρότερο σε L1 instruction. Ωστόσο το μεγαλύτερο  L1 instruction miss rate παρατηρείται στο **specmcf**. Επιπλέον μπορούμε να συμπαιράνουμε ότι όσο  μεγαλύτερο χρόνο εκτέλεσης έχει το benchmark, ανάλογα είναι και τα CPI,L1 Data και L2 cache miss rates, ενώ το L1 instruction miss rate είναι ανεξάρτητο.

##### Ερώτημα 3ο

Από τα αρχεία stats.txt των benchmarks παρατηρούμε ότι το system_clock παραμένει στο _**1GHz**_, ενώ το cpu_clock είναι αυτό που αλλάζει. Από το αρχείο config.json προκύπτει ο ίδιο συμπέρασμα, και αυτό συμβαίνει διότι αυτό που μας ενδιαφέρει να ρυθμίσουμε είναι το cpu_clock καθώς εκεί εκτελούντε τα instructions και γενικότερα το πρόγραμμα. Αν προσθέσουμε έναν ακόμα επεξεργαστή η συχνότητα του θα είναι _**2GHz**_.

Οι χρόνοι εκτέλεσης φαίνονται στον παρακάτω πίνακα :

| benchmarks          | 1GHz | 2GHz |
|-----------|------|------|
| specbzip  |  0.1604    |  0.0837 |
| spechmmer |   0.1185   |  0.0593 |
| speclibm  |   0.2622   |  0.1747 |
| spemcf    |   0.1278  |  0.0649 |
| specsjeng |   0.7054   |  0.5138 |

Παρατηρούμε ότι στα **specbzip, spechmmer, spemcf** είναι σχεδόν 2 φορές πιο γρήγορο όταν 2πλασιάζουμε την συχνότητα. Ωστόσο στα **speclibm, specsjeng,** η αναλογία δεν είναι η ίδια. Επίσης σε αυτά τα δύο παρατηρούμε τα μεγαλύτερα L1 Data, L2 cache miss rates. Οπότε παρατηρούμε ότι το μεγάλο miss rate στις caches επηρεάζει και επιβραδύνει πολύ το πρόγραμμα, ανεξαρτήτως αν αυξήσουμε την συχνότητα, το όφελος είναι μικρό.





