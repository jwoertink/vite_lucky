# Vite Lucky test

This repo is being used as a test for what Lucky may look like with Vite support out of the box. Also note that I'm testing against the next release of Lucky since this may get thrown in to it

Currently I'm getting this OOM error locally:

```

// assets       | <--- JS stacktrace --->
// assets       |
// assets       | FATAL ERROR: Ineffective mark-compacts near heap limit Allocation failed - JavaScript heap out of memory
// assets       |  1: 0xafedf0 node::Abort() [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       |  2: 0xa1814d node::FatalError(char const*, char const*) [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       |  3: 0xce795e v8::Utils::ReportOOMFailure(v8::internal::Isolate*, char const*, bool) [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       |  4: 0xce7cd7 v8::internal::V8::FatalProcessOutOfMemory(v8::internal::Isolate*, char const*, bool) [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       |  5: 0xeb16b5  [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       |  6: 0xeb21a4  [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       |  7: 0xec0617 v8::internal::Heap::CollectGarbage(v8::internal::AllocationSpace, v8::internal::GarbageCollectionReason, v8::GCCallbackFlags) [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       |  8: 0xec39cc v8::internal::Heap::AllocateRawWithRetryOrFailSlowPath(int, v8::internal::AllocationType, v8::internal::AllocationOrigin, v8::internal::AllocationAlignment) [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       |  9: 0xe862ec v8::internal::Factory::NewFillerObject(int, bool, v8::internal::AllocationType, v8::internal::AllocationOrigin) [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       | 10: 0x11f3156 v8::internal::Runtime_AllocateInYoungGeneration(int, unsigned long*, v8::internal::Isolate*) [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       | 11: 0x15c9ed9  [/home/jeremy/.asdf/installs/nodejs/16.6.1/bin/node]
// assets       | Aborted (core dumped)
// assets       | error Command failed with exit code 134.
// assets       | info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
// assets       | error Command failed with exit code 134.
// assets       | info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
// assets       | Done
```

My stack is:
```
❯ crystal -v
Crystal 1.5.0 [994c70b10] (2022-07-06)

LLVM: 10.0.0
Default target: x86_64-unknown-linux-gnu

❯ node -v
v16.6.1

❯ yarn -v
1.22.17

❯ uname -a
Linux pop-os 5.19.0-76051900-generic #202207312230~1660780566~22.04~9d60db1 SMP PREEMPT_DYNAMIC Thu A x86_64 x86_64 x86_64 GNU/Linux
```


## Setup

* Clone the repo
* `./script/setup`
* `lucky dev`


## Next Steps

In order to make this a reality, we need to answer some questions

1. How do I not overwrite what's already in the public directory?
2. Why does the css file get rendered as `js/app.css`?
3. How can I run a system command after this is built? I need to tell Lucky to rebuild. (This may not be needed if we tell it to locally generate files without the cache buster name)
4. How do background images work in the CSS?
5. Can I specify a different input for css rather than doing an import?
6. How come I have to import images in to the app.js in order to have them show up in the manifest?

