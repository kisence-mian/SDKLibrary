.class public Lcom/tapsdk/moment/notch/NotchTools;
.super Ljava/lang/Object;
.source "NotchTools.java"

# interfaces
.implements Lcom/tapsdk/moment/notch/core/INotchSupport;


# static fields
.field private static final CURRENT_SDK:I

.field private static final VERSION_P:I = 0x1c

.field private static sFullScreenTolls:Lcom/tapsdk/moment/notch/NotchTools;


# instance fields
.field private mHasJudge:Z

.field private mIsNotchScreen:Z

.field private notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/tapsdk/moment/notch/NotchTools;->CURRENT_SDK:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    .line 42
    return-void
.end method

.method private checkScreenSupportInit(Landroid/view/Window;)V
    .registers 4
    .param p1, "window"    # Landroid/view/Window;

    .line 77
    iget-object v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    if-eqz v0, :cond_5

    .line 78
    return-void

    .line 81
    :cond_5
    sget v0, Lcom/tapsdk/moment/notch/NotchTools;->CURRENT_SDK:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_13

    .line 82
    new-instance v0, Lcom/tapsdk/moment/notch/phone/CommonScreen;

    invoke-direct {v0}, Lcom/tapsdk/moment/notch/phone/CommonScreen;-><init>()V

    iput-object v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    .line 83
    return-void

    .line 88
    :cond_13
    const/16 v1, 0x1c

    if-gt v0, v1, :cond_5b

    .line 89
    invoke-static {}, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->getInstance()Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;

    move-result-object v0

    .line 90
    .local v0, "deviceBrandTools":Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;
    invoke-virtual {v0}, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->isHuaWei()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 91
    new-instance v1, Lcom/tapsdk/moment/notch/phone/HuaWeiNotchScreen;

    invoke-direct {v1}, Lcom/tapsdk/moment/notch/phone/HuaWeiNotchScreen;-><init>()V

    iput-object v1, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    goto :goto_5a

    .line 92
    :cond_29
    invoke-virtual {v0}, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->isMiui()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 93
    new-instance v1, Lcom/tapsdk/moment/notch/phone/MiuiNotchScreen;

    invoke-direct {v1}, Lcom/tapsdk/moment/notch/phone/MiuiNotchScreen;-><init>()V

    iput-object v1, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    goto :goto_5a

    .line 94
    :cond_37
    invoke-virtual {v0}, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->isVivo()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 95
    new-instance v1, Lcom/tapsdk/moment/notch/phone/VivoNotchScreen;

    invoke-direct {v1}, Lcom/tapsdk/moment/notch/phone/VivoNotchScreen;-><init>()V

    iput-object v1, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    goto :goto_5a

    .line 96
    :cond_45
    invoke-virtual {v0}, Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;->isOppo()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 97
    new-instance v1, Lcom/tapsdk/moment/notch/phone/OppoNotchScreen;

    invoke-direct {v1}, Lcom/tapsdk/moment/notch/phone/OppoNotchScreen;-><init>()V

    iput-object v1, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    goto :goto_5a

    .line 99
    :cond_53
    new-instance v1, Lcom/tapsdk/moment/notch/phone/CommonScreen;

    invoke-direct {v1}, Lcom/tapsdk/moment/notch/phone/CommonScreen;-><init>()V

    iput-object v1, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    .line 101
    :goto_5a
    return-void

    .line 104
    .end local v0    # "deviceBrandTools":Lcom/tapsdk/moment/notch/helper/DeviceBrandTools;
    :cond_5b
    new-instance v0, Lcom/tapsdk/moment/notch/phone/PVersionNotchScreen;

    invoke-direct {v0}, Lcom/tapsdk/moment/notch/phone/PVersionNotchScreen;-><init>()V

    iput-object v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    .line 105
    return-void
.end method

.method public static getFullScreenTools()Lcom/tapsdk/moment/notch/NotchTools;
    .registers 2

    .line 30
    sget-object v0, Lcom/tapsdk/moment/notch/NotchTools;->sFullScreenTolls:Lcom/tapsdk/moment/notch/NotchTools;

    if-nez v0, :cond_17

    .line 31
    const-class v0, Lcom/tapsdk/moment/notch/NotchTools;

    monitor-enter v0

    .line 32
    :try_start_7
    sget-object v1, Lcom/tapsdk/moment/notch/NotchTools;->sFullScreenTolls:Lcom/tapsdk/moment/notch/NotchTools;

    if-nez v1, :cond_12

    .line 33
    new-instance v1, Lcom/tapsdk/moment/notch/NotchTools;

    invoke-direct {v1}, Lcom/tapsdk/moment/notch/NotchTools;-><init>()V

    sput-object v1, Lcom/tapsdk/moment/notch/NotchTools;->sFullScreenTolls:Lcom/tapsdk/moment/notch/NotchTools;

    .line 35
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 37
    :cond_17
    :goto_17
    sget-object v0, Lcom/tapsdk/moment/notch/NotchTools;->sFullScreenTolls:Lcom/tapsdk/moment/notch/NotchTools;

    return-object v0
.end method


# virtual methods
.method public getNotchHeight(Landroid/view/Window;)I
    .registers 3
    .param p1, "window"    # Landroid/view/Window;

    .line 62
    iget-object v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    if-nez v0, :cond_7

    .line 63
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/notch/NotchTools;->checkScreenSupportInit(Landroid/view/Window;)V

    .line 65
    :cond_7
    iget-object v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    if-nez v0, :cond_d

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_d
    invoke-interface {v0, p1}, Lcom/tapsdk/moment/notch/core/INotchSupport;->getNotchHeight(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method public getStatusHeight(Landroid/view/Window;)I
    .registers 3
    .param p1, "window"    # Landroid/view/Window;

    .line 73
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapsdk/moment/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .registers 3
    .param p1, "window"    # Landroid/view/Window;

    .line 46
    iget-boolean v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->mHasJudge:Z

    if-nez v0, :cond_1c

    .line 47
    iget-object v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    if-nez v0, :cond_b

    .line 48
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/notch/NotchTools;->checkScreenSupportInit(Landroid/view/Window;)V

    .line 50
    :cond_b
    iget-object v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->notchScreenSupport:Lcom/tapsdk/moment/notch/core/INotchSupport;

    if-nez v0, :cond_16

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->mHasJudge:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->mIsNotchScreen:Z

    goto :goto_1c

    .line 54
    :cond_16
    invoke-interface {v0, p1}, Lcom/tapsdk/moment/notch/core/INotchSupport;->isNotchScreen(Landroid/view/Window;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->mIsNotchScreen:Z

    .line 57
    :cond_1c
    :goto_1c
    iget-boolean v0, p0, Lcom/tapsdk/moment/notch/NotchTools;->mIsNotchScreen:Z

    return v0
.end method
