.class final Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView$1;
.super Ljava/lang/Object;
.source "MintegralClickMiniCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->webviewshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 109
    :try_start_0
    const-string v0, "MintegralBaseView"

    const-string v1, "webviewshow"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, ""
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_90

    .line 112
    const/4 v0, 0x2

    :try_start_a
    new-array v0, v0, [I

    .line 113
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    iget-object v2, v2, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getLocationOnScreen([I)V

    .line 114
    const-string v2, "MintegralBaseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "coordinate:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 116
    const-string v3, "startX"

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v0, v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string v3, "startY"

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    aget v0, v0, v5

    int-to-float v0, v0

    invoke-static {v4, v0}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_69} :catch_84
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_69} :catch_90

    move-result-object v0

    .line 122
    :goto_6a
    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    iget-object v1, v1, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v2, "webviewshow"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_83
    return-void

    .line 119
    :catch_84
    move-exception v0

    .line 120
    const-string v2, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_8e} :catch_90

    move-object v0, v1

    goto :goto_6a

    .line 125
    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_83
.end method
