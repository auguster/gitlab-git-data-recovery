# Gitlab Git-Data Recovery
When Gitlab is crashed so badly and you notice backup wasn't turned on there is this script...

It uses the `@hashed/` folder to recover the bare git repository in a directory structure matching Gitlab's group structure.
The `@hashed/` folder is located under `/var/opt/gitlab/git-data/repository` in Gitlab's docker container.

# Usage
Make sure that recover.sh is executable then run it:
```bash
./recover.sh <path to @hashed/> <path where to put the recovered data>
```
The recovered repositories should appear at the location of the second path you provided.

# Recovered repositories
The recovered git repositories are `bare repositories` it's a special kind of central repositories.
You won't see your code in the bare repository itself but you can clone it to obtain a "normal" git repository.

# Licence
MIT