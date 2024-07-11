<#
.SYNOPSIS
Добавляет одну или несколько учетных записей сервиса к компьютеру Active Directory.

.DESCRIPTION
Команда Add-ADComputerServiceAccount добавляет одну или несколько учетных записей компьютера Active Directory.

.PARAMETER AuthType
Указывает метод аутентификации для использования. Допустимые значения для этого параметра: Negotiate или 0, Basic или 1.

.PARAMETER Confirm
Запрашивает подтверждение перед запуском команды.

.PARAMETER Credential
Указывает учетные данные пользователя для выполнения этой задачи.

.PARAMETER Identity
Указывает объект компьютера Active Directory, предоставляя одно из следующих значений свойства: уникальное имя, GUID, идентификатор безопасности (SID) или имя учетной записи Security Accounts Manager (SAM).

.PARAMETER Partition
Указывает уникальное имя раздела Active Directory.

.PARAMETER PassThru
Возвращает объект, представляющий элемент, с которым вы работаете.

.PARAMETER Server
Указывает экземпляр служб Active Directory Domain Services для подключения.

.PARAMETER ServiceAccount
Указывает один или несколько учетных записей сервиса Active Directory.

.PARAMETER WhatIf
Показывает, что произойдет, если команда будет запущена. Команда не запускается.

.EXAMPLE
Add-ADComputerServiceAccount  -Computer ComputerAcct1  -ServiceAccount SvcAcct1

.EXAMPLE
Add-ADComputerServiceAccount  -Computer ComputerAcct1  -ServiceAccount SvcAcct1, SvcAcct2

.INPUTS
ADComputer

.OUTPUTS
None or ADComputer

.NOTES
Эта команда не работает с AD LDS.
Эта команда не работает с контроллером домена только для чтения.
Эта команда не работает при целевом использовании моментального снимка с помощью параметра Server.

.LINK
Get-ADComputer
Get-ADComputerServiceAccount
Remove-ADComputerServiceAccount
AD DS Administration Cmdlets in Windows PowerShell
#>
function Add-ADComputerServiceAccount {
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param (
        [Parameter(Mandatory=$false)]
        [ADAuthType]$AuthType,
        [Parameter(Mandatory=$false)]
        [Switch]$Confirm,
        [Parameter(Mandatory=$false)]
        [PSCredential]$Credential,
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [ADComputer]$Identity,
        [Parameter(Mandatory=$false)]
        [String]$Partition,
        [Parameter(Mandatory=$false)]
        [Switch]$PassThru,
        [Parameter(Mandatory=$false)]
        [String]$Server,
        [Parameter(Mandatory=$true)]
        [ADServiceAccount[]]$ServiceAccount,
        [Parameter(Mandatory=$false)]
        [Switch]$WhatIf
    )

    # Empty implementation
}
