// qitemmodelbardataproxy.sip generated by MetaSIP
//
// This file is part of the QtDataVisualization Python extension module.
//
// Copyright (c) 2017 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQtDataVisualization.
// 
// This file may be used under the terms of the GNU General Public License
// version 3.0 as published by the Free Software Foundation and appearing in
// the file LICENSE included in the packaging of this file.  Please review the
// following information to ensure the GNU General Public License version 3.0
// requirements will be met: http://www.gnu.org/copyleft/gpl.html.
// 
// If you do not wish to use this file under the terms of the GPL version 3.0
// then you may purchase a commercial license.  For more information contact
// info@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


namespace QtDataVisualization
{
%TypeHeaderCode
#include <qitemmodelbardataproxy.h>
%End

    class QItemModelBarDataProxy : QtDataVisualization::QBarDataProxy
    {
%TypeHeaderCode
#include <qitemmodelbardataproxy.h>
%End

    public:
%If (QtDataVisualization_1_1_0 -)
        QItemModelBarDataProxy(QAbstractItemModel *itemModel /KeepReference=120/, QObject *parent /TransferThis/ = 0);
%End
%If (- QtDataVisualization_1_1_0)
        QItemModelBarDataProxy(const QAbstractItemModel *itemModel /KeepReference=120/, QObject *parent /TransferThis/ = 0);
%End
%If (QtDataVisualization_1_1_0 -)
        QItemModelBarDataProxy(QAbstractItemModel *itemModel /KeepReference=120/, const QString &valueRole, QObject *parent /TransferThis/ = 0);
%End
%If (- QtDataVisualization_1_1_0)
        QItemModelBarDataProxy(const QAbstractItemModel *itemModel /KeepReference=120/, const QString &valueRole, QObject *parent /TransferThis/ = 0);
%End
%If (QtDataVisualization_1_1_0 -)
        QItemModelBarDataProxy(QAbstractItemModel *itemModel /KeepReference=120/, const QString &rowRole, const QString &columnRole, const QString &valueRole, QObject *parent /TransferThis/ = 0);
%End
%If (- QtDataVisualization_1_1_0)
        QItemModelBarDataProxy(const QAbstractItemModel *itemModel /KeepReference=120/, const QString &rowRole, const QString &columnRole, const QString &valueRole, QObject *parent /TransferThis/ = 0);
%End
%If (QtDataVisualization_1_1_0 -)
        QItemModelBarDataProxy(QAbstractItemModel *itemModel /KeepReference=120/, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, QObject *parent /TransferThis/ = 0);
%End
%If (- QtDataVisualization_1_1_0)
        QItemModelBarDataProxy(const QAbstractItemModel *itemModel /KeepReference=120/, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, QObject *parent /TransferThis/ = 0);
%End
%If (QtDataVisualization_1_1_0 -)
        QItemModelBarDataProxy(QAbstractItemModel *itemModel /KeepReference=120/, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent /TransferThis/ = 0);
%End
%If (- QtDataVisualization_1_1_0)
        QItemModelBarDataProxy(const QAbstractItemModel *itemModel /KeepReference=120/, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent /TransferThis/ = 0);
%End
%If (QtDataVisualization_1_1_0 -)
        QItemModelBarDataProxy(QAbstractItemModel *itemModel /KeepReference=120/, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent /TransferThis/ = 0);
%End
%If (- QtDataVisualization_1_1_0)
        QItemModelBarDataProxy(const QAbstractItemModel *itemModel /KeepReference=120/, const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories, QObject *parent /TransferThis/ = 0);
%End
        explicit QItemModelBarDataProxy(QObject *parent /TransferThis/ = 0);
        virtual ~QItemModelBarDataProxy();
%If (QtDataVisualization_1_1_0 -)
        void setItemModel(QAbstractItemModel *itemModel /KeepReference=120/);
%End
%If (- QtDataVisualization_1_1_0)
        void setItemModel(const QAbstractItemModel *itemModel /KeepReference=120/);
%End
%If (QtDataVisualization_1_1_0 -)
        QAbstractItemModel *itemModel() const;
%End
%If (- QtDataVisualization_1_1_0)
        const QAbstractItemModel *itemModel() const;
%End
        void setRowRole(const QString &role);
        QString rowRole() const;
        void setColumnRole(const QString &role);
        QString columnRole() const;
        void setValueRole(const QString &role);
        QString valueRole() const;
        void setRowCategories(const QStringList &categories);
        QStringList rowCategories() const;
        void setColumnCategories(const QStringList &categories);
        QStringList columnCategories() const;
        void setUseModelCategories(bool enable);
        bool useModelCategories() const;
        void setAutoRowCategories(bool enable);
        bool autoRowCategories() const;
        void setAutoColumnCategories(bool enable);
        bool autoColumnCategories() const;
        int rowCategoryIndex(const QString &category);
        int columnCategoryIndex(const QString &category);
        void setRotationRole(const QString &role);
        QString rotationRole() const;
        void remap(const QString &rowRole, const QString &columnRole, const QString &valueRole, const QString &rotationRole, const QStringList &rowCategories, const QStringList &columnCategories);

