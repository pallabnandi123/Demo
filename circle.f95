program my_circle
    implicit none
    logical :: cir(-100:100, -100:100)
    real :: x, y
    integer :: i, j
    real*8 :: random_values(1000000)
    
     call random_seed()
    do i = -100, 100
        do j = -100, 100
            x = i / 100.0
            y = j / 100.0
            cir(j, i) = ((x**2 + y**2) <= 1.0)
        end do
    end do
    print*,cir
    write(*, '(31A2)') print_cir(cir)
    call random_number(random_values)
    
    ! Print the random numbers
    do i = 1, 10
        print *, random_values(i)
    end do
contains

    elemental function print_cir(c)
        ! returns " X" if true, " ." otherwise
        implicit none
        logical, intent(in) :: c
        character(len=2) :: print_cir
        
        
        if (c) then
            print_cir = " X"
        else
            print_cir = " ."
        end if
    end function print_cir

end program my_circle
