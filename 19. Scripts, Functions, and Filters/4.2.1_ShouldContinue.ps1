function Test-ShouldContinue {
    [CmdletBinding(SupportsShouldProcess)]
    param ( )

    $yesToAll = $noToAll = $false
    if ($pscmdlet.ShouldContinue(
            "Warning: Deleting SomeObject $value",
            'Question: Are you sure you want to do continue?')) {

        Write-Host 'Deleting SomeObject' -ForegroundColor Cyan
    }
}