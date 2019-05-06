### Eriberto
### @eribertos
### Script para fazer upload de arquivos
### 2019050601

Install-Module -Name AWSPowerShell

#Carregando Extensao AWS Powershell 
import-module "C:\Program Files (x86)\AWS Tools\PowerShell\AWSPowerShell\AWSPowerShell.psd1"

#Setando credenciais com acesso ao Bucket
Set-AWSCredentials -AccessKey INCLUIRACCESSKEY  -SecretKey INCLUIRSECRETKEY -StoreAs default

#Apontando diretorio de origen e destino
#Exemplo write-s3object -BucketName NOMEDOBUCKET -Folder DIRETORIO-LOCAL -keyprefix DIRETORIO-REMOTO -recurse
write-s3object -BucketName NOMEBUCKET -Folder DIRETORIO-LOCAL -keyprefix DIRETORIO-REMOTO\ -recurse
