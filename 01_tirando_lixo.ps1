# CONFIRAÇÃO INICIAL
# Preferencialmente execute o PowerShell Administrador

# O código abaixo irá remover todos os apps de todos os usuários, menos o app que contiver o fragmento store no nome
# where-object {$_.name -notlike "*store*"} insira mais destes para evitar que outros códigos pacotes sejá removidos.
Get-AppxPackage -Allusers | where-object {$_.name -notlike "*store*"} | Remove-AppxPackage

# O código abaixo irá limpar a pasta abaixo.
rm C:\Windows\'Downloaded Program Files'\*

#instale o Chocolatey ou então instale manualmente os apps se preferir

# Desabilita a notificação de novo recurso instalado. Deve prevenir a mudança que o windows faz nos app padrões.
# Fonte: https://devblogs.microsoft.com/scripting/update-or-add-registry-key-value-with-powershell/
#        https://docs.microsoft.com/en-us/powershell/scripting/samples/working-with-registry-entries?view=powershell-7.1
#        https://www.howtogeek.com/260420/how-to-disable-the-new-app-installed-notification-in-windows-8-and-10/
$localRegistro = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
$nomeRecurso = "NoNewAppAlert"
$valor = "1"
IF (!(Test-Path $localRegistro)) {
  New-Item -Path $localRegistro -Force | Out-Null
  New-ItemProperty -Path $localRegistro -Name $nome -Value $valor -PropertyType DWORD -Force | Out-Null
}
ELSE {
  New-ItemProperty -Path $localRegistro -Name $nome -Value $valor -PropertyType DWORD -Force | Out-Null
}