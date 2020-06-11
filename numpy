Numpy Notlarım
Tek boyutlu array vektör, iki boyutlu array matris olarak adlandırılır.

import numpy as np
a = np.array([1,2,3,4])
b = np.array([2,3,4,5])
)
print(a * b)
[ 2  6 12 20]
e
type(a)
numpy.ndarray
Array Oluşturma

int
np.zeros(10, dtype ="int")
array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
np.ones((3,5), dtype =int)
array([[1, 1, 1, 1, 1],
       [1, 1, 1, 1, 1],
       [1, 1, 1, 1, 1]])
, 6
np.full((3,5), 6)
array([[6, 6, 6, 6, 6],
       [6, 6, 6, 6, 6],
       [6, 6, 6, 6, 6]])
0,31,3
np.arange(0,31,3)
array([ 0,  3,  6,  9, 12, 15, 18, 21, 24, 27, 30])
2,10
np.linspace(0,2,10)
array([0.        , 0.22222222, 0.44444444, 0.66666667, 0.88888889,
       1.11111111, 1.33333333, 1.55555556, 1.77777778, 2.        ])
# Normal dağılıma uygun, ortalaması 10, standart sapması 4 olacak şekilde random matris.
np.random.normal(10, 4 ,(3,4))                  
array([[16.32986143,  9.6917738 ,  8.64760502, 19.11428854],
       [ 4.76641551,  9.33990595, 13.59499875, 10.40710238],
       [ 9.35632245,  7.01333565, 15.65624095,  4.31165207]])
 
#0-10 arası değer alan, int değerlerden oluşsan 3'e 3 matris.
np.random.randint(0,10,(3,3))
array([[8, 6, 8],
       [4, 5, 3],
       [7, 8, 0]])
Özellikleri

ndim: Boyut sayısı
shape: Boyut bilgisi
size: Toplam eleman sayısı
dtype: Array veri tipi
a = np.random.randint(10, size= 10)
a = np.random.randint(10, size= 10)
a.ndim
a.ndim
1
a.shape
a.shape
(10,)
a.size
a.size
10
a.dtype
a.dtype
dtype('int32')
b
b = np.random.randint(10, size= (3,5))
b
b
array([[2, 2, 1, 2, 7],
       [3, 8, 5, 6, 5],
       [3, 0, 6, 8, 9]])
b.ndim
b.ndim
2
b.shape
b.shape
(3, 5)
b.size
b.size
15
b.dtype
b.dtype
dtype('int32')
Yeniden Şekillendirme (Reshaping)

np.arange(1,10)
np.arange(1,10)
array([1, 2, 3, 4, 5, 6, 7, 8, 9])
np.arange(1,10).reshape((3,3))
array([[1, 2, 3],
       [4, 5, 6],
       [7, 8, 9]])
a = np.arange(1,10) # Tek boyutlu array
a.ndim
a.ndim
1
b = a.reshape((1,9)) # 1*9luk matris, tek boyut bilgilerini taşıyan bir matris.
im
b.ndim
2
Array Birleştirme (Concatenation)

y = np.array([4,5,6])
x = np.array([1,2,3])
y = np.array([4,5,6])
np.concatenate([x,y])
np.concatenate([x,y])
array([1, 2, 3, 4, 5, 6])
z = np.array([7,8,9])
np.concatenate([x,y,z])
array([1, 2, 3, 4, 5, 6, 7, 8, 9])
a =np.array([[1,2,3],
             [4,5,6]])
a
array([[1, 2, 3],
       [4, 5, 6]])
 #vertical
np.concatenate([a,a]) #vertical
array([[1, 2, 3],
       [4, 5, 6],
       [1, 2, 3],
       [4, 5, 6]])
np.concatenate([a,a], axis =1 ) #axis'in ön tanımlı değeri 0'dır. (horizontal)
array([[1, 2, 3, 1, 2, 3],
       [4, 5, 6, 4, 5, 6]])
Array Ayırma (Splitting)

x = np.array([1,2,3,99,99,3,2,1])
np.split(x, [3,5])
np.split(x, [3,5])
[array([1, 2, 3]), array([99, 99]), array([3, 2, 1])]
a,b,c = 
a,b,c = np.split(x, [3,5])
a
a
array([1, 2, 3])
b
b
array([99, 99])
c
c
array([3, 2, 1])
m
m =np.arange(16).reshape(4,4)
m
array([[ 0,  1,  2,  3],
       [ 4,  5,  6,  7],
       [ 8,  9, 10, 11],
       [12, 13, 14, 15]])
