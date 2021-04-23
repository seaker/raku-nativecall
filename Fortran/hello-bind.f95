subroutine hello() bind(c, name="hello")
    print *, "Hello, World!"
end subroutine hello
