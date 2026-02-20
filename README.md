# libtiff-analysis

## Task 1: static analysis with cppcheck

### Build the container

Go to cd static-analysis directory:

```
cd static-analysis
```

Build the container:
```
podman build -t libtiff-static-analysis .
```

### Run the analysis

Make reports directory:

```
mkdir reports
```

Run the analysis:

```
podman run --rm -v ./reports:/reports libtiff-static-analysis
```

### Output

After execution, the report will be available at:
```
reports/libtiff_report.txt
```