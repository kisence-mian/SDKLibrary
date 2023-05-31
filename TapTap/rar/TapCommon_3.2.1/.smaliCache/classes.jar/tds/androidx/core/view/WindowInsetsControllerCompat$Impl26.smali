.class Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl26;
.super Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl26"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "view"    # Landroid/view/View;

    .line 425
    invoke-direct {p0, p1, p2}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 426
    return-void
.end method


# virtual methods
.method public isAppearanceLightNavigationBars()Z
    .registers 2

    .line 430
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl26;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .registers 4
    .param p1, "isLight"    # Z

    .line 436
    const/16 v0, 0x10

    if-eqz p1, :cond_12

    .line 437
    const/high16 v1, 0x8000000

    invoke-virtual {p0, v1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl26;->unsetWindowFlag(I)V

    .line 438
    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl26;->setWindowFlag(I)V

    .line 439
    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl26;->setSystemUiFlag(I)V

    goto :goto_15

    .line 441
    :cond_12
    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl26;->unsetSystemUiFlag(I)V

    .line 443
    :goto_15
    return-void
.end method
