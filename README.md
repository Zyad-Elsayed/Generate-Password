# Password Mutation Generator

A PowerShell script designed to generate common password variations by applying specific mutations to base words. These base words include months, seasons, and commonly used terms such as "Welcome" and "Password." The script creates combinations with special characters, full years, short years, and other mutations, which can be useful for security audits and password policy assessments.

## Table of Contents
- [Overview](#overview)
- [Script Details](#script-details)
- [Usage](#usage)
- [Output Examples](#output-examples)
- [Customization](#customization)


## Overview

The goal of this script is to generate a wide range of password mutations that users might commonly create. This includes combinations like `Spring@2024`, `December!21`, and many others.

## Script Details

### Base Words
The script uses a set of predefined base words that are commonly found in user-generated passwords:
- **Seasons:** Spring, Fall, Winter, Summer
- **Months:** January, February, March, April, May, June, July, August, September, October, November, December
- **Common Words:** Welcome, Password

### Years
The script generates passwords using:
- **Full Years:** 2021, 2022, 2023, 2024
- **Short Years:** 21, 22, 23, 24

### Special Characters
A selection of special characters is used in the password mutations:
- `@`, `!`, `#`, `$`, `%`, `&`

## Usage

To use the script, simply clone the repository and execute the PowerShell script. By default, the script will output the password mutations to the console and save them to a file. You can specify the filename and use the -File parameter to save the output only to the file without printing it to the console.


1. **Default Behavior:**
   ```powershell
   .\Generate-Password.ps1
   ```
   *This will generate the password list, print it to the console, and save it to the default file (`password_list.txt`).*

2. **Save Only to File:**
   ```powershell
   .\Generate-Password.ps1 -File
   ```
   *This will generate the password list and save it only to the default file (`password_list.txt`), without printing it to the console.*

3. **Save to a Specific File:**
   ```powershell
   .\Generate-Password.ps1 -OutputFile Passwords.txt
   ```
   *This will generate the password list, print it to the console, and save it to `Passwords.txt`.*

4. **Save Only to a Specific File:**
   ```powershell
   .\Generate-Password.ps1 -File -OutputFile Passwords.txt
   ```
   *This will generate the password list and save it only to `Passwords.txt`, without printing it to the console.*

## Output Examples

Running the script will generate a variety of password mutations, including:

- `Spring@2024`
- `Spring2024@`
- `Spring@21`
- `Spring21@`
- `Winter$23`
- `March@`
- `December!2023`
- `Password@`
- `Welcome@2022`
- `Fall23#`

## Customization

The script can be customized to generate more specific password variations:

- **Numeric Variations:** Add numbers at different positions, such as `Spring1@2024`, `2Fall@21`.
- **Different Separators:** Use hyphens (`-`), underscores (`_`), or dots (`.`) to separate elements.
- **Case Variations:** Include both uppercase and lowercase variations, such as `spring@21`, `SPRING@2024`.


