program pointer_example
    implicit none

    ! Declare variables
    integer :: i
    integer, parameter :: n = 10000
    integer,target :: array(n) = [(i,i=1,n)]
    integer, target :: sum1
    integer, pointer :: ptr(:)
    

    ! Assign pointer
    ptr => array

    ! Calculate sum using pointer
    sum1 = 0
    do i = 1, n
        sum1 = sum1 + ptr(i)
    end do

    ! Print sum
    print *, 'Sum of array elements:', sum1

end program pointer_example

