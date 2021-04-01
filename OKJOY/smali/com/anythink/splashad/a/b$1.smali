.class final Lcom/anythink/splashad/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/splashad/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/splashad/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/a/b;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSplashAdClicked(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V
    .registers 5

    .prologue
    .line 173
    if-eqz p1, :cond_1d

    .line 174
    invoke-virtual {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v1}, Lcom/anythink/splashad/a/b;->j(Lcom/anythink/splashad/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 178
    sget-object v0, Lcom/anythink/core/b/a/d$e;->d:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1d
    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    iget-object v0, v0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_34

    .line 183
    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    iget-object v0, v0, Lcom/anythink/splashad/a/b;->y:Lcom/anythink/splashad/api/ATSplashAdListener;

    iget-object v1, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v1}, Lcom/anythink/splashad/a/b;->e(Lcom/anythink/splashad/a/b;)Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdClick(Lcom/anythink/core/api/ATAdInfo;)V

    .line 185
    :cond_34
    return-void
.end method

.method public final onSplashAdDismiss(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v0}, Lcom/anythink/splashad/a/b;->k(Lcom/anythink/splashad/a/b;)V

    .line 190
    return-void
.end method

.method public final onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/splashad/a/b;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    .line 120
    return-void
.end method

.method public final onSplashAdLoaded(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    invoke-static {v0, p1}, Lcom/anythink/splashad/a/b;->a(Lcom/anythink/splashad/a/b;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    .line 113
    iget-object v0, p0, Lcom/anythink/splashad/a/b$1;->a:Lcom/anythink/splashad/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/anythink/splashad/a/b;->a(Lcom/anythink/core/b/a/b;Ljava/util/List;)V

    .line 115
    return-void
.end method

.method public final onSplashAdShow(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V
    .registers 4

    .prologue
    .line 125
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/a/b$1$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/a/b$1$1;-><init>(Lcom/anythink/splashad/a/b$1;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method
