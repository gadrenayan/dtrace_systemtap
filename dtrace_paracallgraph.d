# This will give a callgraph of all user defined functions.
# usage: ./dtrace_paracallgraph.d -c '/bin/ls'
# prerequisite: executable should not be stripped of symbols.
#               dtrace relies on function symbol names to be present.

#!/usr/sbin/dtrace -s

#pragma D option flowindent

pid$target:a.out::entry
{
}
pid$target:a.out::return
{
}

# If the script does not work then directly use: 
# dtrace -F -n 'pid$target:a.out::entry,pid$target:a.out::return' -c /bin/ls
