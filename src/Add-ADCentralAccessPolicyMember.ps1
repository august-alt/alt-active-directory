<#
.SYNOPSIS
Добавляет центральные правила доступа к политике центрального доступа в Active Directory.

.PARAMETER WhatIf
Показывает, что произойдет, если запустить cmdlet. Cmdlet не запускается.

.PARAMETER Confirm
Запрашивает подтверждение перед запуском cmdlet.

.PARAMETER AuthType
Указывает метод аутентификации для использования.
Допустимые значения: Negotiate, Basic

.PARAMETER Credential
Указывает учетные данные пользователя для выполнения этой задачи.

.PARAMETER Identity
Указывает объект Active Directory, предоставляя одно из следующих значений свойства: 
дistinguished name, GUID (objectGUID), идентификатор безопасности (objectSid) или имя учетной записи SAM (sAMAccountName).

.PARAMETER Members
Указывает набор объектов центральных правил доступа (CAR) в списке, разделенном запятыми, для добавления к политике центрального доступа.

.PARAMETER PassThru
Возвращает объект, представляющий элемент, с которым вы работаете.

.PARAMETER Server
Указывает экземпляр служб Active Directory Domain Services для подключения к нему.

#>
function Add-ADCentralAccessPolicyMember  {
     [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param  (
         [switch]$WhatIf,
         [switch]$Confirm,
         [AltLinux.ActiveDirectory.Management.ADAuthType]$AuthType,
         [System.Management.Automation.PSCredential]$Credential,
         [parameter(Mandatory=$true, ValueFromPipeline=$true)]
         [AltLinux.ActiveDirectory.Management.ADCentralAccessPolicy]$Identity,
         [parameter(Mandatory=$true)]
         [AltLinux.ActiveDirectory.Management.ADCentralAccessRule[]]$Members,
         [switch]$PassThru,
         [string]$Server
     )

     # Empty implementation
}
