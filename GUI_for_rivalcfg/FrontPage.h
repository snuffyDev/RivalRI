#ifndef FRONTPAGE_H
#define FRONTPAGE_H

#include <RivalInterface.h>
#include <QWidget>

QT_BEGIN_NAMESPACE
namespace Ui { class FrontPage; }
QT_END_NAMESPACE

class FrontPage : public QWidget
{
	Q_OBJECT

public:
	FrontPage(QWidget *parent = nullptr);
	~FrontPage();

private:
	Ui::FrontPage *ui;
};
#endif // FRONTPAGE_H
