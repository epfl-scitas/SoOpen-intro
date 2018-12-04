integer :: i, a(10), b, c
 
do i=1,size(a)
 a(i) = 1
end do

d=0
do i=0,size(a)+1
 d = d+a(i)
end do

write (*,*) d

end 
