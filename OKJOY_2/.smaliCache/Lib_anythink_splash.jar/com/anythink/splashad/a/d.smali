.class public final Lcom/anythink/splashad/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;


# instance fields
.field a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

.field b:Lcom/anythink/splashad/api/ATSplashAdListener;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    .line 29
    iput-object p2, p0, Lcom/anythink/splashad/a/d;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 30
    return-void
.end method


# virtual methods
.method public final onDeeplinkCallback(Z)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/anythink/splashad/a/d;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/anythink/splashad/api/ATSplashExListener;

    if-eqz v1, :cond_13

    .line 89
    check-cast v0, Lcom/anythink/splashad/api/ATSplashExListener;

    iget-object v1, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/anythink/splashad/api/ATSplashExListener;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V

    .line 91
    :cond_13
    return-void
.end method

.method public final onSplashAdClicked()V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_21

    .line 52
    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 56
    sget-object v1, Lcom/anythink/core/common/b/e$e;->d:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_21
    iget-object v0, p0, Lcom/anythink/splashad/a/d;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_2e

    .line 61
    iget-object v1, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdClick(Lcom/anythink/core/api/ATAdInfo;)V

    .line 63
    :cond_2e
    return-void
.end method

.method public final onSplashAdDismiss()V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 68
    iget-object v0, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/b/e$e;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_19
    iget-object v0, p0, Lcom/anythink/splashad/a/d;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_26

    .line 72
    iget-object v1, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdDismiss(Lcom/anythink/core/api/ATAdInfo;)V

    .line 75
    :cond_26
    iget-object v0, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_2d

    .line 76
    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->cleanImpressionListener()V

    .line 79
    :cond_2d
    iget-object v0, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_34

    .line 80
    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->destory()V

    .line 83
    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/splashad/a/d;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 84
    return-void
.end method

.method public final onSplashAdShow()V
    .registers 5

    .line 34
    iget-object v0, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v0, :cond_21

    .line 35
    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 39
    sget-object v1, Lcom/anythink/core/common/b/e$e;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_21
    iget-object v0, p0, Lcom/anythink/splashad/a/d;->b:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_2e

    .line 44
    iget-object v1, p0, Lcom/anythink/splashad/a/d;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdShow(Lcom/anythink/core/api/ATAdInfo;)V

    .line 47
    :cond_2e
    return-void
.end method
