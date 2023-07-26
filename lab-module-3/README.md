# SDS Laboratory Module 3: Acceleration of Embedded AES Cryptography with HLS (project template)

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
    /usr/local/labs/SDS/current/common/lab-module-3/setup.sh
```

3. Change into your `lab-module-3` directory:

```    
    cd /usr/local/labs/SDS/current/$(whoami)/lab-module-3`
```

4. Build the Virtual Prototype

```
    cd vp/
    cmake -S $VP_DIR -B build [-D ESVRTL_PREFIX=$SDS_LAB/$(whoami)/lab-module-3/hls -D AES_TYPE={basic, dma}]
    cmake --build build
```

For the sub-task "pure software AES", use this `cmake` command:

```
    cmake -S $VP_DIR -B build
```

For the target-only AES-HA, "basic", use this `cmake` command:

```
cmake -S $VP_DIR -B build [-D ESVRTL_PREFIX=$SDS_LAB/$(whoami)/lab-module-3/hls -D AES_TYPE=basic
```

For the direct memory access AES-HA, "dma", use this `cmake` command:

```
cmake -S $VP_DIR -B build [-D ESVRTL_PREFIX=$SDS_LAB/$(whoami)/lab-module-3/hls -D AES_TYPE=dma
```

Change into the `vp/` subdirectory and follow the [vp/README.md](vp/README.md) for more information.

5. Build the Target Software:

change into the `sw/` subdirectory and follow the [sw/README.md](sw/README.md)

6. Solve the problems according to the Module's manual

7. Archive your solution and submit:

```
    tar -czvf m1-$(whoami).tar.gz <this/directory>
```

8. Submit to the Moodle Deliverable
