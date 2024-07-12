<#
.SYNOPSIS
Добавляет одного или нескольких членов в группу Active Directory.

.DESCRIPTION
Команда Add-ADGroupMember добавляет одного или нескольких пользователей, групп, учетных записей сервиса или компьютеров в качестве новых членов группы Active Directory.

.PARAMETER WhatIf
Показывает, что произойдет, если команда будет запущена.

.PARAMETER Confirm
Запрашивает подтверждение перед запуском команды.

.PARAMETER AuthType
Указывает метод аутентификации для использования. Допустимые значения для этого параметра: Negotiate или 0, Basic или 1.

.PARAMETER Credential
Указывает учетные данные пользователя для выполнения этой задачи.

.PARAMETER Identity
Указывает объект группы Active Directory, предоставляя одно из следующих значений: уникальное имя, GUID (objectGUID), идентификатор безопасности (objectSid) или имя учетной записи Security Accounts Manager (sAMAccountName).

.PARAMETER Members
Указывает массив объектов пользователей, групп и компьютеров в списке, разделенном запятыми, для добавления в группу.

.PARAMETER MemberTimeToLive
Указывает время жизни (TTL) для новых членов группы.

.PARAMETER Partition
Указывает уникальное имя раздела Active Directory.

.PARAMETER PassThru
Возвращает объект, представляющий элемент, с которым вы работаете. По умолчанию, эта команда не генерирует никакого вывода.

.PARAMETER Server
Указывает экземпляр служб Active Directory Domain Services, к которому необходимо подключиться, предоставляя одно из следующих значений для соответствующего имени домена или сервера каталога.

.PARAMETER DisablePermissiveModify
Обновления членства в группе используют пермиссивное изменение по умолчанию. Это подавляет ошибку при добавлении члена, который уже является членом группы.

.INPUTS
ADGroup

.OUTPUTS
Ничего или ADGroup

.NOTES
This cmdlet does not work with a read-only domain controller.
This cmdlet does not work with an Active Directory snapshot.
This cmdlet will allow you to add a group as a member of itself which could lead to unstable behavior.

.LINK
Add-ADPrincipalGroupMembership
Get-ADGroup
Get-ADGroupMember
Get-ADPrincipalGroupMembership
Remove-ADGroupMember
Remove-ADPrincipalGroupMembership
#>
function Add-ADGroupMember {
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param (
        [switch]$WhatIf,
        [switch]$Confirm,
        [ADAuthType]$AuthType,
        [PSCredential]$Credential,
        [ADGroup]$Identity,
        [ADPrincipal[]]$Members,
        [System.TimeSpan]$MemberTimeToLive,
        [string]$Partition,
        [switch]$PassThru,
        [string]$Server,
        [switch]$DisablePermissiveModify
    )

    # TO DO: implement the function
}
