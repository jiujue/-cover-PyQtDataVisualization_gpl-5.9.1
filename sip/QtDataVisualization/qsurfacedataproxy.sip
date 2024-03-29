// qsurfacedataproxy.sip generated by MetaSIP
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
#include <qsurfacedataproxy.h>
%End

    typedef QVector<QtDataVisualization::QSurfaceDataItem> QSurfaceDataRow;
    typedef QList<QVector<QtDataVisualization::QSurfaceDataItem> *> QSurfaceDataArray;

    class QSurfaceDataProxy : QtDataVisualization::QAbstractDataProxy
    {
%TypeHeaderCode
#include <qsurfacedataproxy.h>
%End

    public:
        explicit QSurfaceDataProxy(QObject *parent /TransferThis/ = 0);
        virtual ~QSurfaceDataProxy();
        int rowCount() const;
        int columnCount() const;
        const QtDataVisualization::QSurfaceDataArray *array() const;
        void resetArray(QtDataVisualization::QSurfaceDataArray *newArray /Transfer/);
        void setRow(int rowIndex, QtDataVisualization::QSurfaceDataRow *row /Transfer/);
        void setRows(int rowIndex, const QtDataVisualization::QSurfaceDataArray &rows);
        void setItem(int rowIndex, int columnIndex, const QtDataVisualization::QSurfaceDataItem &item);
        void setItem(const QPoint &position, const QtDataVisualization::QSurfaceDataItem &item);
        int addRow(QtDataVisualization::QSurfaceDataRow *row /Transfer/);
        int addRows(const QtDataVisualization::QSurfaceDataArray &rows);
        void insertRow(int rowIndex, QtDataVisualization::QSurfaceDataRow *row /Transfer/);
        void insertRows(int rowIndex, const QtDataVisualization::QSurfaceDataArray &rows);
        void removeRows(int rowIndex, int removeCount);
        QtDataVisualization::QSurface3DSeries *series() const;
        const QtDataVisualization::QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const;
        const QtDataVisualization::QSurfaceDataItem *itemAt(const QPoint &position) const;

    signals:
        void arrayReset();
        void rowsAdded(int startIndex, int count);
        void rowsChanged(int startIndex, int count);
        void rowsRemoved(int startIndex, int count);
        void rowsInserted(int startIndex, int count);
        void itemChanged(int rowIndex, int columnIndex);
        void rowCountChanged(int count);
        void columnCountChanged(int count);
        void seriesChanged(QtDataVisualization::QSurface3DSeries *series);

    private:
        QSurfaceDataProxy(const QtDataVisualization::QSurfaceDataProxy &);
    };
};
