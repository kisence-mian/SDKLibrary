.class public Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;
.super Lcom/mintegral/msdk/mtgjscommon/windvane/i;
.source "BaseVideoBridge.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/bridge/IVideoBridge;


# instance fields
.field protected a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 426
    const-string v0, ""

    .line 428
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 429
    const-string v2, "code"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 430
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 432
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 438
    :cond_1f
    :goto_1f
    return-object v0

    .line 436
    :catch_20
    move-exception v1

    const-string v1, "JS-Video-Brigde"

    const-string v2, "code to string is error"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method


# virtual methods
.method public click(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 113
    const-string v0, "JS-Video-Brigde"

    const-string v1, "install"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :try_start_7
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_2b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_36

    move-result v0

    if-nez v0, :cond_2b

    .line 120
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 122
    const-string v2, "pt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_21} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_21} :catch_36

    move-result-object v0

    .line 128
    :goto_22
    :try_start_22
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/mintegral/msdk/video/js/b;->b(ILjava/lang/String;)V

    .line 133
    :cond_2b
    :goto_2b
    return-void

    .line 123
    :catch_2c
    move-exception v0

    .line 124
    const/4 v2, 0x1

    .line 125
    const-string v1, ""

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_33} :catch_36

    move-object v0, v1

    move v1, v2

    goto :goto_22

    .line 130
    :catch_36
    move-exception v0

    .line 131
    const-string v1, "JS-Video-Brigde"

    const-string v2, "install error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method public closeVideoOperte(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_4d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 241
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 242
    const-string v1, "close"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 243
    const-string v2, "view_visible"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    const-string v2, "JS-Video-Brigde"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "closeVideoOperte,close:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",viewVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/mintegral/msdk/video/js/h;->closeVideoOperate(II)V

    .line 247
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 252
    :cond_4d
    :goto_4d
    return-void

    .line 249
    :catch_4e
    move-exception v0

    .line 250
    const-string v1, "JS-Video-Brigde"

    const-string v2, "closeOperte error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d
.end method

