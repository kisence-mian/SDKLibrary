.class public final Ltds/androidx/core/view/WindowInsetsControllerCompat;
.super Ljava/lang/Object;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;,
        Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl26;,
        Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;,
        Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;,
        Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;,
        Ltds/androidx/core/view/WindowInsetsControllerCompat$Behavior;
    }
.end annotation


# static fields
.field public static final BEHAVIOR_SHOW_BARS_BY_SWIPE:I = 0x1

.field public static final BEHAVIOR_SHOW_BARS_BY_TOUCH:I = 0x0

.field public static final BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE:I = 0x2


# instance fields
.field private final mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 5
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "view"    # Landroid/view/View;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 97
    new-instance v0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;

    invoke-direct {v0, p1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_42

    .line 98
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1f

    .line 99
    new-instance v0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl26;

    invoke-direct {v0, p1, p2}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl26;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_42

    .line 100
    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2d

    .line 101
    new-instance v0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;

    invoke-direct {v0, p1, p2}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_42

    .line 102
    :cond_2d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3b

    .line 103
    new-instance v0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;

    invoke-direct {v0, p1, p2}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;-><init>(Landroid/view/Window;Landroid/view/View;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_42

    .line 105
    :cond_3b
    new-instance v0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-direct {v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 107
    :goto_42
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsetsController;)V
    .registers 4
    .param p1, "insetsController"    # Landroid/view/WindowInsetsController;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 89
    new-instance v0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;

    invoke-direct {v0, p1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/WindowInsetsController;)V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    goto :goto_18

    .line 91
    :cond_11
    new-instance v0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-direct {v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    .line 93
    :goto_18
    return-void
.end method

.method public static toWindowInsetsControllerCompat(Landroid/view/WindowInsetsController;)Ltds/androidx/core/view/WindowInsetsControllerCompat;
    .registers 2
    .param p0, "insetsController"    # Landroid/view/WindowInsetsController;

    .line 121
    new-instance v0, Ltds/androidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v0, p0}, Ltds/androidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/WindowInsetsController;)V

    return-object v0
.end method


# virtual methods
.method public getSystemBarsBehavior()I
    .registers 2

    .line 231
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;->getSystemBarsBehavior()I

    move-result v0

    return v0
.end method

.method public hide(I)V
    .registers 3
    .param p1, "types"    # I

    .line 161
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;->hide(I)V

    .line 162
    return-void
.end method

.method public isAppearanceLightNavigationBars()Z
    .registers 2

    .line 198
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;->isAppearanceLightNavigationBars()Z

    move-result v0

    return v0
.end method

.method public isAppearanceLightStatusBars()Z
    .registers 2

    .line 174
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;->isAppearanceLightStatusBars()Z

    move-result v0

    return v0
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .registers 3
    .param p1, "isLight"    # Z

    .line 210
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;->setAppearanceLightNavigationBars(Z)V

    .line 211
    return-void
.end method

.method public setAppearanceLightStatusBars(Z)V
    .registers 3
    .param p1, "isLight"    # Z

    .line 186
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;->setAppearanceLightStatusBars(Z)V

    .line 187
    return-void
.end method

.method public setSystemBarsBehavior(I)V
    .registers 3
    .param p1, "behavior"    # I

    .line 220
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;->setSystemBarsBehavior(I)V

    .line 221
    return-void
.end method

.method public show(I)V
    .registers 3
    .param p1, "types"    # I

    .line 147
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat;->mImpl:Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;->show(I)V

    .line 148
    return-void
.end method
