#include "main_window.h"
#include "ui_main_window.h"

#include <QHBoxLayout>
#include <QLineEdit>
#include <QPushButton>

namespace
{
void set_file_path_edit(QLayout* layout)
{
    auto* vbox_layout = dynamic_cast<QVBoxLayout*>(layout);
    QHBoxLayout* path_layout = new QHBoxLayout();
    path_layout->addWidget(new QLineEdit());
    path_layout->addWidget(new QPushButton("..."));
    vbox_layout->addLayout(path_layout);
}
}

main_window_t::main_window_t(QWidget *parent)
    : QMainWindow(parent)
    , ui_(new Ui::main_window)
    , central_widget_(new QWidget(this))
{
    ui_->setupUi(this);

    setCentralWidget(central_widget_);
    central_widget_->setLayout(new QVBoxLayout());

    // setLayout(new QVBoxLayout(this));
    set_file_path_edit(central_widget_->layout());
}

main_window_t::~main_window_t()
{
}
