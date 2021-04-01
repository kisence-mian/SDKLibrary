.class public Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;
.super Lcom/mintegral/msdk/mtgjscommon/windvane/i;
.source "BaseRewardJs.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;


# instance fields
.field protected a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 135
    const-string v0, ""

    .line 137
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 141
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1f} :catch_21

    move-result-object v0

    .line 147
    :cond_20
    :goto_20
    return-object v0

    .line 145
    :catch_21
    move-exception v1

    const-string v1, "JS-Reward-Brigde"

    const-string v2, "code to string is error"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method


# virtual methods
.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 58
    :try_start_0
    const-string v0, "JS-Reward-Brigde"

    const-string v1, "getEndScreenInfo"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    if-eqz v0, :cond_10

    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 65
    :cond_10
    :goto_10
    return-void

    .line 62
    :catch_11
    move-exception v0

    .line 63
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "getEndScreenInfo"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    if-eqz v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 127
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 132
    :cond_f
    :goto_f
    return-void

    .line 129
    :catch_10
    move-exception v0

    .line 130
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "handlerPlayableException"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;->initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    .line 31
    :try_start_4
    const-string v0, "com.mintegral.msdk.video.js.factory.IJSFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_f} :catch_42

    move-result v0

    .line 38
    :goto_10
    if-eqz v0, :cond_48

    .line 39
    :try_start_12
    const-string v0, "com.mintegral.msdk.video.js.bridge.BaseRewardJsH5"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    .line 41
    const-string v0, "initialize"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_41} :catch_5f

    .line 53
    :cond_41
    :goto_41
    return-void

    .line 34
    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_10

    .line 44
    :cond_48
    :try_start_48
    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    if-eqz v0, :cond_41

    .line 45
    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5e} :catch_5f

    goto :goto_41

    .line 48
    :catch_5f
    move-exception v0

    .line 49
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_41

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;->install(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 76
    :cond_9
    :goto_9
    return-void

    .line 73
    :catch_a
    move-exception v0

    .line 74
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "install"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    if-eqz v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 87
    :cond_f
    :goto_f
    return-void

    .line 84
    :catch_10
    move-exception v0

    .line 85
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "notifyCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    if-eqz v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 116
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 121
    :cond_f
    :goto_f
    return-void

    .line 118
    :catch_10
    move-exception v0

    .line 119
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "setOrientation"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    if-eqz v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 93
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 98
    :cond_f
    :goto_f
    return-void

    .line 95
    :catch_10
    move-exception v0

    .line 96
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "toggleCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    if-eqz v0, :cond_f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 104
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a:Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 110
    :cond_f
    :goto_f
    return-void

    .line 106
    :catch_10
    move-exception v0

    .line 107
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "triggerCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f
.end method
