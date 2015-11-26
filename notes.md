# notes.md

## bash tricks

### Which packages contain a given file?

```
docker run --rm -it --name apt-file jess/apt-file
apt-file update
apt-file search requires.txt | cut -d':' -f1 | sort -u | more
```

## Docker

### How do I log into Docker Hub?

```
docker login --username medined --password PASSWORD --email david.medinets@gmail.com
```
