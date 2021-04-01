.class Lcom/sigmob/sdk/splash/SplashAdView$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/utils/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView$4;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ab;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/sdk/splash/SplashAdView$4;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/SplashAdView$4;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3c

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "final_url"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    const/4 v1, 0x0

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v3, v3, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v4, v4, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v4}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3c
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->f(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/sigmob/sdk/base/common/AdActivity;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v2, v2, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v3, v3, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3e

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "final_url"

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->a:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    const/4 v1, 0x0

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v3, v3, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v4, v4, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v4}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3e
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->f(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/sigmob/sdk/base/common/AdActivity;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v2, v2, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v3, v3, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v3}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    return-void
.end method
