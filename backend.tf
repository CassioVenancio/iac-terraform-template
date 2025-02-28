terraform {
  backend "gcs" {
    bucket = "" # Substitua pelo nome do seu bucket GCS
    prefix = "terraform/state/defualt"    # Caminho dentro do bucket
  }
}
