{ config, pkgs, ... }:

{
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  services.printing = {
    enable = true;

    drivers = with pkgs; [
      hplip
    ];
  };

  environment.systemPackages = with pkgs; [
    hplip
  ];

  hardware.printers = {
    ensurePrinters = [
      {
        name = "HP_OfficeJet_Pro_9010_series_5D8C46";
        deviceUri = "dnssd://HP%20OfficeJet%20Pro%209010%20series%20%5B5D8C46%5D._ipp._tcp.local/?uuid=4436e9ab-6253-4264-88c6-b1a78d982196";
        model = "everywhere";
      }
    ];

    ensureDefaultPrinter = "HP_OfficeJet_Pro_9010_series_5D8C46";
  };
}