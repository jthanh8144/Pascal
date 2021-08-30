var a:array[1..100000000]of int64;
    k,tg,i:longint;
    f1,f2:text;
begin
assign(f1,'D:\pascal\numpos.inp');reset(f1);
assign(f2,'D:\pascal\numpos.out');rewrite(f2);
read(f1,k);
a[1]:=1;
a[2]:=2;
a[3]:=3;
i:=1;
while a[i]<>k do
  begin
    a[i+3]:=a[i]+1;
    i:=i+1;
  end;
tg:=i+3;
for i:=1 to tg-1 do
  if a[i]=k then
    begin
      write(f2,i);
      break;
    end;
close(f1);close(f2);
end.