np.vsplit(m, [2])
np.vsplit(m, [2])
[array([[0, 1, 2, 3],
        [4, 5, 6, 7]]),
 array([[ 8,  9, 10, 11],
        [12, 13, 14, 15]])]
ust, alt = 
ust, alt = np.vsplit(m, [2])
ust
array([[0, 1, 2, 3],
       [4, 5, 6, 7]])
alt
alt
array([[ 8,  9, 10, 11],
       [12, 13, 14, 15]])
sag,sol = np.hsplit(m,[2])
sag
sag
array([[ 0,  1],
       [ 4,  5],
       [ 8,  9],
       [12, 13]])
sol
sol
array([[ 2,  3],
       [ 6,  7],
       [10, 11],
       [14, 15]])
Array Sıralama (Sorting)

v
v = np.array([2,9,4,6,3,7])
v
array([2, 9, 4, 6, 3, 7])
np.sort(v) #Kalıcı değil.
array([2, 3, 4, 6, 7, 9])
v
v
array([2, 9, 4, 6, 3, 7])
ıyı bozar.
v.sort() #Orijinal yapıyı bozar.
v
v
array([2, 3, 4, 6, 7, 9])
3,3
m =np.random.normal(20,5,(3,3))
m
m
array([[19.01963337, 31.24094329, 11.73091433],
       [15.47558366, 20.89592907, 27.69625989],
       [29.89896526, 22.87337628, 24.05315829]])
np.sort(m, axis=1) #Satırlara göre sıralama yapar.
array([[11.73091433, 19.01963337, 31.24094329],
       [15.47558366, 20.89592907, 27.69625989],
       [22.87337628, 24.05315829, 29.89896526]])
np.sort(m, axis=0) #Sütunlara göre sıralama yapar.
array([[15.47558366, 20.89592907, 11.73091433],
       [19.01963337, 22.87337628, 24.05315829],
       [29.89896526, 31.24094329, 27.69625989]])
Index ile Elemanlara Erişmek

a = np.random.randint(10, size =10)

a = np.random.randint(10, size =10)
a
array([2, 0, 8, 7, 8, 4, 9, 8, 8, 2])
0
a[0]
2
-1
a[-1]
2
a[3] =4
a
a
array([2, 0, 8, 4, 8, 4, 9, 8, 8, 2])
a
a = np.random.randint(10, size =(3,4))
a
array([[1, 0, 2, 1],
       [3, 4, 0, 1],
       [3, 0, 9, 1]])
0,0
a[0,0]
1
3
a[1,3]
1
larak ekler.
a[2,0] = 9.7 #float değil int olarak ekler.
a
a
array([[1, 0, 2, 1],
       [3, 4, 0, 1],
       [9, 0, 9, 1]])
Slicing ile Elemalara Erişmek(Alt Kümelere Erişim)

a
a =np.arange(20,30)
a
array([20, 21, 22, 23, 24, 25, 26, 27, 28, 29])
0:3
a[0:3]
array([20, 21, 22])
:3
a[:3]
array([20, 21, 22])
3:
a[3:]
array([23, 24, 25, 26, 27, 28, 29])
#İkişer atlayarak gider.
a[1::2] #İkişer atlayarak gider.
array([21, 23, 25, 27, 29])
m = np.random.randint(10, size = (5,5))
m
m = np.random.randint(10, size = (5,5))
m
array([[3, 3, 9, 9, 5],
       [1, 1, 0, 1, 9],
       [5, 7, 5, 0, 8],
       [7, 4, 2, 1, 6],
       [9, 1, 1, 7, 8]])
m[:,0]  #Bütün satırları ve 0.sütunu al.
array([3, 1, 5, 7, 9])
.
m[0,:] #İlk satırı verir.
array([3, 3, 9, 9, 5])
utünları al.
m[0:2, 0:3] #0'dan 2'ye kadar satırları al, 0'dan 3'e kadar sutünları al.
array([[3, 3, 9],
       [1, 1, 0]])
m[:,0:2]
array([[3, 3],
       [1, 1],
       [5, 7],
       [7, 4],
       [9, 1]])
m[1:3, 0:2]
array([[1, 1],
       [5, 7]])
m
alt_m = m[0:3,0:2]
alt_m
alt_m
array([[3, 3],
       [1, 1],
       [5, 7]])
 =9999
