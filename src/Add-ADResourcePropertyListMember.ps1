<#
.SYNOPSIS
Добавляет одно или несколько свойств ресурса в список свойств ресурса в Active Directory.

.DESCRIPTION
Команда `Add-ADResourcePropertyListMember` добавляет одно или несколько свойств ресурса в список свойств ресурса в Active Directory.

.PARAMETER WhatIf
Показывает, что произойдет, если команда будет запущена. Команда не будет запущена.

.PARAMETER Confirm
Запрашивает подтверждение перед запуском команды.

.PARAMETER AuthType
Указывает метод аутентификации для использования. Допустимые значения для этого параметра: Negotiate или 0, Basic или 1.

.PARAMETER Credential
Указывает учетные данные пользователя для выполнения этой задачи.

.PARAMETER Identity
Указывает объект Active Directory, предоставляя одно из следующих значений свойства: уникальное имя, GUID (objectGUID).

.PARAMETER Members
Указывает набор объектов ADResourceProperty в списке, разделенном запятыми, для добавления в список свойств ресурса.

.PARAMETER PassThru
Возвращает объект, представляющий элемент, с которым вы работаете. По умолчанию эта команда не генерирует никакого вывода.

.PARAMETER Server
Указывает экземпляр служб Active Directory Domain Services, к которому необходимо подключиться, предоставляя одно из следующих значений для соответствующего имени домена или сервера каталога.

#>
function Add-ADResourcePropertyListMember {
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param (
        [switch]$WhatIf,
        [switch]$Confirm,
        [ADAuthType]$AuthType,
        [PSCredential]$Credential,
        [ADResourcePropertyList]$Identity,
        [ADResourceProperty[]]$Members,
        [switch]$PassThru,
        [string]$Server
    )

    # Empty implementation
}

