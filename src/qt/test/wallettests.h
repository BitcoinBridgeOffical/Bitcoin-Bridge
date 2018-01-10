#ifndef BITCOINBRIDGE_QT_TEST_WALLETTESTS_H
#define BITCOINBRIDGE_QT_TEST_WALLETTESTS_H

#include <QObject>
#include <QTest>

class WalletTests : public QObject
{
    Q_OBJECT

private Q_SLOTS:
    void walletTests();
};

#endif // BITCOINBRIDGE_QT_TEST_WALLETTESTS_H
