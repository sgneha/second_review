Digital audio
Band pass filter for tracks that changes how track sounds.

Arrays of frequencies which are int.
lower_threshold
highest_threshold

```
Input                                       Output
[10],40,1000                           |    [40]
[1500],40,1000                         |     [1000]
[40,1000],40,1000                      |      [40,1000]
[10,45,100,1001],40,1000               |[40,45,100,1000]
[]                                     | raise error
```
