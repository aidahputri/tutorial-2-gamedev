**Apa saja pesan log yang dicetak pada panel Output**
Pada terminal Output, muncul pesan log Reached objective! ketika objek pesawat hampir menyentuh batas atas area permainan/window.

**Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?**
Ketika menggerakkan landasan ke area bawah, kemudian digerakkan kembali ke atas hingga hampir menyentuh batas atas, akan muncul lagi pesan log Reached objective!.

**Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?**
Iya. Lokasi scene ObjectiveArea sendiri berada di bagian atas area permainan. Ketika ada objek yang memasuki ObjectiveArea, maka akan mengaktifkan signal body_entered dan memanggil method _on_ObjectiveArea_body_entered. Pada method tersebut, apabila objek nya adalah "BlueShip", maka akan print log "Reached objective!".

**Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?**

**Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?**

**Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?**

**Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?**
**Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?**
**Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?**
