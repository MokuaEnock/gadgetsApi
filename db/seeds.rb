# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
u1 = User.create(email: "mokua@gmail.com", password_digest: "hshhsjs")
u2 = User.create(email: "mosomi@gmail.com", password_digest: "kwkkwkw")
u3 = User.create(email: "enock@gmail.com", password_digest: "wkwkqou")

p1 =
  Product.create(
    name: "Mouse",
    price: "109",
    description:
      "Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.",
    category: "Appliance",
    image:
      "https://images.unsplash.com/photo-1551515300-2d3b7bb80920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQ0fHxlbGVjdHJvbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
  )

p2 =
  Product.create(
    name: "External Hard Drive",
    price: "6400",
    description:
      "USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system",
    category: "Storage",
    image:
      "https://images.unsplash.com/photo-1611532736637-13a8bdf96127?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc2fHxlbGVjdHJvbmljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
  )

p3 =
  Product.create(
    name: "Iphone 11",
    price: "80000",
    description:
      "3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design suitable for Ultrabooks and Ultra-slim notebooks. Supports TRIM command, Garbage Collection technology, RAID, and ECC (Error Checking & Correction) to provide the optimized performance and enhanced reliability.",
    category: "Phones",
    image:
      "https://images.unsplash.com/photo-1589492477829-5e65395b66cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fGVsZWN0cm9uaWNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  )

p4 =
  Product.create(
    name: "Camera",
    price: "50000",
    description:
      "49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ultra fast response time work to eliminate motion blur, ghosting, and reduce input lag",
    category: "Camera",
    image:
      "https://images.unsplash.com/photo-1585351650024-8e333a17aeff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGVsZWN0cm9uaWNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  )

# p5 =
#   Product.create(name: "", price: "", description: "", category: "", image: "")
# p6 =
#   Product.create(name: "", price: "", description: "", category: "", image: "")
