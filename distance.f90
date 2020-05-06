!     
! File:   distance.f90
! Author: peter
!
! Created on May 6, 2020, 12:49 PM
!
module distance
    
    implicit none 
    private
    public::error
    
    interface error
        procedure error
    end interface error

contains
    function error(array, array2) result(diff)
        real, Dimension(:,:), intent(in)::array, array2
        real:: diff
        integer:: n,m
        diff =0
        if(size(array,1)/=size(array2,1) .or. size(array,2)/=size(array2,2) )then
            print *,"Incompatable shapes for error calculation"
        else
            do n = 1, size(array,1)
                do m = 1, size(array,2)
                    diff= diff+ array(n,m)-array2(n,m)
                end do
            end do
        end if   
        
       
        
    end function error
    
end module distance

