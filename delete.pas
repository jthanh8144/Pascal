var n:int64;
    s,s1,s2:string;
    i:longint;
    f1,f2:text;
begin
assign(f1,'D:\pascal\delete.inp');reset(f1);
assign(f2,'D:\pascal\delete.out');rewrite(f2);
read(f1,n);
str(n,s);
s2:='';
for i:=1 to length(s) do
  begin
    s1:=copy(s,i,1);
    if (s1<>'0') and (s1<>'1') then s2:=s2+s1;
  end;
write(f2,s2);
close(f1);close(f2);
end.