.method public getCurrentProgress(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_37

    .line 275
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/h;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v1, "JS-Video-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentProgress:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_31
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    .line 285
    :cond_37
    :goto_37
    return-void

    .line 282
    :catch_38
    move-exception v0

    .line 283
    const-string v1, "JS-Video-Brigde"

    const-string v2, "getCurrentProgress error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37
.end method

.method public handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_3c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 354
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 355
    const-string v1, "JS-Video-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handlerH5Exception,params:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "code"

    const/16 v2, -0x3e7

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 357
    const-string v2, "message"

    const-string v3, "h5 error"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/mintegral/msdk/video/js/b;->c(ILjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 363
    :cond_3c
    :goto_3c
    return-void

    .line 360
    :catch_3d
    move-exception v0

    .line 361
    const-string v1, "JS-Video-Brigde"

    const-string v2, "toggleCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c
.end method

.method public init(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    const-string v1, "JS-Video-Brigde"

    const-string v4, "init"

    invoke-static {v1, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :try_start_9
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v1, :cond_81

    .line 63
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_26
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {p1, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/b;->b()V

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v4, "showTransparent"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 73
    const-string v5, "mute"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 74
    const-string v6, "closeType"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 75
    const-string v7, "orientationType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    iget-object v7, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v7}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v7

    if-ne v4, v2, :cond_7f

    :goto_60
    invoke-interface {v7, v2}, Lcom/mintegral/msdk/video/js/b;->a(Z)V

    .line 77
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/mintegral/msdk/video/js/b;->b(I)V

    .line 78
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/mintegral/msdk/video/js/b;->c(I)V

    .line 79
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mintegral/msdk/video/js/b;->d(I)V

    .line 109
    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    move v2, v3

    .line 76
    goto :goto_60

    .line 84
    :cond_81
    if-eqz p1, :cond_7e

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    move-object v1, v0

    .line 86
    iget-object v4, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v4}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/mintegral/msdk/video/js/a/h;

    if-eqz v4, :cond_7e

    .line 87
    iget-object v1, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/video/js/a/h;

    .line 88
    invoke-virtual {v1}, Lcom/mintegral/msdk/video/js/a/h;->c()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e2

    .line 90
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v6, "showTransparent"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 92
    const-string v7, "mute"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 93
    const-string v8, "closeType"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 94
    const-string v9, "orientationType"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 95
    if-ne v6, v2, :cond_fb

    :goto_c2
    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/video/js/a/h;->a(Z)V

    .line 96
    invoke-virtual {v1, v7}, Lcom/mintegral/msdk/video/js/a/h;->b(I)V

    .line 97
    invoke-virtual {v1, v8}, Lcom/mintegral/msdk/video/js/a/h;->c(I)V

    .line 98
    invoke-virtual {v1, v5}, Lcom/mintegral/msdk/video/js/a/h;->d(I)V

    .line 99
    const-string v1, "JS-Video-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init jsCommon.setIsShowingTransparent = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_e2
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {p1, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f1} :catch_f2

    goto :goto_7e

    .line 106
    :catch_f2
    move-exception v1

    .line 107
    const-string v2, "JS-Video-Brigde"

    const-string v3, "init error"

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7e

    :cond_fb
    move v2, v3

    .line 95
    goto :goto_c2
.end method

.method public initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 4

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;->initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_f

    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    .line 56
    :cond_f
    return-void
.end method

.method public isSystemResume(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_2c

    .line 369
    const-string v0, "JS-Video-Brigde"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSystemResume,params:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getActivityProxy()Lcom/mintegral/msdk/video/js/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/a;->e()I

    move-result v0

    .line 371
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {v0}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 376
    :cond_2c
    :goto_2c
    return-void

    .line 373
    :catch_2d
    move-exception v0

    .line 374
    const-string v1, "JS-Video-Brigde"

    const-string v2, "toggleCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2c
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 319
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 320
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 321
    const-string v1, "JS-Video-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyCloseBtn,result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/h;->notifyCloseBtn(I)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    .line 327
    :cond_32
    :goto_32
    return-void

    .line 324
    :catch_33
    move-exception v0

    .line 325
    const-string v1, "JS-Video-Brigde"

    const-string v2, "notifyCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method public playVideoFinishOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 411
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 423
    :cond_6
    :goto_6
    return-void

    .line 414
    :cond_7
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 415
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 416
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 417
    const-string v1, "JS-Video-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playVideoFinishOperate,type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/b;->e(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_6

    .line 420
    :catch_3a
    move-exception v0

    .line 421
    const-string v1, "JS-Video-Brigde"

    const-string v2, "playVideoFinishOperate error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public progressOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_4d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 258
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 260
    const-string v2, "view_visible"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 261
    const-string v2, "JS-Video-Brigde"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "progressOperate,progress:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",viewVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/mintegral/msdk/video/js/h;->progressOperate(II)V

    .line 264
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 269
    :cond_4d
    :goto_4d
    return-void

    .line 266
    :catch_4e
    move-exception v0

    .line 267
    const-string v1, "JS-Video-Brigde"

    const-string v2, "progressOperate error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d
.end method

.method public readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_2e

    .line 382
    const-string v0, "JS-Video-Brigde"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readyStatus,isReady:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 384
    const-string v1, "isReady"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/d;->readyStatus(I)V

    .line 406
    :cond_2d
    :goto_2d
    return-void

    .line 387
    :cond_2e
    if-eqz p1, :cond_2d

    .line 388
    check-cast p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 389
    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mintegral/msdk/video/js/a/h;

    if-eqz v0, :cond_2d

    .line 390
    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/video/js/a/h;

    .line 391
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 392
    const-string v2, "isReady"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 393
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/js/a/h;->f(I)V

    .line 394
    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    instance-of v0, v0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_2d

    .line 395
    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 396
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getWebViewListener()Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 397
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getWebViewListener()Lcom/mintegral/msdk/mtgjscommon/windvane/c;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/c;->a(I)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_68} :catch_69

    goto :goto_2d

    .line 403
    :catch_69
    move-exception v0

    .line 404
    const-string v1, "JS-Video-Brigde"

    const-string v2, "readyStatus"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method public setScaleFitXY(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    const-string v1, "fitxy"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 307
    const-string v1, "JS-Video-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setScaleFitXY,type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/h;->setScaleFitXY(I)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    .line 313
    :cond_32
    :goto_32
    return-void

    .line 310
    :catch_33
    move-exception v0

    .line 311
    const-string v1, "JS-Video-Brigde"

    const-string v2, "showVideoClickView error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method public showVideoClickView(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_32

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 291
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 293
    const-string v1, "JS-Video-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showVideoClickView,type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/d;->showVideoClickView(I)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    .line 299
    :cond_32
    :goto_32
    return-void

    .line 296
    :catch_33
    move-exception v0

    .line 297
    const-string v1, "JS-Video-Brigde"

    const-string v2, "showVideoClickView error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method public showVideoLocation(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 171
    .line 172
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v1, :cond_6

    .line 173
    const/4 v0, 0x1

    .line 175
    :cond_6
    const-string v1, "Test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showVideoLocation in basevideobridge ff = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :try_start_1a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_de

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_de

    .line 178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    const-string v1, "margin_top"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 180
    const-string v2, "margin_left"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 181
    const-string v3, "view_width"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 182
    const-string v4, "view_height"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 183
    const-string v5, "radius"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 184
    const-string v6, "border_top"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 185
    const-string v7, "border_left"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 186
    const-string v8, "border_width"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 187
    const-string v9, "border_height"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 189
    const-string v0, "JS-Video-Brigde"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "showVideoLocation,margin_top:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",marginLeft:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",viewWidth:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",viewHeight:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",radius:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",borderTop: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",borderLeft: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",borderWidth: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",borderHeight: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface/range {v0 .. v9}, Lcom/mintegral/msdk/video/js/h;->showVideoLocation(IIIIIIIII)V

    .line 192
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->f()V
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_de} :catch_df

    .line 197
    :cond_de
    :goto_de
    return-void

    .line 194
    :catch_df
    move-exception v0

    .line 195
    const-string v1, "JS-Video-Brigde"

    const-string v2, "showVideoLocation error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_de
.end method

.method public soundOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_65

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 203
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v1, "mute"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 205
    const-string v2, "view_visible"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 206
    const-string v3, "pt"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v3, "JS-Video-Brigde"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "soundOperate,mute:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",viewVisible:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",pt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 209
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/js/h;->soundOperate(II)V

    .line 214
    :goto_5a
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    :cond_65
    :goto_65
    return-void

    .line 211
    :cond_66
    iget-object v3, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v3}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lcom/mintegral/msdk/video/js/h;->soundOperate(IILjava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_5a

    .line 216
    :catch_70
    move-exception v0

    .line 217
    const-string v1, "JS-Video-Brigde"

    const-string v2, "soundOperate error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_65
.end method

.method public statistics(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 137
    const-string v0, "JS-Video-Brigde"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "statistics,params:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_14
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 142
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/mintegral/msdk/video/js/b;->a(ILjava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_38} :catch_39

    .line 148
    :cond_38
    :goto_38
    return-void

    .line 145
    :catch_39
    move-exception v0

    .line 146
    const-string v1, "JS-Video-Brigde"

    const-string v2, "statistics error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    :try_start_3
    iget-object v3, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v3, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 333
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    const-string v4, "state"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 335
    const-string v4, "JS-Video-Brigde"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "toggleCloseBtn,result:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    if-ne v3, v1, :cond_39

    .line 343
    :goto_2e
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/mintegral/msdk/video/js/h;->closeVideoOperate(II)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_38} :catch_3f

    .line 348
    :cond_38
    :goto_38
    return-void

    .line 338
    :cond_39
    if-ne v3, v0, :cond_3d

    move v0, v1

    .line 339
    goto :goto_2e

    :cond_3d
    move v0, v2

    .line 341
    goto :goto_2e

    .line 345
    :catch_3f
    move-exception v0

    .line 346
    const-string v1, "JS-Video-Brigde"

    const-string v2, "toggleCloseBtn"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 153
    const-string v0, "JS-Video-Brigde"

    const-string v1, "triggerCloseBtn"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :try_start_7
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_3a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 160
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/js/h;->closeVideoOperate(II)V

    .line 161
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_3a} :catch_3b

    .line 167
    :cond_3a
    :goto_3a
    return-void

    .line 164
    :catch_3b
    move-exception v0

    .line 165
    const-string v1, "JS-Video-Brigde"

    const-string v2, "triggerCloseBtn error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method public videoOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    if-eqz v0, :cond_3d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 225
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    const-string v1, "pause_or_resume"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    const-string v1, "JS-Video-Brigde"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "videoOperate,pauseOrResume:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/h;->videoOperate(I)V

    .line 230
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/video/js/bridge/BaseVideoBridge;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 235
    :cond_3d
    :goto_3d
    return-void

    .line 232
    :catch_3e
    move-exception v0

    .line 233
    const-string v1, "JS-Video-Brigde"

    const-string v2, "videoOperate error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d
.end method
