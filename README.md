# ARC-RetainCycle-MemoryLeak

Very simple example for ARC, Retain cycle, Memory leak (Swift 4.1)
 
 Theory:
 
    + ARC
        * Automatic reference counting
        * Apples way for handling memory menagement of objects
        * Keep count how much strong references are pointing to object
        * Object is released from memory when reference count is 0
 
    + Retain Cycle
        * To objects have strong reference to each other
        * If deinit object will still be in memory because of strong reference
        * To deal with this weak reference must be made
 
    + Memory Leak
        * If object is not released from memory (retain cycle) there will be memory leak
