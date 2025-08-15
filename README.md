# Script Lock

This is a minimal predicate to lock coins behind a transaction executed by a given script.

This pattern allows a predicate to lock funds behind some specific chain state since predicates are not allowed to access it directly.

To use it, configure it with the bytecode hash of the script that should be necessary for the transaction and send coins to lock to the resulting predicate root.
