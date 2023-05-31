.class public final Lcom/mintegral/msdk/video/js/a/j;
.super Lcom/mintegral/msdk/video/js/a/d;
.source "JSNotifyProxy.java"


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/a/d;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/a/j;->a:Landroid/webkit/WebView;

    .line 36
    return-void
.end method

.method private static a(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 94
    if-eqz p1, :cond_20

    .line 95
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 97
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/Double;)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1a} :catch_1c

    move-result-object v0

    .line 102
    :goto_1b
    return-object v0

    .line 99
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    :cond_20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/d;->a(I)V

    .line 53
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/a/j;->a:Landroid/webkit/WebView;

    const-string v2, "onVideoStatusNotify"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_25

    .line 60
    :goto_24
    return-void

    .line 58
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public final a(IIII)V
    .registers 9

    .prologue
    const/4 v0, 0x2

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mintegral/msdk/video/js/a/d;->a(IIII)V

    .line 119
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 120
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 124
    if-ne p1, v0, :cond_41

    .line 125
    const/4 v0, 0x1

    if-eq p2, v0, :cond_46

    .line 130
    const-string v0, "landscape"

    .line 141
    :goto_15
    const-string v3, "orientation"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v0, "screen_width"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    const-string v0, "screen_height"

    invoke-virtual {v2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/a/j;->a:Landroid/webkit/WebView;

    const-string v2, "showDataInfo"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_40
    :goto_40
    return-void

    .line 133
    :cond_41
    if-ne p2, v0, :cond_46

    .line 134
    const-string v0, "landscape"

    goto :goto_15

    .line 138
    :cond_46
    const-string v0, "portrait"
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_48} :catch_49

    goto :goto_15

    .line 147
    :catch_49
    move-exception v0

    .line 148
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_40

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method

.method public final a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/d;->a(ILjava/lang/String;)V

    .line 67
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v1, "pt"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/a/j;->a:Landroid/webkit/WebView;

    const-string v2, "onJSClick"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2a

    .line 75
    :goto_29
    return-void

    .line 73
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public final a(Lcom/mintegral/msdk/video/module/MintegralVideoView$a;)V
    .registers 6

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/d;->a(Lcom/mintegral/msdk/video/module/MintegralVideoView$a;)V

    .line 82
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 83
    const-string v1, "progress"

    iget v2, p1, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;->a:I

    iget v3, p1, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;->b:I

    invoke-static {v2, v3}, Lcom/mintegral/msdk/video/js/a/j;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "time"

    iget v2, p1, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v1, "duration"

    iget v2, p1, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/a/j;->a:Landroid/webkit/WebView;

    const-string v2, "onVideoProgressNotify"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_43

    .line 91
    :goto_42
    return-void

    .line 89
    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/d;->a(Ljava/lang/Object;)V

    .line 108
    const-string v0, ""

    .line 109
    if-eqz p1, :cond_18

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_18
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v1, p0, Lcom/mintegral/msdk/video/js/a/j;->a:Landroid/webkit/WebView;

    const-string v2, "webviewshow"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
