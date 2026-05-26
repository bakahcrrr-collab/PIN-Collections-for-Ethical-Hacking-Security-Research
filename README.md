# 🔐 PIN Collections for Ethical Hacking & Security Research

> Educational and authorized security testing purposes only.  
> Use responsibly and only on systems you own or have explicit permission to test.

---

## 📌 About

This repository contains sample PIN format collections for:

- 4 Digit PINs
- 5 Digit PINs
- 6 Digit PINs
- 7 Digit PINs
- 8 Digit PINs
- 9 Digit PINs
- 10 Digit PINs
- 11 Digit PINs
- 12 Digit PINs
- 13 Digit PINs
- 14 Digit PINs
- 15 Digit PINs
- 16 Digit PINs

These datasets are intended for:

- Password strength testing
- Rate-limit testing
- Brute-force defense research
- Authentication security labs
- Capture The Flag (CTF) environments
- Educational cybersecurity practice

---

# ⚠️ Disclaimer

This project is strictly for:

✅ Ethical hacking  
✅ Cybersecurity education  
✅ Authorized penetration testing  
✅ Research purposes  

You are fully responsible for how you use these files.

The author is NOT responsible for:
- Illegal activities
- Unauthorized access
- Abuse of this repository
- Damage caused by misuse

Always follow your local laws and obtain proper authorization.

---

# 📂 File Structure

```bash
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
```

---

# 🛠️ Usage Examples

## Hydra

```bash
hydra -l admin -P 4digit.txt ssh://127.0.0.1
```

## Medusa

```bash
medusa -u admin -P 6digit.txt -h 127.0.0.1 -M ssh
```

## Custom Python Testing

```python
with open("4digit.txt") as f:
    for pin in f:
        print(pin.strip())
```

---

# 📊 PIN Counts

| Digits | Possible Combinations |
|--------|-----------------------|
| 4      | 10,000 |
| 5      | 100,000 |
| 6      | 1,000,000 |
| 7      | 10,000,000 |
| 8      | 100,000,000 |
| 9      | 1,000,000,000 |
| 10     | 10,000,000,000 |
| 11     | 100,000,000,000 |
| 12     | 1,000,000,000,000 |
| 13     | 10,000,000,000,000 |
| 14     | 100,000,000,000,000 |
| 15     | 1,000,000,000,000,000 |
| 16     | 10,000,000,000,000,000 |

---

# 🚀 Features

- Organized PIN collections
- Educational cybersecurity usage
- Ready for testing environments
- Beginner friendly
- Lightweight structure
- Open-source friendly

---

# 🧠 Recommended Use Cases

- Cybersecurity labs
- PIN security analysis
- MFA testing simulations
- Authentication research
- Lockout policy testing
- Security awareness demonstrations

---

# 📜 License

MIT License

Feel free to use, modify, and distribute responsibly.

---

# ⭐ Support

If you found this useful:

- Star the repository
- Fork the project
- Share with security researchers

---

# 🤝 Contributing

Pull requests are welcome.

Ideas:
- Optimized PIN generators
- Randomized datasets
- Compressed datasets
- Rate-limit testing scripts
- Detection bypass simulations (legal labs only)

---

# 🔒 Stay Ethical

> "Hack to protect, not to harm."

Always practice responsible disclosure and ethical security research.
