if strcmp(file_data, 'seion1.data')
   ciri=ciri1;
elseif strcmp(file_data, 'seion2.data')
   ciri=ciri2;
elseif strcmp(file_data, 'seion3.data')
   ciri=ciri3;
elseif strcmp(file_data, 'seion4.data')
   ciri=ciri4;
elseif strcmp(file_data, 'seion5.data')
   ciri=ciri5;
elseif strcmp(file_data, 'seion6.data')
   ciri=ciri6;
end
test1=ciri(:,1:end);
datanormal1 = mapminmax(test1)';
ytst1 = net(datanormal1);
hasil = vec2ind(ytst1);

if hasil == 1
    hasil_huruf='A'
elseif hasil == 2
    hasil_huruf='I'
elseif hasil == 3
    hasil_huruf='U'
elseif hasil == 4
    hasil_huruf='E'
elseif hasil == 5
    hasil_huruf='O'
elseif hasil == 6
    hasil_huruf='Ka'
elseif hasil == 7
    hasil_huruf='Ki'
elseif hasil == 8
    hasil_huruf='Ku'
elseif hasil == 9
    hasil_huruf='Ke'
elseif hasil == 10
    hasil_huruf='Ko'
elseif hasil == 11
    hasil_huruf='Sa'
elseif hasil == 12
    hasil_huruf='Shi'
elseif hasil == 13
    hasil_huruf='Su'
elseif hasil == 14
    hasil_huruf='Se'
elseif hasil == 15
    hasil_huruf='So'
elseif hasil == 16
    hasil_huruf='Ta'
elseif hasil == 17
    hasil_huruf='Chi'
elseif hasil == 18
    hasil_huruf='Tsu'
elseif hasil == 19
    hasil_huruf='Te'
elseif hasil == 20
    hasil_huruf='To'
elseif hasil == 21
    hasil_huruf='Na'
elseif hasil == 22
    hasil_huruf='Ni'
elseif hasil == 23
    hasil_huruf='Nu'
elseif hasil == 24
    hasil_huruf='Ne'
elseif hasil == 25
    hasil_huruf='No'
elseif hasil == 26
    hasil_huruf='Ha'
elseif hasil == 27
    hasil_huruf='Hi'
elseif hasil == 28
    hasil_huruf='Fu'
elseif hasil == 29
    hasil_huruf='He'
elseif hasil == 30
    hasil_huruf='Ho'
elseif hasil == 31
    hasil_huruf='Ma'
elseif hasil == 32
    hasil_huruf='Mi'
elseif hasil == 33
    hasil_huruf='Mu'
elseif hasil == 34
    hasil_huruf='Me'
elseif hasil == 35
    hasil_huruf='Mo'
elseif hasil == 36
    hasil_huruf='Ya'
elseif hasil == 37
    hasil_huruf='Yu'
elseif hasil == 38
    hasil_huruf='Yo'
elseif hasil == 39
    hasil_huruf='Ra'
elseif hasil == 40
    hasil_huruf='Ri'
elseif hasil == 41
    hasil_huruf='Ru'
elseif hasil == 42
    hasil_huruf='Re'
elseif hasil == 43
    hasil_huruf='Ro'
elseif hasil == 44
    hasil_huruf='Wa'
elseif hasil == 45
    hasil_huruf='Wo'
elseif hasil == 46
    hasil_huruf='N'
end

% Preprocessing;