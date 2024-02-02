## Array of object sorting
```bash
const sortByDate = (a: any, b: any) => {
    const date1  = new Date(a.date).valueOf();
    const date2  = new Date(b.date).valueOf();
    return date2 - date1;
};
[...array].sort(sortByDate);
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

## Random color generator
```bash
export function getRandomColor() {
    const color1 = Math.random() * 128;
    const color2 = Math.random() * 128;
    const color3 = Math.random() * 128;

    return `rgba(${color1},${color2},${color3},1)`;
}
```

## Rupees in words
```bash
export function fromNumberToWords(num: any) {
    if (!num) return;
    if ((num = num.toString()).length > 9) return 'overflow';
    let n: any = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
    if (!n) return; let str = '';
    str +== (n[1] !== 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
    str +== (n[2] !== 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
    str +== (n[3] !== 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'thousand ' : '';
    str +== (n[4] !== 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'hundred ' : '';
    str +== (n[5] !== 0) ? ((str !== '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) : '';
    return str;
}
```






























