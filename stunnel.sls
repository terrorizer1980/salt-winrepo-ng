# just 32-bit x86 installer available
{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}
stunnel_x86:
  Not Found:
    full_name: 'stunnel'
    installer: 'https://www.stunnel.org/downloads/stunnel-5.22-installer.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\stunnel\uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
