----------------------------------------
-- 0 bytes:                                                                                                
----------------------------------------                                                                   
--{
d=.5
o=0
TIC=function()
  --{
  c=c+3
  q=.5+(d^2)^.5
  o=o-d/24
  d=d+o/24
  --}
  for r=0,4e4 do
    --{
    t=r//240
    p=r%240
    poke(r%48+16320,r%48*6*math.sin(r%48)^2)
    --}
    --{
    h=t/66-1
    g=p/66-1.8-o
    --}
    s=(g*g+h^2)^.5/q
    if s<1then
      n=(1-(1-s)^.5)/s*100/q
      pix(p,t,1+q*(2*t-p%2)%4/4+(1-s)*(n*(e(n*h+1,n*g)-e(n*h,n*g))*h+q*12+(e(n*h,n*g+1)-e(n*h,n*g))*n*g))
    else
      pix(p,t,7*e(p,t)+7*e(p*.5,.5*t))
    end
  end
end
e=function(g,h)
  return(g//1~(c+h)//1)%33/150
end
c=0
--}
