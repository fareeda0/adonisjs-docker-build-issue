## Description
Occasionally when building a Docker image for Adonis v5 in production, the error `SyntaxError: Unexpected end of JSON input` occurs. 

The error is intermittent, from my testing I looped a Docker build 108 times, and received the error 27 times - giving an affective error rate of 25%. There doesn't seem to be any pattern with the failed builds - just seems to be random. 

I don't think the issue is related to `@adonisjs/assembler` as none of the `stdout` messages that `assembler` should output when building are shown - i.e. it doesn't make it to `assembler` and dies somewhere before. 

## Instructions
1. Clone the repo
2. Make sure you have `Docker` installed and running.
3. cd into the repo folder
4. run `bash runner.sh 10` (this will run the build 10 times)
5. Observe console and output.log file for `SyntaxError: Unexpected end of JSON input` 