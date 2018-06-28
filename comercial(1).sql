-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2018 at 10:50 AM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comercial`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `auth_permission`
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
-- Table structure for table `auth_user`
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

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `django_content_type`
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
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `django_migrations`
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
(15, 'inventario', '0001_initial', '2018-06-28 02:36:04.606445');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventario_categoria`
--

CREATE TABLE `inventario_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `inventario_categoria`
--

INSERT INTO `inventario_categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Bebida', 'bebida');

-- --------------------------------------------------------

--
-- Table structure for table `inventario_cliente`
--

CREATE TABLE `inventario_cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `registro` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(12) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventario_compra`
--

CREATE TABLE `inventario_compra` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `proveedor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventario_detallecompra`
--

CREATE TABLE `inventario_detallecompra` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(5,2) NOT NULL,
  `producto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventario_detalle_venta`
--

CREATE TABLE `inventario_detalle_venta` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `venta_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventario_detalle_venta_producto`
--

CREATE TABLE `inventario_detalle_venta_producto` (
  `id` int(11) NOT NULL,
  `detalle_venta_id` int(11) NOT NULL,
  `productos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventario_estado`
--

CREATE TABLE `inventario_estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `inventario_estado`
--

INSERT INTO `inventario_estado` (`id`, `nombre`) VALUES
(1, 'ACTIVO'),
(2, 'INACTIVO');

-- --------------------------------------------------------

--
-- Table structure for table `inventario_marca`
--

CREATE TABLE `inventario_marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `inventario_marca`
--

INSERT INTO `inventario_marca` (`id`, `nombre`, `descripcion`) VALUES
(1, 'coca-cola', 'coca-cola company');

-- --------------------------------------------------------

--
-- Table structure for table `inventario_productos`
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
-- Dumping data for table `inventario_productos`
--

INSERT INTO `inventario_productos` (`id`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `stock_min`, `categoria_id`, `estado_id`, `marca_id`, `proveedor_id`) VALUES
(1, 7894, 'coca lata', 'bebida enlatada', 0.85, 5, 5, 1, 1, 1, 1),
(2, 87987, 'mause', 'electronico', 5, 5, 5, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventario_proveedor`
--

CREATE TABLE `inventario_proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `inventario_proveedor`
--

INSERT INTO `inventario_proveedor` (`id`, `nombre`, `descripcion`, `telefono`) VALUES
(1, 'La constancia', 'vive lejos', '7759-4592');

-- --------------------------------------------------------

--
-- Table structure for table `inventario_venta`
--

CREATE TABLE `inventario_venta` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventario_venta_producto`
--

CREATE TABLE `inventario_venta_producto` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  `productos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `inventario_categoria`
--
ALTER TABLE `inventario_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventario_cliente`
--
ALTER TABLE `inventario_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventario_compra`
--
ALTER TABLE `inventario_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_compra_proveedor_id_085e6477_fk_inventari` (`proveedor_id`);

--
-- Indexes for table `inventario_detallecompra`
--
ALTER TABLE `inventario_detallecompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_detalleco_producto_id_c4a35c80_fk_inventari` (`producto_id`);

--
-- Indexes for table `inventario_detalle_venta`
--
ALTER TABLE `inventario_detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_detalle_v_venta_id_16b21afe_fk_inventari` (`venta_id`);

--
-- Indexes for table `inventario_detalle_venta_producto`
--
ALTER TABLE `inventario_detalle_venta_producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventario_detalle_venta_detalle_venta_id_product_eaaf2e92_uniq` (`detalle_venta_id`,`productos_id`),
  ADD KEY `inventario_detalle_v_productos_id_1f6927a4_fk_inventari` (`productos_id`);

--
-- Indexes for table `inventario_estado`
--
ALTER TABLE `inventario_estado`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventario_marca`
--
ALTER TABLE `inventario_marca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventario_productos`
--
ALTER TABLE `inventario_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_productos_categoria_id_33eb7b1a_fk_inventari` (`categoria_id`),
  ADD KEY `inventario_productos_estado_id_257f589d_fk_inventario_estado_id` (`estado_id`),
  ADD KEY `inventario_productos_marca_id_cfdfb031_fk_inventario_marca_id` (`marca_id`),
  ADD KEY `inventario_productos_proveedor_id_db7e6c74_fk_inventari` (`proveedor_id`);

--
-- Indexes for table `inventario_proveedor`
--
ALTER TABLE `inventario_proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventario_venta`
--
ALTER TABLE `inventario_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_venta_cliente_id_19650076_fk_inventario_cliente_id` (`cliente_id`);

--
-- Indexes for table `inventario_venta_producto`
--
ALTER TABLE `inventario_venta_producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventario_venta_producto_venta_id_productos_id_9d55e597_uniq` (`venta_id`,`productos_id`),
  ADD KEY `inventario_venta_pro_productos_id_e71fb86e_fk_inventari` (`productos_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `inventario_categoria`
--
ALTER TABLE `inventario_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `inventario_cliente`
--
ALTER TABLE `inventario_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventario_compra`
--
ALTER TABLE `inventario_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventario_detallecompra`
--
ALTER TABLE `inventario_detallecompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventario_detalle_venta`
--
ALTER TABLE `inventario_detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventario_detalle_venta_producto`
--
ALTER TABLE `inventario_detalle_venta_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventario_estado`
--
ALTER TABLE `inventario_estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventario_marca`
--
ALTER TABLE `inventario_marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `inventario_productos`
--
ALTER TABLE `inventario_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventario_proveedor`
--
ALTER TABLE `inventario_proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `inventario_venta`
--
ALTER TABLE `inventario_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventario_venta_producto`
--
ALTER TABLE `inventario_venta_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `inventario_compra`
--
ALTER TABLE `inventario_compra`
  ADD CONSTRAINT `inventario_compra_proveedor_id_085e6477_fk_inventari` FOREIGN KEY (`proveedor_id`) REFERENCES `inventario_proveedor` (`id`);

--
-- Constraints for table `inventario_detallecompra`
--
ALTER TABLE `inventario_detallecompra`
  ADD CONSTRAINT `inventario_detalleco_producto_id_c4a35c80_fk_inventari` FOREIGN KEY (`producto_id`) REFERENCES `inventario_productos` (`id`);

--
-- Constraints for table `inventario_detalle_venta`
--
ALTER TABLE `inventario_detalle_venta`
  ADD CONSTRAINT `inventario_detalle_v_venta_id_16b21afe_fk_inventari` FOREIGN KEY (`venta_id`) REFERENCES `inventario_venta` (`id`);

--
-- Constraints for table `inventario_detalle_venta_producto`
--
ALTER TABLE `inventario_detalle_venta_producto`
  ADD CONSTRAINT `inventario_detalle_v_detalle_venta_id_a5fe7215_fk_inventari` FOREIGN KEY (`detalle_venta_id`) REFERENCES `inventario_detalle_venta` (`id`),
  ADD CONSTRAINT `inventario_detalle_v_productos_id_1f6927a4_fk_inventari` FOREIGN KEY (`productos_id`) REFERENCES `inventario_productos` (`id`);

--
-- Constraints for table `inventario_productos`
--
ALTER TABLE `inventario_productos`
  ADD CONSTRAINT `inventario_productos_categoria_id_33eb7b1a_fk_inventari` FOREIGN KEY (`categoria_id`) REFERENCES `inventario_categoria` (`id`),
  ADD CONSTRAINT `inventario_productos_estado_id_257f589d_fk_inventario_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `inventario_estado` (`id`),
  ADD CONSTRAINT `inventario_productos_marca_id_cfdfb031_fk_inventario_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `inventario_marca` (`id`),
  ADD CONSTRAINT `inventario_productos_proveedor_id_db7e6c74_fk_inventari` FOREIGN KEY (`proveedor_id`) REFERENCES `inventario_proveedor` (`id`);

--
-- Constraints for table `inventario_venta`
--
ALTER TABLE `inventario_venta`
  ADD CONSTRAINT `inventario_venta_cliente_id_19650076_fk_inventario_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `inventario_cliente` (`id`);

--
-- Constraints for table `inventario_venta_producto`
--
ALTER TABLE `inventario_venta_producto`
  ADD CONSTRAINT `inventario_venta_pro_productos_id_e71fb86e_fk_inventari` FOREIGN KEY (`productos_id`) REFERENCES `inventario_productos` (`id`),
  ADD CONSTRAINT `inventario_venta_pro_venta_id_d27b3980_fk_inventari` FOREIGN KEY (`venta_id`) REFERENCES `inventario_venta` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
