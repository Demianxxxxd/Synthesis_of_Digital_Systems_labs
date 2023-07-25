# SDS Laboratory Module 1: Hello World! on a Virtual Prototype (project template)

## Requirements:
- tools according to `../setup.sh`

## Contents

- `./README.md` This file.
- `./vp` base directory for virtual prototype build
- `./sw` base directory for targetsoftware build
- `./environment.sh` source script to set environment variables and aliases
- `./setup.sh` setup script to generate a deliverable project from this template directory

## Usage

0. Establish a VPN connection and open a terminal on our laboratory machines `sds{0..9}`

1. Change into your SDS laboratory directory on the Filer (TUMEIEDA-Server)

```
    cd /usr/local/labs/SDS/current/$(whoami)
```

`$(whoami)` evolves into <your-lrz-id>, e.g., `ab12cde`.

2. Run the `setup.sh` in the template

```
    /usr/local/labs/SDS/current/common/lab-module-1/setup.sh
```

3. Change into your `lab-module-1` directory:

```    
    cd /usr/local/labs/SDS/current/$(whoami)/lab-module-1`
```

4. Build the Virtual Prototype

change into the `vp/` subdirectory and follow the [vp/README.md](vp/README.md)

5. Build the Target Software:

change into the `sw/` subdirectory and follow the [sw/README.md](sw/README.md)

6. Solve the problems according to the Module's manual

7. Archive your solution and submit:

```
    tar -czvf m1-$(whoami).tar.gz <this/directory>
```

8. Submit to the Moodle Deliverable
