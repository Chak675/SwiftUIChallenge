# SwiftUI List Challenge

Этот проект представляет собой приложение на базе SwiftUI, предназначенное для отображения списка фильмов и их подробной информации, с соблюдением принципов чистой архитектуры и использованием паттерна координатора для управления навигацией.

## Project Setup:

Этот проект построен с использованием SwiftUI. Проект следует архитектурному паттерну MVVM (Model-View-ViewModel) с дополнительным акцентом на принципы чистой архитектуры для лучшей организации кода и разделения проблем.

## Data Model:

Структура Movie определяет атрибуты фильма:

```
id: UUID
title: String
year: String
genre: String
description: String
thumbURL: String
```

## Movie List Screen:

Приложение отображает экран со списком фильмов, полученных из статически определенного массива экземпляров Movie. Каждый фильм отображается с названием и годом выпуска. Навигация от списка фильмов к экрану подробностей реализована с помощью шаблона координатора.

## Movie Details Screen:

На экране подробностей представлена подробная информация о выбранном фильме. Здесь отображаются название, год, жанр и описание фильма. Макет разработан так, чтобы быть удобным для пользователя и интуитивно понятным.

## Coordinator Pattern:

Для управления навигацией внутри приложения используется паттерн координатора. Навигация между экранами осуществляется с помощью специальных объектов-координаторов, отделяющих логику навигации от слоев представления и модели представления.

## Observability:

Свойство-обертка `@Observable` используется для управления состоянием данных фильма в представлениях.
Изменения состояния наблюдаются и соответствующим образом отражаются в пользовательском интерфейсе, обеспечивая реактивный и отзывчивый пользовательский опыт.
