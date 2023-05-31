.class public Lcom/tapsdk/moment/notch/phone/MiuiNotchScreen;
.super Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;
.source "MiuiNotchScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/tapsdk/moment/notch/core/AbsNotchScreenSupport;-><init>()V

    return-void
.end method

.method private getRealNotchHeight(Landroid/content/Context;)I
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "result":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notch_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 46
    .local v1, "resourceId":I
    if-lez v1, :cond_19

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 49
    :cond_19
    return v0
.end method

.method private isHideNotch(Landroid/content/Context;)Z
    .registers 5
    .param p1, "activity"    # Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_black"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
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
    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/notch/phone/MiuiNotchScreen;->isNotchScreen(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 27
    return v1

    .line 30
    :cond_f
    const/4 v0, 0x0

    .line 31
    .local v0, "result":I
    if-nez p1, :cond_13

    .line 32
    return v1

    .line 34
    :cond_13
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tapsdk/moment/notch/phone/MiuiNotchScreen;->isHideNotch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 36
    invoke-static {v1}, Lcom/tapsdk/moment/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_2a

    .line 38
    :cond_26
    invoke-direct {p0, v1}, Lcom/tapsdk/moment/notch/phone/MiuiNotchScreen;->getRealNotchHeight(Landroid/content/Context;)I

    move-result v0

    .line 40
    :goto_2a
    return v0
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .registers 4
    .param p1, "window"    # Landroid/view/Window;

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 20
    :cond_8
    invoke-static {}, Lcom/tapsdk/moment/notch/helper/SystemProperties;->getInstance()Lcom/tapsdk/moment/notch/helper/SystemProperties;

    move-result-object v0

    const-string v1, "ro.miui.notch"

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/notch/helper/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
