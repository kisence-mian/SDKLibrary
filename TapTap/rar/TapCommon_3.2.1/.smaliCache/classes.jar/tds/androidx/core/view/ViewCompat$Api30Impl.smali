.class Ltds/androidx/core/view/ViewCompat$Api30Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3475
    return-void
.end method

.method public static getWindowInsetsController(Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsControllerCompat;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3479
    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 3480
    .local v0, "windowInsetsController":Landroid/view/WindowInsetsController;
    if-eqz v0, :cond_b

    .line 3481
    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat;->toWindowInsetsControllerCompat(Landroid/view/WindowInsetsController;)Ltds/androidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 3480
    :goto_c
    return-object v1
.end method
