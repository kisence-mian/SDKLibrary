.class Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;
.super Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl23"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "view"    # Landroid/view/View;

    .line 400
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 401
    return-void
.end method


# virtual methods
.method public isAppearanceLightStatusBars()Z
    .registers 2

    .line 405
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setAppearanceLightStatusBars(Z)V
    .registers 4
    .param p1, "isLight"    # Z

    .line 411
    const/16 v0, 0x2000

    if-eqz p1, :cond_12

    .line 412
    const/high16 v1, 0x4000000

    invoke-virtual {p0, v1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;->unsetWindowFlag(I)V

    .line 413
    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;->setWindowFlag(I)V

    .line 414
    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;->setSystemUiFlag(I)V

    goto :goto_15

    .line 416
    :cond_12
    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;->unsetSystemUiFlag(I)V

    .line 418
    :goto_15
    return-void
.end method
