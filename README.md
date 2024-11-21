<h1 align="center"> 
  AjiFuzzing = Nuclei + Paramspider
  <br>
</h1>

<p align="center">
<a href="https://github.com/mas4ji/AjiFuzzing/issues"><img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat"></a>
</p>

`NucleiFuzzer` is an automation tool that combines `ParamSpider` and `Nuclei` to enhance web application security testing. It uses `ParamSpider` to identify potential entry points and `Nuclei` fuzzing templates to scan for vulnerabilities. `NucleiFuzzer` streamlines the process, making it easier for security professionals and web developers to detect and address security risks efficiently. Download `NucleiFuzzer` to protect your web applications from vulnerabilities and attacks.

**Note:** `Nuclei` + `Paramspider` = `NucleiFuzzer` <br><br>
**Important:** Make sure the tools `Nuclei`, `httpx` & `Paramspider` are installed on your machine and executing correctly to use the `NucleiFuzzer` without any issues.

### Tools included:
[ParamSpider](https://github.com/0xKayala/ParamSpider) `git clone https://github.com/0xKayala/ParamSpider.git`<br><br>
[Nuclei](https://github.com/projectdiscovery/nuclei) `git clone https://github.com/projectdiscovery/nuclei.git`

### Templates:
[Fuzzing Templates](https://github.com/mas4ji/fuzzing-templates)

## Screenshot
![image](https://github.com/0xKayala/NucleiFuzzer/assets/16838353/d29d18e2-e5b4-4f5f-b1fd-351167fa7c31)


## Usage

```sh
aji -h
```

This will display help for the tool. Here are the options it supports.

```console
AjiFuzzing is a Powerful Automation tool for detecting XSS, SQLi, SSRF, Open-Redirect, etc. vulnerabilities in Web Applications

Usage: /usr/bin/nf [options]

Options:
  -h, --help              Display help information
  -d, --domain <domain>   Domain to scan for XSS, SQLi, SSRF, Open-Redirect..etc vulnerabilities
  -f, --file <filename>   File containing multiple domains/URLs to scan
```  

## Installation:

To install `NucleiFuzzer`, follow these steps:

```
git clone https://github.com/mas4ji/AjiFuzzing.git && cd NucleiFuzzer && sudo chmod +x install.sh && ./install.sh && nf -h && cd ..
```

## Examples:

Here are a few examples of how to use NucleiFuzzer:

- Run `NucleiFuzzer` on a single domain:

  ```sh
  nf -d example.com
  ```

- Run `NucleiFuzzer` on multiple domains from a file:

  ```sh
  nf -f file.txt
  ```

## Practical Demonstration:

For a Practical Demonstration of the NucleiFuzzer tool see the below video 👇 <br>

[<img src="https://img.youtube.com/vi/2K2gTCHt6kg/hqdefault.jpg" width="600" height="300"/>](https://www.youtube.com/embed/2K2gTCHt6kg)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=0xKayala/NucleiFuzzer&type=Date)](https://star-history.com/#0xKayala/NucleiFuzzer&Date)

## Contributing

Contributions are welcome! If you'd like to contribute to `NucleiFuzzer`, please follow these steps:

1. Fork the repository.
2. Create a new branch.
3. Make your changes and commit them.
4. Submit a pull request.

Made by
`Satya Prakash` | `0xKayala` \

A `Security Researcher` and `Bug Hunter` \

## Connect with me:
<p align="left">
<a href="https://linkedin.com/in/mas4ji" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-
</p>

## Support me:
<p><a href="https://www.buymeacoffee.com/mas4ji"> <img align="left" src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="50" width="210" alt="0xKayala" /></a></p><br><br>
