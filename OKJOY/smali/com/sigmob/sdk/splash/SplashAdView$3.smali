.class Lcom/sigmob/sdk/splash/SplashAdView$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)V
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
.method public a(Lcom/sigmob/volley/ae;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->t:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GDTConvertRequest response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    const-string v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_64

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dstlink"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "clickid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    instance-of v3, v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v3, :cond_4b

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_CLICKID_"

    invoke-virtual {v0, v3, v2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->d(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_63
    return-void

    :cond_64
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->t:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_77} :catch_78

    goto :goto_63

    :catch_78
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$3;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->t:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63
.end method
