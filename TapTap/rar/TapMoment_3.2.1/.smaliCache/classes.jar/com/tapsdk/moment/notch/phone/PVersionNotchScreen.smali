.class public Lcom/tapsdk/moment/notch/phone/PVersionNotchScreen;
.super Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;
.source "PVersionNotchScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchHeight(Landroid/view/Window;)I
    .registers 6
    .param p1, "window"    # Landroid/view/Window;

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_8

    return v1

    .line 31
    :cond_8
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 32
    .local v0, "windowInsets":Landroid/view/WindowInsets;
    if-nez v0, :cond_13

    .line 33
    return v1

    .line 36
    :cond_13
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    .line 37
    .local v2, "displayCutout":Landroid/view/DisplayCutout;
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_20

    goto :goto_25

    .line 41
    :cond_20
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 43
    .local v1, "notchHeight":I
    return v1

    .line 38
    .end local v1    # "notchHeight":I
    :cond_25
    :goto_25
    return v1
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .registers 6
    .param p1, "window"    # Landroid/view/Window;

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_8

    return v1

    .line 16
    :cond_8
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 17
    .local v0, "windowInsets":Landroid/view/WindowInsets;
    if-nez v0, :cond_13

    .line 18
    return v1

    .line 20
    :cond_13
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    .line 21
    .local v2, "displayCutout":Landroid/view/DisplayCutout;
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_20

    goto :goto_22

    .line 24
    :cond_20
    const/4 v1, 0x1

    return v1

    .line 22
    :cond_22
    :goto_22
    return v1
.end method
