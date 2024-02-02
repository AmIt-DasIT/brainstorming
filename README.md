## Array of object sorting

```bash
function secondsToHms(d: number) {
    d = Number(d);
    var h = Math.floor(d / 3600);
    var m = Math.floor(d % 3600 / 60);
    var s = Math.floor(d % 3600 % 60);

    var hDisplay = h > 0 ? h + (h == 1 ? " hour, " : "h ") : "";
    var mDisplay = m > 0 ? m + (m == 1 ? " minute, " : "m ") : "";
    var sDisplay = s > 0 ? s + (s == 1 ? " second" : "s") : "";

    return hDisplay + mDisplay + sDisplay;
}
```

## Convert second to Hms

```bash
function secondsToHms(d: number) {
    d = Number(d);
    var h = Math.floor(d / 3600);
    var m = Math.floor(d % 3600 / 60);
    var s = Math.floor(d % 3600 % 60);

    var hDisplay = h > 0 ? h + (h == 1 ? " hour, " : "h ") : "";
    var mDisplay = m > 0 ? m + (m == 1 ? " minute, " : "m ") : "";
    var sDisplay = s > 0 ? s + (s == 1 ? " second" : "s") : "";

    return hDisplay + mDisplay + sDisplay;
}
```
