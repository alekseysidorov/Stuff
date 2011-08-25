#ifndef POPUPWIDGET_H
#define POPUPWIDGET_H
#include <QObject>
#include <QWeakPointer>

class QDeclarativeItem;
class PopupView;
class PopupWidget : public QObject
{
    Q_OBJECT
	Q_PROPERTY(QDeclarativeItem* delegate READ delegate WRITE setDelegate NOTIFY delegateChanged)
public:
	explicit PopupWidget(QObject *parent = 0);
	void setDelegate(QDeclarativeItem *item);
	QDeclarativeItem *delegate() const;

	Q_INVOKABLE	void show();
	Q_INVOKABLE void hide();
	//int x() const;
	//int y() const;
signals:
	void delegateChanged(QDeclarativeItem*);
private:
	QWeakPointer<QDeclarativeItem> m_item;
	PopupView *m_view;
};

#endif // POPUPWIDGET_H
