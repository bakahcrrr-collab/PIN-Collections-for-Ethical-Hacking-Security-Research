


# 🔐 PIN Collections for Ethical Hacking & Security Research

> **Educational and authorized security testing purposes only.**  
> Use responsibly and **only** on systems you own or have explicit written permission to test.

---

## 📌 About

This repository contains comprehensive **numeric PIN collections** (with leading zeros) from 4 to 16 digits. These datasets are designed for legitimate security research and educational purposes.

**Intended for:**
- Password / PIN strength testing
- Brute-force resistance research
- Rate limiting and account lockout testing
- Authentication system evaluation
- Capture The Flag (CTF) challenges
- Cybersecurity education and labs

---

## ⚠️ Disclaimer

This project is strictly for:
✅ Ethical Hacking  
✅ Authorized Penetration Testing  
✅ Cybersecurity Education & Research  

**You are fully responsible** for how you use these files.  
The author is **not responsible** for any illegal activities, unauthorized access, or misuse of this repository.

Always follow your local laws and obtain proper authorization before testing any system.

---

## 📂 File Structure

pins/
├── 4digit.txt
├── 5digit.txt
├── 6digit.txt
├── 7digit.txt
├── 8digit.txt
├── 9digit.txt
├── 10digit.txt
├── 11digit.txt
├── 12digit.txt
├── 13digit.txt
├── 14digit.txt
├── 15digit.txt
└── 16digit.txt


---

## 📊 PIN Counts

| Digits | Possible Combinations      | Approx. File Size |
|--------|---------------------------|-------------------|
| 4      | 10,000                    | Very Small        |
| 5      | 100,000                   | ~1 MB             |
| 6      | 1,000,000                 | ~10 MB            |
| 7      | 10,000,000                | ~100 MB           |
| 8      | 100,000,000               | ~1 GB             |
| 9      | 1,000,000,000             | ~9–11 GB          |
| 10     | 10,000,000,000            | ~90–110 GB        |
| 11+    | 100 Billion and above     | Extremely Large   |

> **Note:** Files 9 digits and above are very large. Download and use them carefully.

---

## 🛠️ Usage Examples

### Hydra
```bash
hydra -l admin -P pins/4digit.txt ssh://target-ip
```

### Medusa
```bash
medusa -u admin -P pins/6digit.txt -h target-ip -M ssh
```

### Python Script
```python
with open("pins/4digit.txt", "r") as f:
    for pin in f:
        pin = pin.strip()
        # Test login with this PIN
```

---

## 🚀 Features

- Full numeric PINs with leading zeros (e.g., `0001`, `0420`)
- Organized by digit length
- Ready-to-use format
- Beginner friendly
- Open source and community driven

---

## 🧠 Recommended Use Cases

- PIN-based authentication testing
- Security awareness training
- MFA / 2FA bypass simulations (authorized only)
- Lockout policy testing
- Academic cybersecurity research
- Red Team exercises (with permission)

---

## 📜 License

This project is licensed under the **MIT License**.  
Feel free to use, modify, and distribute **responsibly**.

---

## ⭐ Support

If this repository helped you, please:
- ⭐ Star the project
- Fork it
- Share with fellow security researchers

---

## 🤝 Contributing

Contributions are welcome! You can help by:

- Creating optimized PIN generators (Python preferred)
- Compressing large files
- Adding alphanumeric or pattern-based PIN lists
- Improving documentation and usage examples

---

## 🔒 Stay Ethical

> **"Hack to protect, not to harm."**

Always practice responsible disclosure and ethical security research.

---

**Made for educational and defensive security purposes.**

---

