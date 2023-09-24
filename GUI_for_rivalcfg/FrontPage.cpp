#include "FrontPage.h"
#include "ui_FrontPage.h"

FrontPage::FrontPage(QWidget *parent)
	: QWidget(parent)
	  , ui(new Ui::FrontPage)
{
	ui->setupUi(this);
}

FrontPage::~FrontPage()
{
	delete ui;
}

