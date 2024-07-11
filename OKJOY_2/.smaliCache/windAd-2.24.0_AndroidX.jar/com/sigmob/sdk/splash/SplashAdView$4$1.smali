.class Lcom/sigmob/sdk/splash/SplashAdView$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/f/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView$4;->b(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_17
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object p1, p1, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/SplashAdView;->f(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/app/Activity;

    move-result-object p1

    const-class v0, Lcom/sigmob/sdk/base/common/AdActivity;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v1, v1, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v2, v2, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object p1, p1, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object p1, p1, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object p1, p1, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_19
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object p1, p1, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/SplashAdView;->f(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/app/Activity;

    move-result-object p1

    const-class p2, Lcom/sigmob/sdk/base/common/AdActivity;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object v1, v1, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v1}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, p2, v0, v1, v2}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4$1;->b:Lcom/sigmob/sdk/splash/SplashAdView$4;

    iget-object p1, p1, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    return-void
.end method
