# Code::Blocks project creator for algorithm contests

I usually use Code::Blocks as my primary IDE when solving algorithm problems on TopCoder, Codeforces, InfoArena or other.

So I wrote a simple bash script which will generate a new project, based on a template and open it.

## Install intructions
1. Put the `default` folder somewhere
2. Modify in `create.sh`, the variables for folders:

```bash
  default_template_location='/home/alex/default_cpp/'
  new_project_location='/home/alex/Desktop/'
```
3. Run the script

```bash
  sh create.sh new_project
```

## Other useful things
* Modify the `default.cpp`, so it suits your needs.
* Move `create.sh` to `/usr/bin/create`, so you can run the script more simple:

```bash
  create new_project
```
