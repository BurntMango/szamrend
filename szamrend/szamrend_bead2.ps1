$input = Import-CSV -Delimiter ";" -Path "$PSScriptRoot\teszt.txt" -Header "Idopont", "Sebesseg", "TavolsagEleje", "TavolsagHatulja"
$K = 100
$input | ForEach-Object {
    if ([int]$_.TavolsagEleje -lt $K) {
        $_.Idopont
    }
}
