# Digital audio

Band pass filter for tracks that changes how track sounds.
Lower threshold should always be lower than highest threshold.

## Input will be:

-Arrays of frequencies which are int.
-lower_threshold
-highest_threshold

```
Input                                       Output
[10],40,1000                           |  [40]
[1500],40,1000                         |  [1000]
[50],40,1000                           |  [50]
[40],40,1000                           |  [40]
[1000],40,1000                         |  [1000]
[50,500]                               |  [50,500]
[40,1000],40,1000                      |  [40,1000]
[10,45,100,1001],40,1000               |  [40,45,100,1000]
[]                                     |  raise error
[45,100],40,30                         |  raise error
```
