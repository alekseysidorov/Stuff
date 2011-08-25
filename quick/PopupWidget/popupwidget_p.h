#ifndef POPUPWIDGET_P_H
#define POPUPWIDGET_P_H
#include <QDeclarativeView>
#include <QDeclarativeItem>

class PopupView : public QDeclarativeView
{
	Q_OBJECT
public:
	PopupView(QWidget *parent = 0) :
		QDeclarativeView(parent)
	{
		setWindowFlags(Qt::ToolTip);
		setAttribute(Qt::WA_ShowWithoutActivating);
		setAttribute(Qt::WA_X11NetWmWindowTypeToolTip);

		//transparency
		setAttribute(Qt::WA_NoSystemBackground);
		setAttribute(Qt::WA_TranslucentBackground);
		viewport()->setAttribute(Qt::WA_TranslucentBackground);
		viewport()->setAutoFillBackground(false);
	}
	void setItem(QDeclarativeItem *item)
	{
		setRootObject(item);
	}
};

#endif // POPUPWIDGET_P_H
