## Array of object sorting
```bash
const array = [
    { name: 'Event 1', date: new Date('2023-01-15') },
    { name: 'Event 2', date: new Date('2022-12-20') },
    { name: 'Event 3', date: new Date('2023-03-05') }
];
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
var a = ['', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ',
 'ten ', 'eleven ', 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ',
 'eighteen ', 'nineteen '];
var b = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];
function fromNumberToWords(num: any) {
    if (!num) return;
    if ((num = num.toString()).length > 9) return 'overflow';
    let n: any = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
    if (!n) return; let str = '';
    str +== (n[1] !== 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
    str +== (n[2] !== 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
    str +== (n[3] !== 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]])
    + 'thousand ' : '';
    str +== (n[4] !== 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]])
     + 'hundred ' : '';
    str +== (n[5] !== 0) ? ((str !== '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' '
     + a[n[5][1]]) : '';
    return str;
}
```

## Convert any text into capitalized mode
```bash
const capitalizeText = (text) => {
    return text.toLowerCase()
    .replace(/(^|\s)\w/g, c => c.toUpperCase());
};

console.log(capitalizeText('learn to rest, not to quit'));

/**
 * 
 * Output: Learn To Rest, Not To Quit
 * 
 */
```

## Form validation
1. validateEmail
```bash
const validateEmail = (value) => {
    if (!value) return "This field must not be empty.";

    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!regex.test(value)) {
        return "Invalid email";
    }

    return "Valid email";
};
```

2. validatePassword
```bash
const validatePassword = (password) => {
    if (!password) return "This field must not be empty.";

    const regex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+[\]{};':"\\|,.<>/?]).{8,}$/;
    if (!regex.test(password)) {
        return "Password must contain at least 8 characters, including at least one uppercase letter, one lowercase letter, one number, and one symbol.";
    }

    return "Valid password";
}
```

3. validateMobileNumber
```bash
const validateMobileNumber = (value) => {
    if (!value) return "This field must not be empty.";

    const regex = /^\d{10}$/;
    if (!regex.test(value)) {
        return "Invalid mobile number";
    }

    return "Valid mobile number";
};
```

4. Truncate Description
```bash
const getTruncateDescription = (description, maxLength) => {
    if (description.length <= maxLength) {
        return description;
    }

    const truncated = description.substring(0, maxLength - 3);
    return truncated + '...';
}

let truncateDescription = getTruncateDescription(`Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat.`, 100);

console.log(truncateDescription);

/**
 * 
 * Output:
 * 
 * Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus torto...
 * 
 */
```
5. Manage Client-Side Data (localStorage)
```bash
// Set data in localStorage
function setLocalStorage(key, data) {
    try {
      localStorage.setItem(key, JSON.stringify(data));
      return true; // Data successfully stored
    } catch (error) {
      console.error(`Error setting data in localStorage for key "${key}":`, error);
      return false; // Error occurred while storing data
    }
  }
  
  // Get data from localStorage
  function getLocalStorage(key) {
    try {
      const storedData = localStorage.getItem(key);
      return storedData ? JSON.parse(storedData) : null;
    } catch (error) {
      console.error(`Error retrieving data from localStorage for key "${key}":`, error);
      return null; // Error occurred while retrieving data
    }
  }
  
  // Remove data from localStorage
  function removeLocalStorage(key) {
    try {
      localStorage.removeItem(key);
      return true; // Data successfully removed
    } catch (error) {
      console.error(`Error removing data from localStorage for key "${key}":`, error);
      return false; // Error occurred while removing data
    }
  }
  
  // Clear all data in localStorage
  function clearLocalStorage() {
    try {
      localStorage.clear();
      return true; // localStorage cleared successfully
    } catch (error) {
      console.error("Error clearing localStorage:", error);
      return false; // Error occurred while clearing localStorage
    }
  }
```

6. Personalize User Greetings
```bash
const getGreeting = () => {

    const greetings = {
        morning: "Good morning!",
        afternoon: "Good afternoon!",
        evening: "Good evening!",
    };

    const currentHour = new Date().getHours();

    if (currentHour >= 5 && currentHour < 12)
        return greetings.morning;
    else
        if (currentHour >= 12 && currentHour < 17)
            return greetings.afternoon;
        else
            return greetings.evening;

}

console.log(getGreeting());

/**
 * 
 * Output varies based on the time of day
 * 
 */
```






















