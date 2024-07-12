<#
.SYNOPSIS
Применяет политику паролей с тонкой настройкой к одному или нескольким пользователям и группам.

.DESCRIPTION
Команда Add-ADFineGrainedPasswordPolicySubject применяет политику паролей с тонкой настройкой к одному или нескольким глобальным группам безопасности и пользователям.

.PARAMETER AuthType
Указывает метод аутентификации для использования. Допустимые значения для этого параметра: Negotiate или 0, Basic или 1.
Стандартный метод аутентификации - Negotiate.

.PARAMETER Confirm
Запрашивает подтверждение перед запуском команды.

.PARAMETER Credential
Указывает учетные данные пользователя для выполнения этой задачи.

.PARAMETER Identity
Указывает объект политики паролей с тонкой настройкой Active Directory, предоставляя одно из следующих значений свойства: уникальное имя, GUID или имя.

.PARAMETER Partition
Указывает отличное имя раздела Active Directory.

.PARAMETER PassThru
Возвращает объект, представляющий элемент, с которым вы работаете.

.PARAMETER Server
Указывает экземпляр служб Active Directory Domain Services для подключения.

.PARAMETER Subjects
Указывает одного или нескольких пользователей или групп.

.PARAMETER WhatIf
Показывает, что произойдет, если команда будет запущена.

.EXAMPLE
Add-ADFineGrainedPasswordPolicySubject -Identity DomainUsersPSO -Subjects 'Domain Users'

.EXAMPLE
Add-ADFineGrainedPasswordPolicySubject -Identity DlgtdAdminsPSO -Subjects BobKe, KimAb

.EXAMPLE
Add-ADFineGrainedPasswordPolicySubject -Identity DlgtdAdminsPSO -Subjects DlgtdAdminGroup

.EXAMPLE
Get-ADUser -Filter "lastname -eq 'Fuller'" | Add-ADFineGrainedPasswordPolicySubject -Identity DlgtdAdminsPSO

.INPUTS
ADFineGrainedPasswordPolicy, ADPrincipal

.OUTPUTS
Ничего или ADFineGrainedPasswordPolicy

.NOTES
This cmdlet does not work with AD LDS.
This cmdlet does not work with a read-only domain controller.
This cmdlet does not work with an Active Directory snapshot.

.RELATED LINKS
Get-ADFineGrainedPasswordPolicySubject
Remove-ADFineGrainedPasswordPolicySubject
#>
function Add-ADFineGrainedPasswordPolicySubject {
    [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param (
        [Parameter(Mandatory=$false)]
        [ADAuthType]$AuthType,
        [Parameter(Mandatory=$false)]
        [Switch]$Confirm,
        [Parameter(Mandatory=$false)]
        [PSCredential]$Credential,
        [Parameter(Mandatory=$true, Position=0)]
        [ADFineGrainedPasswordPolicy]$Identity,
        [Parameter(Mandatory=$false)]
        [String]$Partition,
        [Parameter(Mandatory=$false)]
        [Switch]$PassThru,
        [Parameter(Mandatory=$false)]
        [String]$Server,
        [Parameter(Mandatory=$true, Position=1)]
        [ADPrincipal[]]$Subjects,
        [Parameter(Mandatory=$false)]
        [Switch]$WhatIf
    )

    # TO DO: implement the function
}
