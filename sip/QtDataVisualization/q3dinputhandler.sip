// q3dinputhandler.sip generated by MetaSIP
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
#include <q3dinputhandler.h>
%End

    class Q3DInputHandler : QtDataVisualization::QAbstract3DInputHandler
    {
%TypeHeaderCode
#include <q3dinputhandler.h>
%End

    public:
        explicit Q3DInputHandler(QObject *parent /TransferThis/ = 0);
        virtual ~Q3DInputHandler();
        virtual void mousePressEvent(QMouseEvent *event, const QPoint &mousePos);
        virtual void mouseReleaseEvent(QMouseEvent *event, const QPoint &mousePos);
        virtual void mouseMoveEvent(QMouseEvent *event, const QPoint &mousePos);
        virtual void wheelEvent(QWheelEvent *event);
%If (QtDataVisualization_1_2_0 -)
        void setRotationEnabled(bool enable);
%End
%If (QtDataVisualization_1_2_0 -)
        bool isRotationEnabled() const;
%End
%If (QtDataVisualization_1_2_0 -)
        void setZoomEnabled(bool enable);
%End
%If (QtDataVisualization_1_2_0 -)
        bool isZoomEnabled() const;
%End
%If (QtDataVisualization_1_2_0 -)
        void setSelectionEnabled(bool enable);
%End
%If (QtDataVisualization_1_2_0 -)
        bool isSelectionEnabled() const;
%End
%If (QtDataVisualization_1_2_0 -)
        void setZoomAtTargetEnabled(bool enable);
%End
%If (QtDataVisualization_1_2_0 -)
        bool isZoomAtTargetEnabled() const;
%End

    signals:
%If (QtDataVisualization_1_2_0 -)
        void rotationEnabledChanged(bool enable);
%End
%If (QtDataVisualization_1_2_0 -)
        void zoomEnabledChanged(bool enable);
%End
%If (QtDataVisualization_1_2_0 -)
        void selectionEnabledChanged(bool enable);
%End
%If (QtDataVisualization_1_2_0 -)
        void zoomAtTargetEnabledChanged(bool enable);
%End

    private:
        Q3DInputHandler(const QtDataVisualization::Q3DInputHandler &);
    };
};
