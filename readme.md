# Test Files Over Time

## About

This is a quick and dirty script for seeing how the number of test files changed over time.  
Obviously more test files doesn't always mean better test coverage. But you might find out some interesting thing about the repo's history. For example, that the repo used to have quite a lot of tests, but they somehow mysteriously disappeared a few years ago 🤔

## How to use

1. copy the file to the repo you want to test
1. `chmod +x run.sh`
1. Wait for a little bit. It can take less than a minute, 20 minut, or even hours. 
1. Use it to create a graph with e.g. Microsoft Excel

### Tips

- The script won't run on Windows in Powershell
- You might want to kill the program before it hits the last commit using <kbd>Ctrl</kbd>+<kbd>C</hbd>
- The programm assumes that test files should be located in the `src` folder. You might want to change the script
- You might want to jump every 5 commit instead of every single one. If so, change this line:
```diff
- while git checkout HEAD~1
+ while git checkout HEAD~5
```