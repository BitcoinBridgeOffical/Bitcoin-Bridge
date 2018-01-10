// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BITCOINBRIDGE_QT_BITCOINBRIDGEADDRESSVALIDATOR_H
#define BITCOINBRIDGE_QT_BITCOINBRIDGEADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class BitcoinBridgeAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit BitcoinBridgeAddressEntryValidator(QObject* parent);

    State validate(QString& input, int& pos) const;
};

/** BitcoinBridge address widget validator, checks for a valid bitcoinbridge address.
 */
class BitcoinBridgeAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit BitcoinBridgeAddressCheckValidator(QObject* parent);

    State validate(QString& input, int& pos) const;
};

#endif // BITCOINBRIDGE_QT_BITCOINBRIDGEADDRESSVALIDATOR_H
