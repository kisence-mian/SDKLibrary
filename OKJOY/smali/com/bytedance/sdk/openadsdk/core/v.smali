.class public Lcom/bytedance/sdk/openadsdk/core/v;
.super Ljava/lang/Object;
.source "TTAdManagerImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdManager;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const-string v0, "com.union_test.toutiao"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->a:Ljava/lang/String;

    .line 175
    const-string v0, "5001121"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;
    .registers 3

    .prologue
    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->i()Lcom/bytedance/sdk/openadsdk/core/h/k;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Lcom/bytedance/sdk/openadsdk/core/h/e;)Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a()V

    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Lcom/bytedance/sdk/openadsdk/core/h/e;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->c()V

    .line 38
    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/v;
    .registers 3

    .prologue
    .line 49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Z)V

    .line 50
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;
    .registers 3

    .prologue
    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->b(Ljava/lang/String;)V

    .line 44
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;
    .registers 3

    .prologue
    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->c(Ljava/lang/String;)V

    .line 56
    return-object p0
.end method

.method public createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;
    .registers 3

    .prologue
    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->o()V

    .line 111
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/w;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;
    .registers 3

    .prologue
    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->d(Ljava/lang/String;)V

    .line 62
    return-object p0
.end method

.method public getGlobalAppDownloadController(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadController;
    .registers 3

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    const-string v0, "2.9.5.3"

    return-object v0
.end method

.method public isUseTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->d(Z)V

    .line 117
    return-object p0
.end method

.method public onlyVerityPlayable(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/v;->a:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/v;->b:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 203
    :cond_22
    :goto_22
    return v0

    .line 182
    :cond_23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 192
    :try_start_29
    const-string v0, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    const-string v2, "verityPlayable"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_69

    .line 196
    const/4 v2, 0x0

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_69} :catch_6b

    :cond_69
    :goto_69
    move v0, v1

    .line 203
    goto :goto_22

    .line 198
    :catch_6b
    move-exception v0

    .line 199
    const-string v2, "TTAdManagerImpl"

    const-string v3, "reward component maybe not exist, pls check"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69
.end method

.method public openDebugMode()Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 1

    .prologue
    .line 79
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->b()V

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->c()V

    .line 81
    return-object p0
.end method

.method public requestPermissionIfNecessary(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 146
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1d

    .line 148
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v1

    .line 149
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v2

    .line 150
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    .line 151
    if-nez v1, :cond_1d

    if-nez v2, :cond_1d

    if-nez v0, :cond_1d

    .line 162
    :cond_1c
    :goto_1c
    return-void

    .line 156
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    if-eqz p1, :cond_1c

    .line 160
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)V

    goto :goto_1c
.end method

.method public setAllowLandingPageShowWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->c(Z)V

    .line 87
    return-object p0
.end method

.method public setAllowShowNotifiFromSDK(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->b(Z)V

    .line 74
    return-object p0
.end method

.method public synthetic setAppId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    return-object v0
.end method

.method public setCustomController(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 134
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    .line 135
    return-object p0
.end method

.method public synthetic setData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    return-object v0
.end method

.method public varargs setDirectDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 103
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a([I)V

    .line 104
    return-object p0
.end method

.method public setGlobalAppDownloadListener(Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 92
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Lcom/bytedance/sdk/openadsdk/TTGlobalAppDownloadListener;)V

    .line 93
    return-object p0
.end method

.method public synthetic setKeywords(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    return-object v0
.end method

.method public setNeedClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a([Ljava/lang/String;)V

    .line 141
    return-object p0
.end method

.method public synthetic setPaid(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Z)Lcom/bytedance/sdk/openadsdk/core/v;

    move-result-object v0

    return-object v0
.end method

.method public setTTDownloadEventLogger(Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 122
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Lcom/bytedance/sdk/openadsdk/TTDownloadEventLogger;)V

    .line 123
    return-object p0
.end method

.method public setTTSecAbs(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 128
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)V

    .line 129
    return-object p0
.end method

.method public setTitleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .registers 3

    .prologue
    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)V

    .line 68
    return-object p0
.end method

.method public tryShowInstallDialogWhenExit(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)Z
    .registers 4

    .prologue
    .line 166
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)Z

    move-result v0

    return v0
.end method
