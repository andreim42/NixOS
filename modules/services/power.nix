{
  services.tlp = {
    enable = true;

    pd.enable = true;

    settings = {
      STOP_CHARGE_THRESH_BAT0 = 80;
      TLP_AUTO_SWITCH = 0;
      TLP_DEFAULT_MODE = "BAL";
    };
  };

  services.power-profiles-daemon.enable = false;
}