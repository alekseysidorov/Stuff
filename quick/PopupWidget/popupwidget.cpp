#include "popupwidget.h"
#include "popupwidget_p.h"

#include <QDeclarativeItem>
#include <QDeclarativeContext>
#include <QDebug>

PopupWidget::PopupWidget(QObject *parent) :
	QObject(parent),
	m_view(new PopupView)
{
}

/*! показать всплывающее окно в координатах x и y, используя умное расположение
  */
//void PopupWidget::showPopup(int x, int y)
//{
//	m_view->move(x, y);
//	show();
//}

/*! показать всплывающее окно (координаты нужно задавать через свойства x и y)
  */
void PopupWidget::show()
{
	m_view->move(QCursor::pos());
	m_view->show();
}

/*! скрыть окно
  */
void PopupWidget::hide()
{
	m_view->hide();
}

/*! установить элемент для отображения
  */
void PopupWidget::setDelegate(QDeclarativeItem *item)
{
	if (m_item) {
	}
	m_item = item;
	m_view->setItem(item);
}

/*! элемент для отображения
  */
QDeclarativeItem * PopupWidget::delegate() const
{
	return m_item.data();
}
