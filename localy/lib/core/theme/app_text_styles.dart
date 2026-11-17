import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';

abstract final class AppTextStyles {
  // Barra superior del Home.
  static const brand = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const greeting = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  static const date = TextStyle(fontSize: 12, color: AppColors.textTertiary);

  // Títulos de pantalla: Productos, Nueva venta, Nuevo producto.
  static const screenTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // Títulos de sección: MAS VENDIDOS, STOCK BAJO.
  static const sectionTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // Tarjetas de producto.
  static const cardTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const cardSubtitle = TextStyle(
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  static const cardStock = TextStyle(fontSize: 12, color: AppColors.textSubtle);

  // Tarjetas de métricas.
  static const metricLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.textSecondary,
  );

  static const metricValue = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const metricDescription = TextStyle(
    fontSize: 12,
    color: AppColors.textTertiary,
  );

  // Tarjeta de ingresos.
  static const salesLabel = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textOnDarkSecondary,
  );

  static const salesAmount = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.surface,
  );

  static const badge = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const rank = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.textSecondary,
  );

  // Filtros de categoría.
  static const chip = TextStyle(fontSize: 14, color: AppColors.textMuted);

  static const chipSelected = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.surface,
  );

  // Etiquetas de formulario: CODIGO DE BARRAS, PRECIO, STOCK...
  static const inputLabel = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.bold,
    color: AppColors.textSecondary,
  );

  // Estado vacío del carrito.
  static const emptyTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const emptySubtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w200,
    color: AppColors.textPrimary,
  );

  // Botones y acciones.
  static const buttonLabel = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const actionLabel = TextStyle(fontWeight: FontWeight.w600);

  static const price = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
}