    signals:
        void itemModelChanged(const QAbstractItemModel *itemModel);
        void rowRoleChanged(const QString &role);
        void columnRoleChanged(const QString &role);
        void valueRoleChanged(const QString &role);
        void rotationRoleChanged(const QString &role);
        void rowCategoriesChanged();
        void columnCategoriesChanged();
        void useModelCategoriesChanged(bool enable);
        void autoRowCategoriesChanged(bool enable);
        void autoColumnCategoriesChanged(bool enable);

    public:
%If (QtDataVisualization_1_1_0 -)

        enum MultiMatchBehavior
        {
            MMBFirst,
            MMBLast,
            MMBAverage,
            MMBCumulative,
        };

%End
%If (QtDataVisualization_1_1_0 -)
        void setRowRolePattern(const QRegExp &pattern);
%End
%If (QtDataVisualization_1_1_0 -)
        QRegExp rowRolePattern() const;
%End
%If (QtDataVisualization_1_1_0 -)
        void setColumnRolePattern(const QRegExp &pattern);
%End
%If (QtDataVisualization_1_1_0 -)
        QRegExp columnRolePattern() const;
%End
%If (QtDataVisualization_1_1_0 -)
        void setValueRolePattern(const QRegExp &pattern);
%End
%If (QtDataVisualization_1_1_0 -)
        QRegExp valueRolePattern() const;
%End
%If (QtDataVisualization_1_1_0 -)
        void setRotationRolePattern(const QRegExp &pattern);
%End
%If (QtDataVisualization_1_1_0 -)
        QRegExp rotationRolePattern() const;
%End
%If (QtDataVisualization_1_1_0 -)
        void setRowRoleReplace(const QString &replace);
%End
%If (QtDataVisualization_1_1_0 -)
        QString rowRoleReplace() const;
%End
%If (QtDataVisualization_1_1_0 -)
        void setColumnRoleReplace(const QString &replace);
%End
%If (QtDataVisualization_1_1_0 -)
        QString columnRoleReplace() const;
%End
%If (QtDataVisualization_1_1_0 -)
        void setValueRoleReplace(const QString &replace);
%End
%If (QtDataVisualization_1_1_0 -)
        QString valueRoleReplace() const;
%End
%If (QtDataVisualization_1_1_0 -)
        void setRotationRoleReplace(const QString &replace);
%End
%If (QtDataVisualization_1_1_0 -)
        QString rotationRoleReplace() const;
%End
%If (QtDataVisualization_1_1_0 -)
        void setMultiMatchBehavior(QtDataVisualization::QItemModelBarDataProxy::MultiMatchBehavior behavior);
%End
%If (QtDataVisualization_1_1_0 -)
        QtDataVisualization::QItemModelBarDataProxy::MultiMatchBehavior multiMatchBehavior() const;
%End

    signals:
%If (QtDataVisualization_1_1_0 -)
        void rowRolePatternChanged(const QRegExp &pattern);
%End
%If (QtDataVisualization_1_1_0 -)
        void columnRolePatternChanged(const QRegExp &pattern);
%End
%If (QtDataVisualization_1_1_0 -)
        void valueRolePatternChanged(const QRegExp &pattern);
%End
%If (QtDataVisualization_1_1_0 -)
        void rotationRolePatternChanged(const QRegExp &pattern);
%End
%If (QtDataVisualization_1_1_0 -)
        void rowRoleReplaceChanged(const QString &replace);
%End
%If (QtDataVisualization_1_1_0 -)
        void columnRoleReplaceChanged(const QString &replace);
%End
%If (QtDataVisualization_1_1_0 -)
        void valueRoleReplaceChanged(const QString &replace);
%End
%If (QtDataVisualization_1_1_0 -)
        void rotationRoleReplaceChanged(const QString &replace);
%End
%If (QtDataVisualization_1_1_0 -)
        void multiMatchBehaviorChanged(QtDataVisualization::QItemModelBarDataProxy::MultiMatchBehavior behavior);
%End

    private:
        QItemModelBarDataProxy(const QtDataVisualization::QItemModelBarDataProxy &);
    };
};
