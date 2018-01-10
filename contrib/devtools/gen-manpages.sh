#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BITCOINBRIDGED=${BITCOINBRIDGED:-$SRCDIR/bitcoinbridged}
BITCOINBRIDGECLI=${BITCOINBRIDGECLI:-$SRCDIR/bitcoinbridge-cli}
BITCOINBRIDGETX=${BITCOINBRIDGETX:-$SRCDIR/bitcoinbridge-tx}
BITCOINBRIDGEQT=${BITCOINBRIDGEQT:-$SRCDIR/qt/bitcoinbridge-qt}

[ ! -x $BITCOINBRIDGED ] && echo "$BITCOINBRIDGED not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
BCBVER=($($BITCOINBRIDGECLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for bitcoinbridged if --version-string is not set,
# but has different outcomes for bitcoinbridge-qt and bitcoinbridge-cli.
echo "[COPYRIGHT]" > footer.h2m
$BITCOINBRIDGED --version | sed -n '1!p' >> footer.h2m

for cmd in $BITCOINBRIDGED $BITCOINBRIDGECLI $BITCOINBRIDGETX $BITCOINBRIDGEQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BCBVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BCBVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
