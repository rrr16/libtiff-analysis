# libtiff-analysis

Versions:

- libtiff-4.4.0-alt9
- cppcheck-2.18.1-alt1_0_12337740f
- AFLplusplus-4.34c-alt1

## Task 1: static analysis with cppcheck

### Run the analysis

To run static analysis use a script:
```
./run_static_analysis.sh
```

### Output

After execution, the report will be available at:
```
static-analysis/reports/libtiff_report.txt
```

## Task 2: static analysis findings

Static analysis findings stored in `triage/TRIAGE.md`

## Task 3: Fuzzing
To run fuzzing use a script:
```
./run_fuzzing.sh
```

### Output

After execution, the results will be available at:
```
fuzzing/output/
```

## Manual run
Build base container:
```
podman build -t libtiff-base ./base
```

### Static analysis
Build container for static analysis:
```
podman build -t libtiff-static-analysis ./static-analysis
```

Run static analysis:
```
podman run --rm -v ./static-analysis/reports:/reports libtiff-static-analysis
```

### Fuzzing
Build container for fuzzing:
```
podman build -t libtiff-fuzzing ./fuzzing
```

Run fuzzing:
```
podman run --rm -it \
        -v ./fuzzing/output/:/workspace/libtiff/output/ \
        libtiff-fuzzing
```