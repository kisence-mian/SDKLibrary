.class Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;
.super Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# instance fields
.field private final mInsetsController:Landroid/view/WindowInsetsController;


# direct methods
.method constructor <init>(Landroid/view/Window;)V
    .registers 3
    .param p1, "window"    # Landroid/view/Window;

    .line 451
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 452
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    .line 453
    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;)V
    .registers 2
    .param p1, "insetsController"    # Landroid/view/WindowInsetsController;

    .line 455
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 456
    iput-object p1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    .line 457
    return-void
.end method


# virtual methods
.method getSystemBarsBehavior()I
    .registers 2

    .line 527
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0}, Landroid/view/WindowInsetsController;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method hide(I)V
    .registers 3
    .param p1, "types"    # I

    .line 466
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 467
    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .registers 2

    .line 490
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .registers 2

    .line 471
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .registers 5
    .param p1, "isLight"    # Z

    .line 496
    const/16 v0, 0x10

    if-eqz p1, :cond_a

    .line 497
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v1, v0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_10

    .line 501
    :cond_a
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 505
    :goto_10
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .registers 5
    .param p1, "isLight"    # Z

    .line 477
    const/16 v0, 0x8

    if-eqz p1, :cond_a

    .line 478
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v1, v0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_10

    .line 482
    :cond_a
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 486
    :goto_10
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .registers 3
    .param p1, "behavior"    # I

    .line 515
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 516
    return-void
.end method

.method show(I)V
    .registers 3
    .param p1, "types"    # I

    .line 461
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;->mInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsController;->show(I)V

    .line 462
    return-void
.end method
