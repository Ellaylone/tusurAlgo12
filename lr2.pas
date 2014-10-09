Program lr2;
var
	Allowed : set of char;
	L1 : set of 'a'..'z';
	L2 : set of 'A'..'Z';
	Punct : set of char;
	input : string;
	i : integer;
	count : integer;
begin
	L1 := ['a'..'z'];
	L2 := ['A'..'Z'];
	Punct := [',', '.', '!', ';', '?', ' '];
	Allowed := L1 + L2 + Punct;
	writeln('Enter text: ');
	readln(input);
	count := 0;
	for i := 1 to length(input) do
		if(input[i] in Allowed) then count := count +1;
	writeln(length(input) - count);
        readln();
end.
