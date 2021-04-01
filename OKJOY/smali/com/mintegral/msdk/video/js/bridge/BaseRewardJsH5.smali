.class public Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;
.super Ljava/lang/Object;
.source "BaseRewardJsH5.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;


# instance fields
.field protected a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 142
    const-string v0, ""

    .line 144
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 145
    const-string v2, "code"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 154
    :cond_1f
    :goto_1f
    return-object v0

    .line 152
    :catch_20
    move-exception v1

    const-string v1, "JS-Reward-Brigde"

    const-string v2, "code to string is error"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method


# virtual methods
.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_2a

    .line 34
    const-string v0, "JS-Reward-Brigde"

    const-string v1, "getEndScreenInfo"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_24
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    :cond_2a
    :goto_2a
    return-void

    .line 39
    :cond_2b
    const-string v0, ""
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_24

    .line 43
    :catch_2e
    move-exception v0

    .line 44
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "getEndScreenInfo"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "JS-Reward-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handlerPlayableException,msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/g;->c(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    .line 139
    :cond_32
    :goto_32
    return-void

    .line 136
    :catch_33
    move-exception v0

    .line 137
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "setOrientation"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method public initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 4

    .prologue
    .line 25
    instance-of v0, p1, Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_8

    .line 26
    check-cast p1, Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    iput-object p1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    .line 28
    :cond_8
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_2e

    .line 52
    const-string v0, "JS-Reward-Brigde"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "install:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/d;->endCardShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p2}, Lcom/mintegral/msdk/video/js/b;->b(ILjava/lang/String;)V

    .line 63
    :cond_2e
    :goto_2e
    return-void

    .line 57
    :cond_2f
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/mintegral/msdk/video/js/b;->b(ILjava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_2e

    .line 60
    :catch_3a
    move-exception v0

    .line 61
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "install"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    const-string v1, "JS-Reward-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyCloseBtn,state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/g;->notifyCloseBtn(I)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    .line 77
    :cond_32
    :goto_32
    return-void

    .line 74
    :catch_33
    move-exception v0

    .line 75
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "notifyCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "JS-Reward-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setOrientation,state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/g;->b(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    .line 124
    :cond_32
    :goto_32
    return-void

    .line 121
    :catch_33
    move-exception v0

    .line 122
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "setOrientation"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    const-string v1, "JS-Reward-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toggleCloseBtn,state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/g;->toggleCloseBtn(I)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    .line 91
    :cond_32
    :goto_32
    return-void

    .line 88
    :catch_33
    move-exception v0

    .line 89
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "toggleCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_3d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 98
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getIJSRewardVideoV1()Lcom/mintegral/msdk/video/js/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/g;->a(Ljava/lang/String;)V

    .line 103
    const-string v0, "JS-Reward-Brigde"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "triggerCloseBtn,state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 110
    :cond_3d
    :goto_3d
    return-void

    .line 106
    :catch_3e
    move-exception v0

    .line 107
    const-string v1, "JS-Reward-Brigde"

    const-string v2, "triggerCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJsH5;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3d
.end method
