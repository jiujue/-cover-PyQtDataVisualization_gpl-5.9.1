// This is the SIP interface definition for the QList based mapped types.
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


// Note that when we test the type of an object to see if it can be converted
// to a collection we only check if it is iterable.  We do not check the
// types of the contents - we assume we will be able to convert them when
// requested.  This allows us to raise exceptions specific to an individual
// object.  This approach doesn't work if there are overloads that can only be
// distinguished by the types of the template arguments.  Currently there are
// no such cases in PyQt5.  Note also that we don't consider strings to be
// iterables.


template<_TYPE_>
%MappedType QList<QVector<_TYPE_> *>
        /TypeHintIn="Iterable[Iterable[_TYPE_]]",
        TypeHintOut="List[List[_TYPE_]]", TypeHintValue="[]"/
{
%TypeHeaderCode
#include <qlist.h>
#include <qvector.h>
%End

%ConvertFromTypeCode
    PyObject *l = PyList_New(sipCpp->size());

    if (!l)
        return 0;

    for (int i = 0; i < sipCpp->size(); ++i)
    {
        QVector<_TYPE_> *t_vec = sipCpp->at(i);

        PyObject *v = PyList_New(t_vec->size());

        if (!v)
        {
            Py_DECREF(l);

            return 0;
        }

        PyList_SetItem(l, i, v);

        for (int j = 0; j < t_vec->size(); ++j)
        {
            _TYPE_ *t = new _TYPE_(t_vec->at(i));
            PyObject *tobj = sipConvertFromType(t, sipType__TYPE_,
                    sipTransferObj);

            if (!tobj)
            {
                delete t;
                Py_DECREF(l);

                return 0;
            }

            PyList_SetItem(v, j, tobj);
        }
    }

    return l;
%End

%ConvertToTypeCode
    PyObject *iter = PyObject_GetIter(sipPy);

    if (!sipIsErr)
    {
        Py_XDECREF(iter);

        return (iter
#if PY_MAJOR_VERSION < 3
                && !PyString_Check(sipPy)
#endif
                && !PyUnicode_Check(sipPy));
    }

    if (!iter)
    {
        *sipIsErr = 1;

        return 0;
    }

    QList<QVector<_TYPE_> *> *ql = new QList<QVector<_TYPE_> *>;
 
    for (SIP_SSIZE_T i = 0; ; ++i)
    {
        PyErr_Clear();
        PyObject *itm = PyIter_Next(iter);

        if (!itm)
        {
            if (PyErr_Occurred())
            {
                delete ql;
                Py_DECREF(iter);
                *sipIsErr = 1;

                return 0;
            }

            break;
        }

        PyObject *vec_iter = PyObject_GetIter(itm);

        if (!vec_iter)
        {
            PyErr_Format(PyExc_TypeError,
                    "index " SIP_SSIZE_T_FORMAT " is not iterable", i);

            Py_DECREF(itm);
            delete ql;
            Py_DECREF(iter);

            return 0;
        }

        QVector<_TYPE_> *qv = new QVector<_TYPE_>;

        ql->append(qv);

        for (SIP_SSIZE_T j = 0; ; ++j)
        {
            PyErr_Clear();
            PyObject *vec_itm = PyIter_Next(vec_iter);

            if (!vec_itm)
            {
                if (PyErr_Occurred())
                {
                    Py_DECREF(vec_iter);
                    delete ql;
                    Py_DECREF(iter);
                    *sipIsErr = 1;

                    return 0;
                }

                break;
            }

            int state;
            _TYPE_ *t = reinterpret_cast<_TYPE_ *>(
                    sipForceConvertToType(vec_itm, sipType__TYPE_,
                            sipTransferObj, SIP_NOT_NONE, &state, sipIsErr));
 
            if (*sipIsErr)
            {
                PyErr_Format(PyExc_TypeError,
                        "index " SIP_SSIZE_T_FORMAT ", " SIP_SSIZE_T_FORMAT " has type '%s' but '_TYPE_' is expected",
                        i, j, sipPyTypeName(Py_TYPE(itm)));

                Py_DECREF(vec_itm);
                Py_DECREF(vec_iter);

                Py_DECREF(itm);
                delete ql;
                Py_DECREF(iter);

                return 0;
            }

            qv->append(*t);

            sipReleaseType(t, sipType__TYPE_, state);
            Py_DECREF(vec_itm);
        }

        Py_DECREF(vec_iter);

        Py_DECREF(itm);
    }

    Py_DECREF(iter);
 
    *sipCppPtr = ql;
 
    return sipGetState(sipTransferObj);
%End
};
