-- debug.sethook()
--{
TIC=function()
 -- poke(16379,1)
  --{
  s=s-t/24
  w=3+w
  t=t+s/24
  --}
  n=(t^2)^.5+.5
  for u=0,240*136 do
    --{
    v=u%48
    f=u%240
    p=u//240
    --}
    poke(16320+v,v*6*math.sin(v)^2)
    --{
    r=p/66-1
    m=f/66-1.8-s
    --}
    d=(r^2+m^2)^.5/n
    if d<1 then
		    c=(1-(1-d)^.5)/n/d*100
		    pix(f,p,n*(p*2-f%2)%4/4+(1-d)*((x(c*r,c*m+1)-x(c*r,c*m))*c*m+12*n+(x(c*r+1,c*m)-x(c*r,c*m))*c*r)+1)
    else    
	 	   pix(f,p,7*x(f,p)+7*x(f*.5,p*.5))
    end
  end
end
t=.5
w=0
s=0
x=function(m,r)
  return(m//1~(r+w)//1)%33/150
end
--}
