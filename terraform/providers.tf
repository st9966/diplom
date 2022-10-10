terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }


  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "w00ps"
    region     = "ru-central1"
    key        = "./prod/prod.tfstate"
    access_key = "***"
    secret_key = "***"


    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = "***"
  cloud_id                 = "b1gf9amaic6lr0gpjder"
  folder_id                = "b1g2too0v1k90hgr5j2d"
  zone      = "ru-central1-a"
}
