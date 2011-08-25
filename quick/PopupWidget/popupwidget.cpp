#include "popupwidget.h"

#include <QDeclarativeView>
#include <QDeclarativeItem>
#include <QDeclarativeContext>

PopupWidget::PopupWidget(QObject *parent) :
	QObject(parent),
	m_view(new QDeclarativeView)
{
}

/*! показать всплывающее окно
  */
void PopupWidget::show()
{
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
		m_view->scene()->removeItem(m_item.data());
	}
	m_item = item;
	m_view->scene()->addItem(item);
}

/*! элемент для отображения
  */
QDeclarativeItem * PopupWidget::delegate() const
{
	return m_item.data();
}
