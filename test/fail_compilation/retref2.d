
// REQUIRED_ARGS: -dip25

/*
TEST_OUTPUT:
---
fail_compilation/retref2.d(21): Error: function `ref int retref2.D.foo(return ref int)` does not override any function, did you mean to override `ref int retref2.C.foo(ref int)`?
fail_compilation/retref2.d(22): Error: function `ref return scope int retref2.D.bar()` does not override any function, did you mean to override `ref int retref2.C.bar()`?
---
*/


class C
{
    ref int foo(ref int);
    ref int bar();
}

class D : C
{
    override ref int foo(return ref int);
    override ref int bar() return;
}
