# Vendor showcase

Аддон для CS-Cart Multi-Vendor 4.18.1, тема Responsive. Добавляет блок «Карточка продавца»: аватар (или инициалы) и имя. По клику открывается расширенная информация о продавце: popup или modal.

## Установка

1. Скопировать файлы в корень CS-Cart с сохранением путей.
2. Админка → **Модули → Управление модулями** → *Vendor showcase* → **Установить**.
3. **Веб-сайт → Темы → Макеты** → страница товара → **Добавить блок** → *Карточка продавца*.

## Режим отображения

Настройка блока **Вид панели**: `Popup` (по умолчанию) или `Modal`.

| Режим | Реализация |
|---|---|
| Modal | встроенный диалог CS-Cart (`cm-dialog-opener`) |
| Popup | собственный JS, без встроенных механизмов и библиотек |

## Скриншоты

**Popup, desktop:** панель привязана к карточке, страница остаётся доступной.

![Popup, desktop](https://github.com/user-attachments/assets/70bb2130-cbe9-438f-813e-030b5563c557)

**Modal, desktop:** диалог CS-Cart с затемнением фона.

![Modal, desktop](https://github.com/user-attachments/assets/5532be3a-96c7-4826-990e-437c60110807)

**Mobile (375px):** контент перестраивается в колонку, без горизонтального скролла.

| Popup | Modal |
|---|---|
| <img src="https://github.com/user-attachments/assets/5df423ff-be54-48d7-aefa-f976e8b90559" alt="Popup, mobile" width="300"> | <img src="https://github.com/user-attachments/assets/03e66205-af21-4fd3-aba9-3f98ebabe45a" alt="Modal, mobile" width="300"> |

## Структура

```
blocks/vendor_card.tpl            точка входа: выбирает режим, передаёт данные
components/vendor_modal.tpl       modal
components/vendor_popup.tpl       popup
components/vendor_card_face.tpl   карточка: аватар + имя (общая)
components/vendor_details.tpl     расширенная информация (общая)
```

Рейтинг, отзывы, бейджи и статус — статичные данные из макета: в CS-Cart их нет.
