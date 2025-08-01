pragma Singleton
import QtQuick 2.0

QtObject {
    // Основные цвета
    readonly property color primaryDark: "#1a3a1a"      // Темно-зеленый (основной)
    readonly property color primary: "#2d5a2d"         // Зеленый
    readonly property color primaryLight: "#3e7a3e"    // Светло-зеленый
    readonly property color primaryLighter: "#5f9f5f"  // Очень светлый зеленый

    // Фоновые цвета
    readonly property color darkBackground: "#121f12"  // Темный фон
    readonly property color lightBackground: "#e8f5e9" // Светлый фон (зеленоватый оттенок)
    readonly property color panelBackground: "#1e2e1e" // Фон панелей

    // Текст и границы
    readonly property color textColor: "#ffffff"       // Основной текст (белый)
    readonly property color textSecondary: "#bdbdbd"   // Вторичный текст
    readonly property color borderColor: "#3e7a3e"    // Цвет границ
    readonly property color dividerColor: "#2d5a2d"   // Цвет разделителей

    // Акцентные цвета
    readonly property color accent: "#4caf50"         // Яркий акцентный зеленый
    readonly property color accentLight: "#81c784"    // Светлый акцент
    readonly property color accentDark: "#388e3c"     // Темный акцент

    // Состояния
    readonly property color hoverColor: "#3e7a3e"     // При наведении
    readonly property color pressedColor: "#1a3a1a"   // При нажатии
    readonly property color selectedColor: "#2d5a2d"  // Выбранный элемент
    readonly property color selectionColor: "#4caf50" // Цвет выделения

    // Системные цвета
    readonly property color error: "#f44336"          // Ошибки (красный)
    readonly property color warning: "#ff9800"        // Предупреждения (оранжевый)
    readonly property color success: "#4caf50"       // Успех (зеленый)
    readonly property color info: "#2196f3"          // Информация (синий)

    // Дополнительные оттенки
    readonly property color white: "#ffffff"         // Чистый белый
    readonly property color whiteSmoke: "#f5f5f5"   // Дымчато-белый
    readonly property color grayLight: "#e0e0e0"    // Светло-серый
    readonly property color gray: "#9e9e9e"         // Серый
    readonly property color grayDark: "#616161"     // Темно-серый

    // Шрифты
    readonly property string monoFontFamily: "Courier New, monospace"
    readonly property string sansFontFamily: "Arial, sans-serif"
    readonly property string serifFontFamily: "Georgia, serif"
}

