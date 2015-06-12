## 0.6.1

* Bug fix of error message on omit signum argument.

phenomenon:

```
$ death 16499 # omit signum...
> sh: line 0: death: `': not a pid or valid job spec
```

## 0.6.0

* Patched for unsecured code (command line injection)
* Sound pressure based on number of CPU cores. Special thanks to @chibamem (sound engineer).
