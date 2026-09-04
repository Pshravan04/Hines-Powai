$replacements = [ordered]@{
    "Rustomjee Ozone Goregaon West" = "Hines Powai"
    "Rustomjee Ozone Goregaon" = "Hines Powai"
    "Rustomjee Ozone (New Phase)" = "Hines Powai"
    "Rustomjee OZONE SKYE" = "Hines Powai"
    "Rustomjee Ozone" = "Hines Powai"
    "Rustomjee Developers" = "Hines"
    "Rustomjee Developer" = "Hines"
    "Rustomjee" = "Hines"
    "SV Road, Mahesh Nagar, Goregaon West, Mumbai" = "Powai, Mumbai"
    "SV Road, Goregaon West" = "Powai, Mumbai"
    "Goregaon West" = "Powai"
    "Goregaon W" = "Powai"
    "Goregaon" = "Powai"
    "Kandivali East" = "Powai"
    "SV Road" = "Powai"
    "Mahesh Nagar" = "Powai"
    "Western Express Highway" = "JVLR"
    "Goregaon-Mulund Link Road (GMLR)" = "Jogeshwari-Vikhroli Link Road (JVLR)"
    "Versova-Dahisar Coastal Road" = "Eastern Express Highway"
    "Premium 2 & 3 BHK Apartments" = "Premium 3, 4 & 5 BHK Apartments"
    "2 & 3 BHK" = "3, 4 & 5 BHK"
    "2, 3 & 4 BHK" = "3, 4 & 5 BHK"
    "₹ 2.52 Cr All Inclusive" = "Price On Request"
    "&#8377; 2.52 Cr All Inclusive" = "Price On Request"
    "₹ 2.52 Cr*" = "Price On Request"
    "&#8377; 2.52 Cr*" = "Price On Request"
    "₹ 3.37 Cr*" = "Price On Request"
    "&#8377; 3.37 Cr*" = "Price On Request"
    "G+51 Storeys" = "High-Rise Towers"
    "G+51 high-rise" = "Premium high-rise"
    "G+51" = "High-Rise"
    "49th Level" = "Top Level"
    "49<sup class=`"text-sm`">th</sup> Level" = "Top Level"
    "PR1180002601227" = "Coming Soon"
    "10:15:25:25" = "Attractive Payment Plan"
    "751.87 - 1,029.58 sqft" = "Spacious Layouts"
    "751.87 - 786.31 sq.ft." = "Spacious Layouts"
    "1,010.63 - 1,029.58 sq.ft." = "Spacious Layouts"
    ">2 BHK<" = ">3 BHK<"
    ">3 BHK<" = ">4 BHK<"
    "assets/rustomjee-ozone" = "assets/hines-powai"
}

$files = Get-ChildItem -Path "d:\TGM - sites\hiens\*.html"
foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    foreach ($key in $replacements.Keys) {
        $content = $content.Replace($key, $replacements[$key])
    }
    Set-Content -Path $file.FullName -Value $content -Encoding UTF8
    Write-Host "Updated $($file.Name)"
}
