.class Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    return-void
.end method


# virtual methods
.method getSystemBarsBehavior()I
    .registers 2

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method hide(I)V
    .registers 2
    .param p1, "types"    # I

    .line 243
    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .registers 2

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .registers 2

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .registers 2
    .param p1, "isLight"    # Z

    .line 264
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .registers 2
    .param p1, "isLight"    # Z

    .line 257
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .registers 2
    .param p1, "behavior"    # I

    .line 246
    return-void
.end method

.method show(I)V
    .registers 2
    .param p1, "types"    # I

    .line 240
    return-void
.end method
