.class Lcom/sigmob/sdk/splash/SplashAdView$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/f/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

.field final synthetic f:Lcom/sigmob/sdk/splash/SplashAdView;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/SplashAdView;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;ILcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)V
    .registers 7

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->c:Ljava/lang/String;

    iput p5, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->d:I

    iput-object p6, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->e:Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;)V
    .registers 16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urlHandlingSucceeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/f/p;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/f/p;->e:Lcom/sigmob/sdk/common/f/p;

    const/4 v1, 0x0

    if-ne v0, p2, :cond_62

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object p2

    iget-object p2, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3c

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p2, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_3c
    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/SplashAdView;->e(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/splash/d;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2, v0, v1, v2}, Lcom/sigmob/sdk/splash/d;->e(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->C:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    const/4 v2, 0x0

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v6, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->c:Ljava/lang/String;

    const-string v1, "click"

    const-string v4, "1"

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    :cond_62
    const/4 v8, 0x0

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v9

    iget-object v12, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->c:Ljava/lang/String;

    const-string v7, "click"

    const-string v10, "0"

    move-object v11, p1

    invoke-static/range {v7 .. v12}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->d:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_9d

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->e:Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    iget-object p2, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p2, p1, v0}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/SplashAdView;->e(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/splash/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/splash/d;->e()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    goto :goto_d5

    :cond_9d
    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object p2

    iget-object p2, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_b0

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p2, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_b0
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/SplashAdView;->f(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/app/Activity;

    move-result-object p1

    const-class p2, Lcom/sigmob/sdk/base/common/AdActivity;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1, p2, v0, v2, v3}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    :goto_d5
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/common/f/p;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urlHandlingFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/f/p;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_37
    sget-object v0, Lcom/sigmob/sdk/common/f/p;->e:Lcom/sigmob/sdk/common/f/p;

    const/4 v1, 0x1

    if-ne v0, p2, :cond_bc

    :try_start_3c
    const-string v2, "click"

    const/4 v3, 0x0

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    const-string v5, "0"

    iget-object v7, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->c:Ljava/lang/String;

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object p2, Lcom/sigmob/sdk/base/common/a;->D:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    iget p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->d:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_81

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->e:Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    iget-object p2, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p2, p1, v0}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/SplashAdView;->e(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/splash/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/splash/d;->e()Z

    move-result p2

    if-nez p2, :cond_7c

    move p2, v1

    goto :goto_7d

    :cond_7c
    const/4 p2, 0x0

    :goto_7d
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    goto :goto_d2

    :cond_81
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p2

    iget-object p2, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/sigmob/sdk/splash/SplashAdView$4$1;

    invoke-direct {p2, p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView$4$1;-><init>(Lcom/sigmob/sdk/splash/SplashAdView$4;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/r;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/r$a;)V
    :try_end_9f
    .catchall {:try_start_3c .. :try_end_9f} :catchall_a0

    goto :goto_d2

    :catchall_a0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handle Click Action error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_cd

    :cond_bc
    const/4 v3, 0x0

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    iget-object v7, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->c:Ljava/lang/String;

    const-string v2, "click"

    const-string v5, "0"

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_cd
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$4;->f:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    :goto_d2
    return-void
.end method
