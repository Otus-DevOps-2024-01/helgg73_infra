terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.35"
}

provider "yandex" {
token = "y0_AgAAAAAAKiM3AATuwQAAAAD9FhZqAACUDx5MtINH0rk_o6WkNRMRZzujxA"
cloud_id = "b1gabspit8ias8t8k1t8"
folder_id = "b1gd8op4mo7hjfp14v54"
zone = "ru-central1-a"
}
