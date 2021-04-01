.class final Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$7;
.super Ljava/lang/Object;
.source "MintegralH5EndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->webviewshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V
    .registers 2

    .prologue
    .line 504
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$7;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 508
    :try_start_0
    const-string v0, "MintegralBaseView"

    const-string v1, "webviewshow"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v1, ""
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a4

    .line 511
    const/4 v0, 0x2

    :try_start_a
    new-array v0, v0, [I

    .line 512
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$7;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v2, v2, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getLocationOnScreen([I)V

    .line 513
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

    .line 514
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 515
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    .line 516
    if-eqz v3, :cond_6a

    .line 517
    const-string v4, "startX"

    const/4 v5, 0x0

    aget v5, v0, v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 518
    const-string v4, "startY"

    const/4 v5, 0x1

    aget v0, v0, v5

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 519
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->C:Ljava/lang/String;

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/k;->c(Landroid/content/Context;)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 521
    :cond_6a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_6d} :catch_98
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_6d} :catch_a4

    move-result-object v0

    .line 525
    :goto_6e
    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$7;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v1, v1, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->l:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    const-string v2, "webviewshow"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$7;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x6d

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$7;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->i(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V

    .line 535
    :goto_97
    return-void

    .line 522
    :catch_98
    move-exception v0

    .line 523
    const-string v2, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_a2} :catch_a4

    move-object v0, v1

    goto :goto_6e

    .line 533
    :catch_a4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_97
.end method
