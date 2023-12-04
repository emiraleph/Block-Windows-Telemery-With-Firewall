# By EmirAleph
# https://github.com/emiraleph/Block-Windows-Telemery-With-Firewall

# Set all firewall profiles
Set-NetFirewallProfile -all

# List of IP addresses to block
$telemetryAddresses = @{
    "telemetry_vortex.data.microsoft.com"                = "191.232.139.254";
    "telemetry_telecommand.telemetry.microsoft.com"      = "65.55.252.92";
    "telemetry_oca.telemetry.microsoft.com"              = "65.55.252.63";
    "telemetry_sqm.telemetry.microsoft.com"              = "65.55.252.93";
    "telemetry_watson.telemetry.microsoft.com"           = "65.55.252.43,65.52.108.29";
    "telemetry_redir.metaservices.microsoft.com"         = "194.44.4.200,194.44.4.208";
    "telemetry_choice.microsoft.com"                     = "157.56.91.77";
    "telemetry_df.telemetry.microsoft.com"               = "65.52.100.7";
    "telemetry_reports.wes.df.telemetry.microsoft.com"   = "65.52.100.91";
    "telemetry_wes.df.telemetry.microsoft.com"           = "65.52.100.93";
    "telemetry_services.wes.df.telemetry.microsoft.com"  = "65.52.100.92";
    "telemetry_sqm.df.telemetry.microsoft.com"           = "65.52.100.94";
    "telemetry_telemetry.microsoft.com"                  = "65.52.100.9";
    "telemetry_watson.ppe.telemetry.microsoft.com"       = "65.52.100.11";
    "telemetry_telemetry.appex.bing.net"                 = "168.63.108.233";
    "telemetry_telemetry.urs.microsoft.com"              = "157.56.74.250";
    "telemetry_settings-sandbox.data.microsoft.com"      = "111.221.29.177";
    "telemetry_vortex-sandbox.data.microsoft.com"        = "64.4.54.32";
    "telemetry_survey.watson.microsoft.com"              = "207.68.166.254";
    "telemetry_watson.live.com"                          = "207.46.223.94";
    "telemetry_watson.microsoft.com"                     = "65.55.252.71";
    "telemetry_statsfe2.ws.microsoft.com"                = "64.4.54.22";
    "telemetry_corpext.msitadfs.glbdns2.microsoft.com"   = "131.107.113.238";
    "telemetry_compatexchange.cloudapp.net"              = "23.99.10.11";
    "telemetry_cs1.wpc.v0cdn.net"                        = "68.232.34.200";
    "telemetry_a-0001.a-msedge.net"                      = "204.79.197.200";
    "telemetry_statsfe2.update.microsoft.com.akadns.net" = "64.4.54.22";
    "telemetry_sls.update.microsoft.com.akadns.net"      = "157.56.77.139";
    "telemetry_fe2.update.microsoft.com.akadns.net"      = "134.170.58.121,134.170.58.123,134.170.53.29,66.119.144.190,134.170.58.189,134.170.58.118,134.170.53.30,134.170.51.190";
    "telemetry_diagnostics.support.microsoft.com"        = "157.56.121.89";
    "telemetry_corp.sts.microsoft.com"                   = "131.107.113.238";
    "telemetry_statsfe1.ws.microsoft.com"                = "134.170.115.60";
    "telemetry_pre.footprintpredict.com"                 = "204.79.197.200";
    "telemetry_i1.services.social.microsoft.com"         = "104.82.22.249";
    "telemetry_feedback.windows.com"                     = "134.170.185.70";
    "telemetry_feedback.microsoft-hohm.com"              = "64.4.6.100;65.55.39.10";
    "telemetry_feedback.search.microsoft.com"            = "157.55.129.21";
    "telemetry_rad.msn.com"                              = "207.46.194.25";
    "telemetry_preview.msn.com"                          = "23.102.21.4";
    "telemetry_dart.l.doubleclick.net"                   = "173.194.113.220,173.194.113.219,216.58.209.166";
    "telemetry_ads.msn.com"                              = "157.56.91.82,157.56.23.91,104.82.14.146,207.123.56.252,185.13.160.61,8.254.209.254";
    "telemetry_a.ads1.msn.com"                           = "198.78.208.254,185.13.160.61";
    "telemetry_global.msads.net.c.footprint.net"         = "185.13.160.61,8.254.209.254,207.123.56.252";
    "telemetry_az361816.vo.msecnd.net"                   = "68.232.34.200";
    "telemetry_oca.telemetry.microsoft.com.nsatc.net"    = "65.55.252.63";
    "telemetry_ssw.live.com"                             = "207.46.101.29";
    "telemetry_msnbot-65-55-108-23.search.msn.com"       = "65.55.108.23";
    "telemetry_a23-218-212-69.deploy.static.akamaitechnologies.com" = "23.218.212.69";
}

# Counter for progress
$totalAddresses = $telemetryAddresses.Count
$processedAddresses = 0

# Adding firewall rules to block IP addresses
foreach ($ruleName in $telemetryAddresses.Keys) {
    $address = $telemetryAddresses[$ruleName]
    
    # Loop to add the rules into the firewall
    $output = netsh advfirewall firewall add rule name=$ruleName dir=out action=block remoteip=$address enable=yes 2>&1
    
    # Check if the rule was added successfully
    if ($output -match "Ok.") {
        $processedAddresses++
    }
    
    # Show custom progress bar on the same line
    $progress = [math]::Ceiling(($processedAddresses / $totalAddresses) * 100)
    $progressString = '[' + ('#' * $progress) + (' ' * (100 - $progress)) + '] ' + $progress + '% Completed...'

    # Clear the current line and write the new progress
    Write-Host ("`r" + $progressString) -NoNewline
}

# Ensure the progress bar reaches 100%
$progressString = '[' + ('#' * 100) + '] 100% Completed...'
Write-Host ("`r" + $progressString)
Write-Host ""

# Exit message
Write-Host "Total rules added successfully: $processedAddresses - Spected: 47"
Write-Host "Press any key to exit."

# Wait for any key press
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')

Write-Host "Exiting the script."
