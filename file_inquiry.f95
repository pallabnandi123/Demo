program file_inquiry
    implicit none
    character(len=100) :: filename
    logical :: file_exists
    logical ::op
    
    ! Prompt user for filename
    print *, "Enter filename: "
    read(*, '(A)') filename
    
    ! Check if the file exists
    inquire(file=filename, exist=file_exists,opened=op)
    
    ! Print the result
    if (file_exists) then
        print *, "File '", trim(filename), "' exists."
    else
        print *, "File '", trim(filename), "' does not exist."
    end if
    
end program file_inquiry

