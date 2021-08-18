.class Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$EclairDrawableImpl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$EclairDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
