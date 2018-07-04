-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-07-2018 a las 19:39:31
-- Versión del servidor: 10.1.26-MariaDB-0+deb9u1
-- Versión de PHP: 7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comercial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add permission', 4, 'add_permission'),
(11, 'Can change permission', 4, 'change_permission'),
(12, 'Can delete permission', 4, 'delete_permission'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add cliente', 7, 'add_cliente'),
(20, 'Can change cliente', 7, 'change_cliente'),
(21, 'Can delete cliente', 7, 'delete_cliente'),
(22, 'Can add estado', 8, 'add_estado'),
(23, 'Can change estado', 8, 'change_estado'),
(24, 'Can delete estado', 8, 'delete_estado'),
(25, 'Can add categoria', 9, 'add_categoria'),
(26, 'Can change categoria', 9, 'change_categoria'),
(27, 'Can delete categoria', 9, 'delete_categoria'),
(28, 'Can add marca', 10, 'add_marca'),
(29, 'Can change marca', 10, 'change_marca'),
(30, 'Can delete marca', 10, 'delete_marca'),
(31, 'Can add proveedor', 11, 'add_proveedor'),
(32, 'Can change proveedor', 11, 'change_proveedor'),
(33, 'Can delete proveedor', 11, 'delete_proveedor'),
(34, 'Can add productos', 12, 'add_productos'),
(35, 'Can change productos', 12, 'change_productos'),
(36, 'Can delete productos', 12, 'delete_productos'),
(37, 'Can add venta', 13, 'add_venta'),
(38, 'Can change venta', 13, 'change_venta'),
(39, 'Can delete venta', 13, 'delete_venta'),
(40, 'Can add detalle_venta', 14, 'add_detalle_venta'),
(41, 'Can change detalle_venta', 14, 'change_detalle_venta'),
(42, 'Can delete detalle_venta', 14, 'delete_detalle_venta'),
(43, 'Can add compra', 15, 'add_compra'),
(44, 'Can change compra', 15, 'change_compra'),
(45, 'Can delete compra', 15, 'delete_compra'),
(46, 'Can add detalle compra', 16, 'add_detallecompra'),
(47, 'Can change detalle compra', 16, 'change_detallecompra'),
(48, 'Can delete detalle compra', 16, 'delete_detallecompra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$E300VFJtvQUr$Lqm1ZzpFVfbvWpmW3FHMLc1zzc2jOdGfEQowlYEleHE=', '2018-07-02 17:09:02.948096', 1, 'konny', '', '', 'konyliz_ab@hotmail.com.ar', 1, 1, '2018-06-28 17:08:55.290902'),
(2, 'pbkdf2_sha256$100000$ypi9VXuwsuZY$E6qyd9uje8/uA+MMMXRZYgxe8/xHXIqyQNcKccAaIq4=', '2018-07-03 22:32:49.343660', 1, 'padillon', '', '', 'krlosx1596@gmail.com', 1, 1, '2018-07-03 05:46:16.612655');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish_ci,
  `object_repr` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(4, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'inventario', 'categoria'),
(7, 'inventario', 'cliente'),
(15, 'inventario', 'compra'),
(14, 'inventario', 'detalle_venta'),
(16, 'inventario', 'detallecompra'),
(8, 'inventario', 'estado'),
(10, 'inventario', 'marca'),
(12, 'inventario', 'productos'),
(11, 'inventario', 'proveedor'),
(13, 'inventario', 'venta'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-06-28 02:31:01.076492'),
(2, 'auth', '0001_initial', '2018-06-28 02:31:09.276272'),
(3, 'admin', '0001_initial', '2018-06-28 02:31:11.115366'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-06-28 02:31:11.168465'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-06-28 02:31:12.178148'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-06-28 02:31:12.962984'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-06-28 02:31:13.612928'),
(8, 'auth', '0004_alter_user_username_opts', '2018-06-28 02:31:13.655832'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-06-28 02:31:14.185310'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-06-28 02:31:14.230252'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-06-28 02:31:14.283575'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-06-28 02:31:15.002493'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-06-28 02:31:15.675847'),
(14, 'sessions', '0001_initial', '2018-06-28 02:31:16.224371'),
(15, 'inventario', '0001_initial', '2018-06-28 02:36:04.606445'),
(16, 'inventario', '0002_auto_20180628_1546', '2018-06-28 15:53:17.906452'),
(17, 'inventario', '0003_auto_20180628_1630', '2018-06-28 16:31:12.634007'),
(18, 'inventario', '0004_auto_20180629_0152', '2018-06-30 06:50:08.374569'),
(19, 'inventario', '0005_auto_20180629_0154', '2018-06-30 06:50:10.141582'),
(20, 'inventario', '0006_auto_20180629_0201', '2018-06-30 06:50:12.821092'),
(21, 'inventario', '0007_auto_20180701_2324', '2018-07-02 17:08:29.210084'),
(22, 'inventario', '0008_auto_20180701_1730', '2018-07-02 17:08:30.842645'),
(23, 'inventario', '0002_auto_20180702_2352', '2018-07-03 05:52:07.284297');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('mt2swqq665cl814si5cctbtifkijxr7q', 'ZDZiZGQ5NWM0ZmY1NWY3MzRmMDBmZjZiYWU1NzEwOWZlZmQ1MjAyZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDFhNThlZmUwYzdmOGU3ZDEyZmYzZDY2ZTExMjIzMjlkOWFhMGU0In0=', '2018-07-17 22:32:49.444761'),
('qr5t5tobnovbm0cwosfv8lowtziftxgt', 'YWVmMzZkMmI3NDc5MjhjN2M4N2NlMDE2ZTdlNGMwYjgxZmNiZGM1OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODRjODgyMDY2NDM3ZGJiZmE0ZmRmYWFiOTUxMzY2MjZiNjA2MDE1ZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-07-16 17:09:03.066720');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_categoria`
--

CREATE TABLE `inventario_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario_categoria`
--

INSERT INTO `inventario_categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Bebida', 'bebida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_cliente`
--

CREATE TABLE `inventario_cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `registro` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario_cliente`
--

INSERT INTO `inventario_cliente` (`id`, `nombre`, `apellido`, `direccion`, `registro`, `telefono`) VALUES
(1, 'Carlos Fermin', 'Padilla Ferrufino', 'San Miguel', '138513-0', '61099440');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_compra`
--

CREATE TABLE `inventario_compra` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `proveedor_id` int(11) DEFAULT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_detallecompra`
--

CREATE TABLE `inventario_detallecompra` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(5,2) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `proveedor_id` int(11) DEFAULT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_detalle_venta`
--

CREATE TABLE `inventario_detalle_venta` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `venta_id` int(11) DEFAULT NULL,
  `subtotal` decimal(5,2) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario_detalle_venta`
--

INSERT INTO `inventario_detalle_venta` (`id`, `cantidad`, `venta_id`, `subtotal`, `producto_id`) VALUES
(1, 1, 1, '0.85', 1),
(2, 1, 2, '0.85', 1),
(3, 1, 3, '0.85', 1),
(4, 1, 4, '0.85', 1),
(5, 1, 5, '0.85', 1),
(6, 1, 6, '0.85', 1),
(7, 1, 7, '0.85', 1),
(8, 2, 8, '1.70', 1),
(9, 3, 9, '2.55', 1),
(10, 1, 9, '5.00', 2),
(11, 2, 10, '1.70', 1),
(12, 3, 10, '15.00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_estado`
--

CREATE TABLE `inventario_estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario_estado`
--

INSERT INTO `inventario_estado` (`id`, `nombre`) VALUES
(1, 'ACTIVO'),
(2, 'INACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_marca`
--

CREATE TABLE `inventario_marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario_marca`
--

INSERT INTO `inventario_marca` (`id`, `nombre`, `descripcion`) VALUES
(1, 'coca-cola', 'coca-cola company');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_productos`
--

CREATE TABLE `inventario_productos` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL,
  `stock_min` int(11) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `proveedor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario_productos`
--

INSERT INTO `inventario_productos` (`id`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `stock_min`, `categoria_id`, `estado_id`, `marca_id`, `proveedor_id`) VALUES
(1, 7894, 'coca lata', 'bebida enlatada', 0.85, 3, 5, 1, 1, 1, 1),
(2, 87987, 'mause', 'electronico', 5, 0, 5, 1, 1, 1, 1),
(3, 3156513, 'Soda Fanta', 'lata', 0.6, 100, 5, 1, 1, 1, 1),
(4, 665, 'agua', 'cristal', 0.5, 5, 6, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_proveedor`
--

CREATE TABLE `inventario_proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario_proveedor`
--

INSERT INTO `inventario_proveedor` (`id`, `nombre`, `descripcion`, `telefono`) VALUES
(1, 'La constancia', 'vive lejos', '7759-4592');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_venta`
--

CREATE TABLE `inventario_venta` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `total` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inventario_venta`
--

INSERT INTO `inventario_venta` (`id`, `fecha`, `cliente_id`, `total`) VALUES
(1, '2018-07-03', 1, '0.85'),
(2, '2018-07-03', 1, '0.85'),
(3, '2018-07-03', 1, '0.85'),
(4, '2018-07-03', 1, '0.85'),
(5, '2018-07-03', 1, '0.85'),
(6, '2018-07-03', 1, '0.85'),
(7, '2018-07-03', 1, '0.85'),
(8, '2018-07-03', 1, '1.70'),
(9, '2018-07-03', 1, '7.55'),
(10, '2018-07-03', 1, '16.70');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `inventario_categoria`
--
ALTER TABLE `inventario_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario_cliente`
--
ALTER TABLE `inventario_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario_compra`
--
ALTER TABLE `inventario_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_compra_proveedor_id_085e6477_fk_inventari` (`proveedor_id`);

--
-- Indices de la tabla `inventario_detallecompra`
--
ALTER TABLE `inventario_detallecompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_detalleco_producto_id_c4a35c80_fk_inventari` (`producto_id`),
  ADD KEY `inventario_detalleco_proveedor_id_cd6e5e97_fk_inventari` (`proveedor_id`);

--
-- Indices de la tabla `inventario_detalle_venta`
--
ALTER TABLE `inventario_detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_detalle_v_venta_id_16b21afe_fk_inventari` (`venta_id`),
  ADD KEY `inventario_detalle_v_producto_id_6f6e411d_fk_inventari` (`producto_id`);

--
-- Indices de la tabla `inventario_estado`
--
ALTER TABLE `inventario_estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario_marca`
--
ALTER TABLE `inventario_marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario_productos`
--
ALTER TABLE `inventario_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_productos_categoria_id_33eb7b1a_fk_inventari` (`categoria_id`),
  ADD KEY `inventario_productos_estado_id_257f589d_fk_inventario_estado_id` (`estado_id`),
  ADD KEY `inventario_productos_marca_id_cfdfb031_fk_inventario_marca_id` (`marca_id`),
  ADD KEY `inventario_productos_proveedor_id_db7e6c74_fk_inventari` (`proveedor_id`);

--
-- Indices de la tabla `inventario_proveedor`
--
ALTER TABLE `inventario_proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario_venta`
--
ALTER TABLE `inventario_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_venta_cliente_id_19650076_fk_inventario_cliente_id` (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `inventario_categoria`
--
ALTER TABLE `inventario_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `inventario_cliente`
--
ALTER TABLE `inventario_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `inventario_compra`
--
ALTER TABLE `inventario_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventario_detallecompra`
--
ALTER TABLE `inventario_detallecompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventario_detalle_venta`
--
ALTER TABLE `inventario_detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `inventario_estado`
--
ALTER TABLE `inventario_estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `inventario_marca`
--
ALTER TABLE `inventario_marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `inventario_productos`
--
ALTER TABLE `inventario_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `inventario_proveedor`
--
ALTER TABLE `inventario_proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `inventario_venta`
--
ALTER TABLE `inventario_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `inventario_compra`
--
ALTER TABLE `inventario_compra`
  ADD CONSTRAINT `inventario_compra_proveedor_id_085e6477_fk_inventari` FOREIGN KEY (`proveedor_id`) REFERENCES `inventario_proveedor` (`id`);

--
-- Filtros para la tabla `inventario_detallecompra`
--
ALTER TABLE `inventario_detallecompra`
  ADD CONSTRAINT `inventario_detalleco_producto_id_c4a35c80_fk_inventari` FOREIGN KEY (`producto_id`) REFERENCES `inventario_productos` (`id`),
  ADD CONSTRAINT `inventario_detalleco_proveedor_id_cd6e5e97_fk_inventari` FOREIGN KEY (`proveedor_id`) REFERENCES `inventario_proveedor` (`id`);

--
-- Filtros para la tabla `inventario_detalle_venta`
--
ALTER TABLE `inventario_detalle_venta`
  ADD CONSTRAINT `inventario_detalle_v_producto_id_6f6e411d_fk_inventari` FOREIGN KEY (`producto_id`) REFERENCES `inventario_productos` (`id`),
  ADD CONSTRAINT `inventario_detalle_v_venta_id_16b21afe_fk_inventari` FOREIGN KEY (`venta_id`) REFERENCES `inventario_venta` (`id`);

--
-- Filtros para la tabla `inventario_productos`
--
ALTER TABLE `inventario_productos`
  ADD CONSTRAINT `inventario_productos_categoria_id_33eb7b1a_fk_inventari` FOREIGN KEY (`categoria_id`) REFERENCES `inventario_categoria` (`id`),
  ADD CONSTRAINT `inventario_productos_estado_id_257f589d_fk_inventario_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `inventario_estado` (`id`),
  ADD CONSTRAINT `inventario_productos_marca_id_cfdfb031_fk_inventario_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `inventario_marca` (`id`),
  ADD CONSTRAINT `inventario_productos_proveedor_id_db7e6c74_fk_inventari` FOREIGN KEY (`proveedor_id`) REFERENCES `inventario_proveedor` (`id`);

--
-- Filtros para la tabla `inventario_venta`
--
ALTER TABLE `inventario_venta`
  ADD CONSTRAINT `inventario_venta_cliente_id_19650076_fk_inventario_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `inventario_cliente` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
