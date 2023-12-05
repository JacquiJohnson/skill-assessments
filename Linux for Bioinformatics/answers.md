# Answers to questions from "Linux for Bioinformatics"

Q1: What is your home directory?
A:  /home/ubuntu

Q2: What is the output of this command?
A: hello_world.txt

Q3: What is the output of each `ls` command?
A: `ls my_folder` is empty and `ls my_folder2` is `hello_world.txt`

Q4: What is the output of each ls command?
A: `ls my_folder` and `ls my_folder2` are empty and `ls my_folder3` is `hello_world.txt`

Q5: What editor did you use and what was the command to save your file changes?
A: I used nano to edit the file. To save the file changes I used  `ctrl` + `o` and to exit `ctrl` + `x`

Q6: What is the error?
A: The error was: Permission denied (publickey).

Q7: What is the solution?
The solution was to add a .ssh folder with a file containing authorized keys. A new key pair was generated for this user and the public key information was added to this file and the private key was used when logging in.

Q8. what does the `sudo docker run` part of the command do? and what does the `salmon swim` part of the command do?
A: The `sudo docker run` part of the command uses sudo access to connect to the Docker daemon and create and run a container from an image.  `salmon swim` performs a "super-secret operation."

Q9: What is the output of this command?
A: Upon entering the password the output is `serveruser is not in the sudoers file.  This incident will be reported.`

Q10: What is the output of flask --version?
A: Python 3.10.10
Flask 2.3.2
Werkzeug 2.3.3

Q11: What is the output of mamba -V?
A: conda 23.1.0

Q12: What is the output of which python?
A: /home/serveruser/mambaforge/envs/py27/bin/python

Q13: What is the output of which python now?
A: /home/serveruser/mambaforge/bin/python


Q14: What is the output of `salmon -h`?
A: salmon v1.4.0

Usage:  salmon -h|--help or 
        salmon -v|--version or 
        salmon -c|--cite or 
        salmon [--no-version-check] <COMMAND> [-h | options]

Commands:
     index      : create a salmon index
     quant      : quantify a sample
     alevin     : single cell analysis
     swim       : perform super-secret operation
     quantmerge : merge multiple quantifications into a single file
     
Q15: What does the -o athal.fa.gz part of the command do? 
A: it redirects the output to a file with this name.

Q16. What is a .gz file?
A: A gz file is a gzip compressed file

Q17. What does the zcat command do?
A: `zcat` is like cat but for gzip files. It shows a printout of the uncompressed file.

Q18. what does the head command do?
A: The `head` command shows the first 10 lines in a file unless another number is specified.

Q19. what does the number 100 signify in the command?
A: 100 signifies the number of lines to be printed.

Q20. What is | doing? -- Hint using | in Linux is called "piping"
A: `|` uses the output from the command on the left hand side as the input for the command on the right hand side.

Q21. What is a .fa file? What is this file format used for?
A: A `.fa` file is a fasta file which contains some kind of sequences. Each sequence has a header which is a line with the symbol `>` followed by some information.

Q22. What format are the downloaded sequencing reads in?
A: The file extension is `.sra`

Q23. What is the total size of the disk?
A: The total size is 7.6G
 
Q24. How much space is remaining on the disk?
A: The remaining space is 2.5G

Q25. What went wrong?
A: There was not enough space. `storage exhausted while writing file within file system module - system bad file descriptor error fd='4'`

Q26: What was your solution? 
A: The solution was to us `--gzip` so the output file would be compressed and we would not run out of space.








