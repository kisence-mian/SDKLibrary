.class Ltds/androidx/core/view/ViewCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3422
    return-void
.end method

.method static computeSystemWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .line 3426
    invoke-virtual {p1}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 3427
    .local v0, "platformInsets":Landroid/view/WindowInsets;
    if-eqz v0, :cond_10

    .line 3428
    nop

    .line 3429
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 3428
    invoke-static {v1, p0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1

    .line 3431
    :cond_10
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3432
    return-object p1
.end method
