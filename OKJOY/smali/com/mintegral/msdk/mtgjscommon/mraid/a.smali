.class public final Lcom/mintegral/msdk/mtgjscommon/mraid/a;
.super Ljava/lang/Object;
.source "CallMraidJS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 47
    const-string v0, "javascript:window.mraidbridge.fireReadyEvent();"

    .line 48
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static a(Landroid/webkit/WebView;D)V
    .registers 8

    .prologue
    .line 117
    const-string v0, "javascript:window.mraidbridge.audioVolumeChange(%s);"

    .line 118
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static a(Landroid/webkit/WebView;FF)V
    .registers 8

    .prologue
    .line 105
    const-string v0, "javascript:window.mraidbridge.notifySizeChangeEvent(%.1f, %.1f);"

    .line 106
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static a(Landroid/webkit/WebView;FFFF)V
    .registers 10

    .prologue
    .line 159
    const-string v0, "javascript:window.mraidbridge.setDefaultPosition(%.1f, %.1f, %.1f, %.1f);"

    .line 160
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 200
    const-string v0, "javascript:window.mraidbridge.nativeCallComplete(\'%s\');"

    .line 201
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 92
    const-string v0, "javascript:window.mraidbridge.fireErrorEvent(\'%1s\', \'%2s\');"

    .line 93
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    const-string v2, "javascript:window.mraidbridge.fireChangeEvent(%s);"

    .line 65
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 82
    :goto_8
    return-void

    .line 69
    :cond_9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 72
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    :try_start_22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_30

    goto :goto_16

    .line 75
    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    .line 78
    :cond_35
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static b(Landroid/webkit/WebView;FF)V
    .registers 8

    .prologue
    .line 131
    const-string v0, "javascript:window.mraidbridge.setScreenSize(%.1f, %.1f);"

    .line 132
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static b(Landroid/webkit/WebView;FFFF)V
    .registers 10

    .prologue
    .line 174
    const-string v0, "javascript:window.mraidbridge.setCurrentPosition(%.1f, %.1f, %.1f, %.1f);"

    .line 175
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 212
    const-string v0, "javascript:window.mraidbridge.setIsViewable(%s);"

    .line 213
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static c(Landroid/webkit/WebView;FF)V
    .registers 8

    .prologue
    .line 144
    const-string v0, "javascript:window.mraidbridge.setMaxSize(%.1f, %.1f);"

    .line 145
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private static c(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 224
    if-eqz p0, :cond_5

    .line 226
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 231
    :cond_5
    :goto_5
    return-void

    .line 228
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method
