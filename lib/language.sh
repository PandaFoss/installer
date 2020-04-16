#!/usr/bin/env bash
###############################################################
### Anarchy Linux Install Script
### language.sh
###
### Copyright (C) 2017 Dylan Schacht
###
### By: Dylan Schacht (deadhead)
### Email: deadhead3492@gmail.com
### Webpage: https://anarchylinux.org
###
### Any questions, comments, or bug reports may be sent to above
### email address. Enjoy, and keep on using Arch.
###
### License: GPL v2.0
###############################################################

language() {

    echo "$(date -u "+%F %H:%M") : Start anarchy installer" > "${log}"
    op_title=" -| Language Select |- "
    ILANG=$(dialog --nocancel --menu "\nAnarchy Installer\n\n \Z2*\Zn Select your install language:" 20 60 10 \
        "English" "-" \
        "Bulgarian" "Български" \
        "Dutch" "Nederlands" \
        "French" "Français" \
        "German" "Deutsch" \
        "Greek" "Greek" \
        "Hungarian" "Magyar" \
        "Indonesian" "bahasa Indonesia" \
        "Italian" "Italiano" \
        "Latvian" "Latviešu" \
        "Lithuanian" "Lietuvių" \
        "Polish" "Polski" \
        "Portuguese" "Português" \
        "Portuguese-Brazilian" "Português do Brasil" \
        "Romanian" "Română" \
        "Russian" "Russian" \
        "Spanish" "Español" \
        "Swedish" "Svenska" 3>&1 1>&2 2>&3)

    for FILE in $(ls -Imo po); do
        msgfmt -v /usr/share/anarchy/lang/${FILE} -o /usr/share/anarchy/lang/mo/${FILE} &>/dev/null
    done

    case "$ILANG" in
        "English") 
            install en_EN.mo /usr/share/locale/en_EN/LC_MESSAGES/anarchy.mo
            export LANGUAGUE=en_EN
            ;;
        "Bulgarian") 
            install bg_BG.mo /usr/share/locale/bg_BG/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=bg_BG
            ;;
        "Dutch") 
            install nl_NL.mo /usr/share/locale/nl_NL/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=nl_NL
            ;;
        "French") 
            install fr_FR.mo /usr/share/locale/fr_FR/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=fr_FR
            ;;
        "German") 
            install de_DE.mo /usr/share/locale/de_DE/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=de_DE
            ;;
        "Greek") 
            install el_GR.mo /usr/share/locale/el/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=el_GR
            ;;
        "Hungarian") 
            install hu_HU.mo /usr/share/locale/hu_HU/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=hu_HU
            ;;
        "Indonesian") 
            install id_ID.mo /usr/share/locale/id_ID/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=id_ID
            ;;
        "Italian") 
            install it_IT.mo /usr/share/locale/it_IT/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=it_IT
            ;;
        "Latvian") 
            install lv_LV.mo /usr/share/locale/lv_LV/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=lv_LV
            ;;
        "Lithuanian") 
            install lt_LT.mo /usr/share/locale/lt_LT/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=lt_LT
            ;;
        "Polish") 
            install pl_PL.mo /usr/share/locale/pl_PL/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=pl_PL
            ;;
        "Portuguese") 
            install pt_PT.mo /usr/share/locale/pt_PT/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=pt_PT
            ;;
        "Portuguese-Brazilian") 
            install pt_BR.mo /usr/share/locale/pt_BR/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=pt_BR
            ;;
        "Romanian") 
            install ro_RO.mo /usr/share/locale/ro_RO/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=ro_RO
            ;;
        "Russian") 
            install ru_RU.mo /usr/share/locale/ru_RU/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=ru_RU
            ;;
        "Spanish") 
            install es_ES.mo /usr/share/locale/es_ES/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=es_ES
            ;;
        "Swedish") 
            install sv_SE.mo /usr/share/locale/sv/LC_MESSAGES/anarchy.mo 
            export LANGUAGUE=sv_SE
            ;;
    esac

}

# vim: ai:ts=4:sw=4:et
