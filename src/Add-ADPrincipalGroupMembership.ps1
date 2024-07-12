<#
.SYNOPSIS
Добавляет участника в одну или несколько групп Active Directory.

.DESCRIPTION
Команда Add-ADPrincipalGroupMembership добавляет пользователя, группу, учетную запись сервиса или компьютер как нового члена в одну или несколько групп Active Directory.

.PARAMETER WhatIf
Показывает, что произойдет, если команда будет запущена.

.PARAMETER Confirm
Запрашивает подтверждение перед запуском команды.

.PARAMETER AuthType
Указывает метод аутентификации для использования. Допустимые значения для этого параметра: Negotiate или 0, Basic или 1.

.PARAMETER Credential
Указывает учетные данные пользователя для выполнения этой задачи.

.PARAMETER Identity
Указывает объект принципала Active Directory, предоставляя одно из следующих значений свойства: уникальное имя, GUID, идентификатор безопасности или имя учетной записи SAM.

.PARAMETER MemberOf
Указывает группы Active Directory, к которым добавляется пользователь, компьютер или группа в качестве члена.

.PARAMETER Partition
Указывает отличное имя раздела Active Directory.

.PARAMETER PassThru
Возвращает объект, представляющий элемент, с которым вы работаете.

.PARAMETER Server
Указывает экземпляр служб домена Active Directory, к которому подключаться.

.INPUTS
ADPrincipal

.OUTPUTS
Ничего или ADPrincipal

.NOTES
Этот командлет не работает с контроллером домена, доступным только для чтения.
Этот командлет не работает со снимком Active Directory.

.LINK
Add-ADGroupMember
Get-ADComputer
Get-ADGroup
Get-ADGroupMember
Get-ADPrincipalGroupMembership
Get-ADUser
Remove-ADGroupMember
Remove-ADPrincipalGroupMembership
#>
function Add-ADPrincipalGroupMembership {
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param (
        [switch]$WhatIf,
        [switch]$Confirm,
        [ADAuthType]$AuthType,
        [PSCredential]$Credential,
        [ADPrincipal]$Identity,
        [ADGroup[]]$MemberOf,
        [string]$Partition,
        [switch]$PassThru,
        [string]$Server
    )

    # Empty implementation
}
