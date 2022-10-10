resource "yandex_compute_instance" "gitlab" {
  name     = "gitlab"
  hostname = "gitlab.w00ps.ru"

  resources {
    cores  = 6
    memory = 6
  }

  boot_disk {
    initialize_params {
      image_id = "fd8fte6bebi857ortlja"
      size     = 30
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = false
  }

  metadata = {
    user-data = "${file("data.txt")}"
  }
}