alt_m[0,0] =9999
 = 8888
alt_m[1,1] = 8888
alt_m
alt_m
array([[9999,    3],
       [   1, 8888],
       [   5,    7]])
lt
m  #Alt array ana array'i değiştirdi.
array([[9999,    3,    9,    9,    5],
       [   1, 8888,    0,    1,    9],
       [   5,    7,    5,    0,    8],
       [   7,    4,    2,    1,    6],
       [   9,    1,    1,    7,    8]])
m = np.random.randint(10, size = (5,5))
m
array([[0, 1, 9, 5, 5],
       [2, 0, 2, 9, 6],
       [6, 4, 9, 4, 5],
       [8, 2, 6, 4, 0],
       [2, 0, 6, 2, 2]])
alt_b = m[0:3, 0:2].copy()  #Alt array'i bağımsızlaştırır.
alt_b
array([[0, 1],
       [2, 0],
       [6, 4]])
,
alt_b[0,0] = 9999
alt_b
array([[9999,    1],
       [   2,    0],
       [   6,    4]])
m
m
array([[0, 1, 9, 5, 5],
       [2, 0, 2, 9, 6],
       [6, 4, 9, 4, 5],
       [8, 2, 6, 4, 0],
       [2, 0, 6, 2, 2]])
Fancy Index ile Elemanlara Erişmek

arange
v =np.arange(0,30,3)
v
array([ 0,  3,  6,  9, 12, 15, 18, 21, 24, 27])
[v[1],v[3],v[5]]
[3, 9, 15]
v[1]
3
_
al_getir = [1,3,5]
  #Tek boyutta fancy index
v[al_getir]  #Tek boyutta fancy index
array([ 3,  9, 15])
m
m =np.arange(9).reshape((3,3))
m
array([[0, 1, 2],
       [3, 4, 5],
       [6, 7, 8]])
satir =np.array([0,1])
sutun =np.array([1,2])
 boyutlu fancy index
m[satir,sutun]  #2 boyutlu fancy index
array([1, 5])
m[0, [1,2]] # Fancy ve basit indexlemenin birlikte kullanımı
m[0, [1,2]] # Fancy ve basit indexlemenin birlikte kullanımı
array([1, 2])
m[0: , [1,2]] # Fancy ve slice indexlemenin birlikte kullanımı
array([[1, 2],
       [4, 5],
       [7, 8]])
Koşullu Eleman İşlemleri

v =np.array([1,2,3,4,5])
v < 3
v < 3
array([ True,  True, False, False, False])
 #ancy devreye girer.
v[v>3] #ancy devreye girer.
array([4, 5])
v<=2
v[v<=2]
array([1, 2])
v!=4
v[v!=4]
array([1, 2, 3, 5])
v/5*3
array([0.6, 1.2, 1.8, 2.4, 3. ])
v**2
array([ 1,  4,  9, 16, 25], dtype=int32)
Matematiksel İşlemler

#ufunct
#ufunct
 # 1 çıkardı.
np.subtract(v,1) # 1 çıkardı.
array([0, 1, 2, 3, 4])
np.add(v,1)
array([2, 3, 4, 5, 6])
v,2
np.multiply(v,2)
array([ 2,  4,  6,  8, 10])
v,2
np.power(v,2)
array([ 1,  4,  9, 16, 25], dtype=int32)
 
np.mod(v,2) 
array([1, 0, 1, 0, 1], dtype=int32)
  # utlak değer 
np.absolute(np.array([-3,-5]))  # utlak değer 
array([3, 5])
360
np.sin(360)
0.9589157234143065
-180
np.cos(-180)
-0.5984600690578581
np.array([1,2,3])
np.log(v)    #Logaritma alma 
array([0.        , 0.69314718, 1.09861229, 1.38629436, 1.60943791])
riz.
?np ile dokümantasyona ulaşabiliriz.
np.mean(v)
3.0
v.sum()
15
v.min()
1
İki Bilinmeyenli Denklem Çözümü

p
import numpy as np
5 * x0 + x1 =12

x0 + 3 * x1 = 10

a = np.array([[5,1], [1,3]]) #Katsayılar
b =np.array([12,10]) # Çıktılara karşılık gelen array.
a
array([[5, 1],
       [1, 3]])
b
b
array([12, 10])
x
x = np.linalg.solve(a,b)
x
array([1.85714286, 2.71428571])
