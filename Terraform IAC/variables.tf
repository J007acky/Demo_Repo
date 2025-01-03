variable "subscription_id" {
  description = "The subscription ID in which the resources will be created."
  default = "8a228cff-023f-42af-818d-51a84a828d46"
  type = string
}

variable "tenant_id" {
  description = "The Tenant ID for the target Azure Account"
#  default = "46118836-cde0-431b-bb1e-b6ab7887003c"
  type = string
}
variable "client_id" {
  description = "Client ID for the Application"
#  default= "20c516e5-a70b-4ebc-bbed-4f2dd86c3141"
  type = string
}
variable "client_secret" {
  description = "Client Secret"
#  default="bH18Q~9cOEq7OH1m3jxXHSOwg_PjSYn38IM9Saik"
  type = string
}

variable "region" {
  description = "The region in which the resources will be created."
  default     = "East US"
  type = string
}


variable "database_resource_group" {
  description = "The name of the resource group in which the resources will be created."
  default     = "Toll-Violation-Detection-System-Alok-Raturi"
  type = string
}

variable "function_app_resource_group" {
  description = "The name of the resource group in which the resources will be created."
  default     = "Function-App-RG-Alok-Raturi"
  type = string
}

variable "communication_service_resource_group" {
  description = "The name of the resource group in which the resources will be created."
  default     = "Communication-Service-RG-Alok-Raturi"
  type = string
}


# DB Variables
variable "cosmosdb_account_name" {
  description = "The name of the Cosmos DB account."
  default     = "tollviolationdbmsraturi"
  type = string
}

variable "cosmosdb_database_name" {
  description = "The name of the Cosmos DB database."
  default     = "Toll-Violation-Detection-System-DB"
  type = string
}

variable "cosmosdb_container_name" {
  description = "The name of the Cosmos DB container."
  default     = ["Challan-Table", "User-Table", "Vehicle-Table","Fastag-Table","Transaction-Table"]
  type =list(string)
}

# Communication Service Variable
variable "communication_service_name" {
  description = "The name of the communication service."
  default     = "Communication-Service-For-Toll"
  type = string
}

variable "email_communication_service_name" {
  description = "The name of the email communication service."
  default     = "Toll-Communication-Service"
  type = string
}

variable "email_communication_service_domain_name" {
  description = "The name of the email communication service domain."
  default     = "AzureManagedDomain"
  type = string
}

variable "data_location_for_communication_service" {
  description = "The data location for the communication service."
  default     = "United States"
  type = string
}


# Function App Variables
variable "function_app_log_storage_name"{
    description = "The name of the storage account for function app logs."
    default     = "raturi012953storage"
    type = string
}

variable "function_app_service_plan"{
    description = "The name of the function app service plan."
    default = "Function-App-Service-Plan"
    type = string
}

variable "function_app_application_insights_name"{
    description = "The name of the function app application insights."
    default = "Function-App-Application-Insights"
    type = string
}

variable "function_app_container"{
    description = "The name of the function app container."
    default = "raturifunctionapp"
    type = string
}

variable "python_version" {
    description = "The python version for the function app."
    default = "3.12"
    type = string  
}

# PUBLIC and Private key
variable "PRIVATE_KEY" {
  default = "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDDW+zlhkJWFM7l\n3wogfndf/9a4qQpXaPWLbRFSyGOJ3CyiizMVx8oCFyDNwjOf3gVR3Kr+wumRJUdr\n+2yQkKP+djal9WGKqG3+teh+AhzOa4vMJZUJHD4X2LMk7sPKWJm9ZS5F3BUYakSe\n5ZBQdzc7PP4ClLnoOI3GXVijj5LWIBX5MNaXWqtobS8uk3fFW8uqF7hN2BWeL/I/\n1n25FIez5StBRvOyXxQw6WlbiIXcnAoSXajwBjqPYYElhj9M3mL3LkZERA0KOKmB\n9UHrXlvQuGwvqM+qz1A4JcVjRzJCqI2Z0BkOeuuzRPpjq1nLO32DKDBslZGi+Rz8\n1P99/0ExAgMBAAECggEAJcAFrvSarPeoY1MOKelGOA6/9z7y+KEXkbGpv01prqIV\nHfO4E2Vf67d8Z0Y3o5TLgl4ZzNDtQVbqzjrvZ6ALkIhXVwprpteVKbsNCgxudJTj\nlrdMbU4/0WvWcjSRMPCeBLMgle9JREaErA/AK0xeJ9xJWUZUBkOnYcV382MzBJ0n\npp4dl8T8KrgQuvn1yVR6Va+BO+Q0EOnjZSP4NmqcQ0XYy4CjoBUmYO57TYnU117q\nsoWrMTDbbd+3p1s41ojjgwNNF4bDpCVBz5mwq3SQ+6eIEjzsQigYkMQ2LZiLaDS8\nDkattNFe9ZXSLxrjKMP/oKoToL+KqE5gIkNgKEh4gQKBgQDHu3cZgu/zqgcjqde3\nEzOr32tIZRi4mjUB44iIpOOeUCOwqZmqnmryiBnNu7+4mMlJvrvN0QIyyp4m7ChP\nbeC9j2TvclcKZ7pVmdFCXUF8h2eU3KjIS5wHN2fvS7p1XbZK27hIhuNkF98/4bAE\nABxrl+wsT5HcjiC27EpHf1t6ZQKBgQD6ZRF3bAQb2nO4qEHNPlIYy0iEYPS7MaBK\nIkKwyRjC8YpAL1byDxYfmIp39wIp57rGcWGJzMfwgb+Fa+03Jz50Kgi7BzcDYm9U\nSzQAvq8jNB7Le6bz0pRC1xVY4rGW4BeIDw8AU9xYaAk6+WOY/pCWmGZ2EU6DmUWM\ns85uA/a43QKBgQCReCQCXK9PFKMmgmkuWbnkkFCe5aLfsNCyk3m5q/5sK4oS/TOC\nZOcXxbClevzkAcN5BoXaHUQwogoV5yJk1248Idgt3WUvmuTHu8QBRdKQVD5I2X3E\ng+0cBGqaitk+6gX+95B8omGzYP+kk0eTYlFQu9GzZDCkJpAFKovfDw8dUQKBgDRK\nIumjfwAqEHyBdqxb1V0kJpKuhK0K4gRZP0AX3rnnIw3gVPHbwKz8d/4xcRw7Lj/+\nsXXLc/1/uvUr4q/f3CT6GjSkfxKP3dvmkIePSpe5bKzlt6m3UgrbS7PyM0/koEVj\nj6hr2toDb9oG9oueraclUFBbsN++hE2rxvImlcFpAoGBAL+uD1ULUXiQ6rH8jQUY\n5LFzV/vFp5xwFpUPkYFkN3o/3t+1R1Wlv3chHjWbaH4PcfRL9jVEFHLSlIslkQ1D\nfo2YBWl0q0xA7oEm8SYlq4C4K4iOPQRpjX2BNXLa7WHTPVWpbjzlskDm+s1x3jql\nmS6ddlwjUy5m2dKtmLCBfs8z\n-----END PRIVATE KEY-----\n"
  type = string
}

# Blob URL for the function code
variable "blob_url" {
description = "Blob link for Function Deployment"
type = string
}
