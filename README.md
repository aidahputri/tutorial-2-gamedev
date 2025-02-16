## **1. Apa saja pesan log yang dicetak pada panel Output?**  
- Pesan log **"Reached objective!"** dicetak ketika objek pesawat hampir menyentuh batas atas area permainan/window.  

## **2. Apa yang terjadi ketika menggerakkan landasan ke batas bawah, lalu kembali ke atas hingga hampir menyentuh batas atas?**  
- Saat landasan digerakkan ke area bawah dan kemudian kembali ke atas hingga hampir menyentuh batas atas, pesan log **"Reached objective!"** akan muncul lagi di panel Output.  

## **3. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output?**  
- **Ya.** Scene **ObjectiveArea** berada di bagian atas area permainan.  
- Ketika ada objek yang memasuki **ObjectiveArea**, maka signal **body_entered** akan diaktifkan dan memanggil method `_on_ObjectiveArea_body_entered`.  
- Jika objek yang memasuki area adalah **"BlueShip"**, maka method ini akan mencetak log **"Reached objective!"** di panel Output.

## **Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?**
Node bertipe Sprite berfungsi untuk menampilkan gambar _(texture)_ dalam scene.

## **Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?**
Node **RigidBody2D** digunakan untuk objek yang dapat bergerak dan berinteraksi dengan hukum fisika. Objek dengan tipe ini dipengaruhi oleh gravitasi, tumbukan, dan gaya dorong dari luar. Selain itu, **RigidBody2D** memiliki properti seperti massa, kecepatan, dan momentum yang memungkinkannya bergerak secara dinamis. Dalam konteks game pada tutorial ini, **BlueShip** menggunakan **RigidBody2D** agar dapat bergerak secara realistis sesuai dengan gaya yang diberikan.  

Sementara itu, **StaticBody2D** digunakan untuk objek yang diam dan hanya berfungsi sebagai penghalang atau bagian dari lingkungan permainan. Objek dengan tipe ini tidak akan bergerak meskipun bertabrakan dengan objek lain, sehingga cocok digunakan untuk elemen seperti lantai, dinding, atau platform. **StonePlatform**, misalnya, menggunakan **StaticBody2D** karena berfungsi sebagai landasan yang tetap di tempat dan tidak terpengaruh oleh gaya yang diberikan.  

## **Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?**
- Jika **Mass diperbesar**, BlueShip akan menjadi **lebih sulit bergerak** dan lebih lambat saat menerima gaya dorong atau tabrakan.  
- Jika **Mass diperkecil**, BlueShip akan menjadi **lebih ringan**, lebih cepat merespons gaya dorong, dan lebih mudah terdorong saat bertabrakan dengan objek lain. 

## **Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?**
- Jika **Disabled = true**, **StonePlatform tidak akan memiliki tabrakan**, sehingga objek lain, termasuk BlueShip, dapat menembusnya seolah-olah landasan tidak ada.  
- Jika **Disabled = false** (default), **StonePlatform berfungsi sebagai penghalang**, sehingga BlueShip akan berhenti atau bertabrakan dengan landasan seperti biasa.  

## **Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?**
Atribut **Position**, **Rotation**, dan **Scale** mempengaruhi tampilan dan letak **BlueShip** di dalam Viewport. **Position** menentukan lokasi objek, **Rotation** mengatur arah rotasi, dan **Scale** mengubah ukuran objek tanpa mempengaruhi aspek lainnya.  

## **Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?**
Dalam scene **MainLevel**, nilai **Position** pada node berikut adalah:  
- **PlatformBlue** → `position = Vector2(35, 565)`  
- **StonePlatform** → **Tidak memiliki atribut position**  
- **StonePlatform2** → `position = Vector2(70, 0)`

Meskipun **StonePlatform** tidak memiliki atribut **Position** yang eksplisit dan **StonePlatform2** hanya memiliki nilai `position = Vector2(70, 0)`, keduanya tetap berada di posisi yang benar dalam scene karena mereka adalah child dari **PlatformBlue**. Dalam Godot, posisi sebuah node yang menjadi child dari node lain bersifat **relatif terhadap parent-nya**, bukan posisi absolut dalam scene. Oleh karena itu, **StonePlatform** yang tidak memiliki nilai posisi eksplisit secara default berada di `(0,0)` relatif terhadap **PlatformBlue**, sementara **StonePlatform2** yang memiliki `position = Vector2(70, 0)` akan dihitung relatif terhadap posisi **PlatformBlue**, yaitu `(35 + 70, 565 + 0) = (105, 565)`. Hal ini menjelaskan mengapa nilai posisi yang terlihat di **Inspector** tampak berbeda dari posisi absolutnya dalam viewport. Dalam sistem hierarki node Godot, posisi global sebuah node dihitung dengan **menambahkan posisi parent dan child**, sehingga meskipun nilai yang terlihat dalam **Inspector** adalah posisi relatif, hasil visualisasinya tetap sesuai dengan harapan.