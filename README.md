# ansible-pull-shell-wrapper
Simple shell script wrapper for ansible to make it more like ansible-pull.

## Why?

As of Feb 2019, `ansible-pull` has absolutely no way of managing role dependencies via Galaxy, which is bizarre. This lack of [functionality](https://github.com/ansible/ansible/issues/13559) makes ansible-pull, in it's current implementation, useless when working with roles.  

This shell script emulates `ansible-pull`'s functionality whilst actually using the standard `ansible` binary. 

## To-do

- [ ] Usage / help text
- [ ] Defaults where appropriate when variables not set
- [ ] Variable validation (e.g. catch empty variables)

