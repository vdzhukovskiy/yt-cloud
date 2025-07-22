#include "main_window.h"
#include "ui_main_window.h"

main_window_t::main_window_t(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::main_window)
{
    ui->setupUi(this);
}

main_window_t::~main_window_t()
{
}
