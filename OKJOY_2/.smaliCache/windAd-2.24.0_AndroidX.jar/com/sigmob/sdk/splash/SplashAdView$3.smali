.class Lcom/sigmob/sdk/splash/SplashAdView$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/e/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/SplashAdView;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/SplashAdView;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    const-string v1, "download_start"

    const-string v2, "0"

    invoke-static {v1, v2, v0}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "data"

    const-string v1, "0"

    const-string v2, "download_start"

    const/4 v3, 0x0

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GDTConvertRequest response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v4, "ret"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "dstlink"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "clickid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    instance-of v5, v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v5, :cond_4e

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v5, "_CLICKID_"

    invoke-virtual {v0, v5, p1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p1, v4}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/SplashAdView;->d(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_9c

    :cond_67
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-static {v2, v3, p1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    :try_end_7d
    .catchall {:try_start_7 .. :try_end_7d} :catchall_7e

    goto :goto_9c

    :catchall_7e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-static {v2, v3, p1, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_9c
    return-void
.end method
