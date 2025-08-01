#pragma once

#include <QMainWindow>
#include <QPointer>
#include <QScopedPointer>

namespace Ui
{
class main_window;
}

class main_window_t : public QMainWindow
{
    Q_OBJECT
public:
    explicit main_window_t(QWidget *parent = nullptr);
    ~main_window_t();

private:
    QScopedPointer<Ui::main_window> ui_;
    QPointer<QWidget> central_widget_;
};
