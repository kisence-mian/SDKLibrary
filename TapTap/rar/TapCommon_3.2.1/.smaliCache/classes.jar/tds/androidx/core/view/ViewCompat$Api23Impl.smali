.class Ltds/androidx/core/view/ViewCompat$Api23Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3441
    return-void
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 4
    .param p0, "v"    # Landroid/view/View;

    .line 3445
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 3446
    .local v0, "wi":Landroid/view/WindowInsets;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 3448
    :cond_8
    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v1

    .line 3451
    .local v1, "insets":Ltds/androidx/core/view/WindowInsetsCompat;
    invoke-virtual {v1, v1}, Ltds/androidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 3452
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltds/androidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V

    .line 3453
    return-object v1
.end method
