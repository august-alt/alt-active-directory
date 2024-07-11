<#
.SYNOPSIS
Команда Add-ADDomainControllerPasswordReplicationPolicy добавляет одного или нескольких пользователей,
компьютеров и групп в список разрешенных или запрещенных учетных записей политики репликации паролей только для чтения контроллера домена (RODC).

.PARAMETER AllowedList
Указывает пользователей, компьютеры, группы или другие учетные записи, которые необходимо добавить в список учетных записей, которым разрешено копировать свои пароли в этот RODC.

.PARAMETER AuthType
Указывает метод аутентификации для использования.

.PARAMETER Credential
Указывает учетные данные пользователя для выполнения этой задачи.

.PARAMETER DeniedList
Specifies the users, computers, groups or other accounts to add to the list of accounts that are denied the right to replicate their passwords to this RODC.

.PARAMETER Identity
Указывает объект контроллера домена Active Directory, предоставляя одно из следующих значений.

.PARAMETER Server
Указывает экземпляр служб Active Directory Domain Services для подключения.

.PARAMETER WhatIf
Показывает, что произойдет, если запустить команду.

.PARAMETER Confirm
Запрашивает подтверждение перед запуском команды.

.INPUTS
ADDomainController

.OUTPUTS
Ничего

.NOTES
Этот командлет не работает с облегченными службами каталогов Active Directory.
Этот командлет не работает с контроллером домена, доступным только для чтения.
Этот командлет не работает с моментальным снимком Active Directory.

.RELATED LINKS
Get-ADDomainController
Get-ADDomainControllerPasswordReplicationPolicy
#>
function Add-ADDomainControllerPasswordReplicationPolicy {
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param (
        [Parameter(Mandatory=$true, ValueFromPipeline=$false)]
        [ADPrincipal[]]$AllowedList,
        [Parameter(Mandatory=$true, ValueFromPipeline=$false)]
        [ADPrincipal[]]$DeniedList,
        [Parameter(ValueFromPipeline=$false)]
        [ADAuthType]$AuthType,
        [Parameter(ValueFromPipeline=$false)]
        [PSCredential]$Credential,
        [Parameter(ValueFromPipeline=$true)]
        [ADDomainController]$Identity,
        [Parameter(ValueFromPipeline=$false)]
        [string]$Server,
        [switch]$WhatIf,
        [switch]$Confirm
    )

    # Empty implementation
}
