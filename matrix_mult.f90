!     
! File:   matrix_mult.f90
! Author: peter
!
! Created on May 6, 2020, 10:51 AM
!

!     
! File:   init.f90
! Author: peter
!
! Created on May 6, 2020, 8:55 AM
!
module matrix_mult
    use dot_product
    implicit none 
    private
    public::multiply
    
    interface multiply
        procedure multiply
    end interface multiply

contains
    function multiply(array,array2) result(array3)
        real, Dimension(:,:), intent(in)::array, array2
        real, Dimension(size(array,1),size(array2,2))::array3
        integer:: rows, cols,n,k
        real:: prod
 
        rows = size(array,2)
        cols = size(array2,1)
        if(size(array,2)/=size(array2,1))then 
            print *, "Incompatable - MATRIX Multiplication"
            print *, "Array 1 row: ", size(array,2),  "Array 2 col: ",size(array2,2)
            stop
        else
            do n=1, rows
                do k = 1, cols
                    prod = mult(array(n,:),array2(:,k))
                    array3(n,k)= prod
                end do
            end do
        end if
    end function multiply
    
end module matrix_mult

