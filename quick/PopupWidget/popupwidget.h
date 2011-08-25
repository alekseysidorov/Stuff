#ifndef POPUPWIDGET_H
#define POPUPWIDGET_H
#include <QObject>
#include <QWeakPointer>

class QDeclarativeItem;
class QDeclarativeView;
class PopupWidget : public QObject
{
    Q_OBJECT
	Q_PROPERTY(QDeclarativeItem* delegate READ delegate WRITE setDelegate NOTIFY delegateChanged)
public:
	explicit PopupWidget(QObject *parent = 0);
	void setDelegate(QDeclarativeItem *item);
	QDeclarativeItem *delegate() const;

	Q_INVOKABLE void show();
	Q_INVOKABLE void hide();
signals:
	void delegateChanged(QDeclarativeItem*);
private:
	QWeakPointer<QDeclarativeItem> m_item;
	QDeclarativeView *m_view;
};

#endif // POPUPWIDGET_H
