.class public Lcom/tapsdk/moment/notch/phone/OppoNotchScreen;
.super Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;
.source "OppoNotchScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchHeight(Landroid/view/Window;)I
    .registers 5
    .param p1, "window"    # Landroid/view/Window;

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_8

    return v1

    .line 26
    :cond_8
    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/notch/phone/OppoNotchScreen;->isNotchScreen(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 27
    return v1

    .line 30
    :cond_f
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapsdk/moment/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .registers 5
    .param p1, "window"    # Landroid/view/Window;

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_8

    return v1

    .line 17
    :cond_8
    if-nez p1, :cond_b

    .line 18
    return v1

    .line 20
    :cond_b
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
