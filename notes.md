# notes.md

## bash tricks

### Which Packages Contain a Given File?

```
docker run --rm -it --name apt-file jess/apt-file
apt-file update
apt-file search requires.txt | cut -d':' -f1 | sort -u | more
```

