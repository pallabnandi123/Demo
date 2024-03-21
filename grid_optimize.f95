program where_1
integer :: a(5)
integer :: b(5)
integer :: x(4)
integer :: t(6)
integer :: seed
a = (/1, 2, 3, 4, 5/)
b = (/1, 0, 1, 0, 1/)
where (b .ne. 0)
a = a + 10
else where
a=0
end where

call random_number(seed)
print*,new_line('A')
x(:)=(/ 3, 1, 4, 1 /)
t=cshift((/ 1, 2, 3, 4, 5, 6/), 5)
print *,a
print*,x
print*,t
end program
