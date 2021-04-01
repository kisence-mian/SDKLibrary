.class public Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;
.super Lcom/mintegral/msdk/mtgjscommon/windvane/i;
.source "MraidJSBridge.java"


# instance fields
.field private a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 78
    instance-of v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    if-eqz v0, :cond_10

    .line 79
    check-cast p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 2034
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    .line 80
    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 84
    :cond_10
    :try_start_10
    const-string v0, "MraidJSBridge"

    const-string v1, "MRAID close"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    if-eqz v0, :cond_20

    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/b;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_20} :catch_21

    .line 91
    :cond_20
    :goto_20
    return-void

    .line 88
    :catch_21
    move-exception v0

    .line 89
    const-string v1, "MraidJSBridge"

    const-string v2, "MRAID close"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method public expand(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 151
    instance-of v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    if-eqz v0, :cond_10

    .line 152
    check-cast p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 5034
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    .line 153
    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "expand"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 157
    :cond_10
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "shouldUseCustomClose"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v2, "MraidJSBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MRAID expand "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    if-eqz v2, :cond_5e

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    invoke-interface {v2, v1, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/b;->expand(Ljava/lang/String;Z)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_5e} :catch_5f

    .line 170
    :cond_5e
    :goto_5e
    return-void

    .line 167
    :catch_5f
    move-exception v0

    .line 168
    const-string v1, "MraidJSBridge"

    const-string v2, "MRAID expand"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5e
.end method

.method public initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 5

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;->initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    .line 30
    :try_start_3
    instance-of v0, p1, Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    if-eqz v0, :cond_c

    .line 31
    check-cast p1, Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    .line 42
    :cond_b
    :goto_b
    return-void

    .line 33
    :cond_c
    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    if-eqz v0, :cond_b

    .line 34
    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_23

    goto :goto_b

    .line 37
    :catch_23
    move-exception v0

    .line 38
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public open(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 51
    instance-of v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    if-eqz v0, :cond_10

    .line 52
    check-cast p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 1034
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    .line 53
    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "open"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 57
    :cond_10
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "MraidJSBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MRAID Open "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    if-eqz v1, :cond_3e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 63
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/b;->open(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3e} :catch_3f

    .line 68
    :cond_3e
    :goto_3e
    return-void

    .line 65
    :catch_3f
    move-exception v0

    .line 66
    const-string v1, "MraidJSBridge"

    const-string v2, "MRAID Open"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e
.end method

.method public setOrientationProperties(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 181
    instance-of v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    if-eqz v0, :cond_10

    .line 182
    check-cast p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 6034
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    .line 183
    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "setOrientationProperties"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 187
    :cond_10
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    const-string v1, "allowOrientationChange"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    const-string v2, "forceOrientation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v2, "MraidJSBridge"

    const-string v3, "MRAID setOrientationProperties"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    if-eqz v2, :cond_4c

    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_66

    .line 214
    :cond_4c
    :goto_4c
    return-void

    .line 195
    :sswitch_4d
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_4c

    :sswitch_56
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_5b} :catch_5c

    goto :goto_4c

    .line 211
    :catch_5c
    move-exception v0

    .line 212
    const-string v1, "MraidJSBridge"

    const-string v2, "MRAID setOrientationProperties"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c

    .line 195
    nop

    :sswitch_data_66
    .sparse-switch
        0x2b77bb9b -> :sswitch_4d
        0x5545f2bb -> :sswitch_56
    .end sparse-switch
.end method

.method public unload(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 102
    instance-of v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    if-eqz v0, :cond_10

    .line 103
    check-cast p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 3034
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    .line 104
    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "unload"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 108
    :cond_10
    :try_start_10
    const-string v0, "MraidJSBridge"

    const-string v1, "MRAID unload"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    if-eqz v0, :cond_20

    .line 110
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/b;->unload()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_20} :catch_21

    .line 115
    :cond_20
    :goto_20
    return-void

    .line 112
    :catch_21
    move-exception v0

    .line 113
    const-string v1, "MraidJSBridge"

    const-string v2, "MRAID unload"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method public useCustomClose(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 124
    instance-of v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    if-eqz v0, :cond_10

    .line 125
    check-cast p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 4034
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    .line 126
    iget-object v0, p1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v1, "useCustomClose"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 130
    :cond_10
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    const-string v1, "shouldUseCustomClose"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "MraidJSBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MRAID useCustomClose "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    if-eqz v1, :cond_48

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/MraidJSBridge;->a:Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/b;->useCustomClose(Z)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_48} :catch_49

    .line 142
    :cond_48
    :goto_48
    return-void

    .line 139
    :catch_49
    move-exception v0

    .line 140
    const-string v1, "MraidJSBridge"

    const-string v2, "MRAID useCustomClose"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48
.end method
