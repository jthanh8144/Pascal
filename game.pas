var a:array[1..100000000]of int64;
    n,x,i,k:longint;
    kt:boolean;
    f1,f2:text;
begin
assign(f1,'D:\pascal\game.inp');reset(f1);
assign(f2,'D:\pascal\game.out');rewrite(f2);
readln(f1,n);
for i:=1 to n do read(f1,a[i]);
kt:=false;
for i:=1 to n do
  if a[i]=a[i+1] then kt:=true
    else begin kt:=false; break; end;
if kt=true then write(f2,'1')
  else
    begin
      k:=1;
      while k<>n-1 do
        begin
          while a[k]<>a[k+1] do
            if a[k]>a[k+1] then a[k]:=a[k]-a[k+1]
              else a[k+1]:=a[k+1]-a[k];
          k:=k+1;
        end;
    end;
x:=a[k];
write(f2,x);
close(f1);close(f2);
end.