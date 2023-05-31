.class final Lcom/anythink/banner/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/banner/unitgroup/api/CustomBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/banner/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/banner/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/banner/a/d;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/anythink/banner/a/d$1;->a:Lcom/anythink/banner/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBannerAdClicked(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .registers 5

    .prologue
    .line 70
    if-eqz p1, :cond_30

    .line 71
    invoke-virtual {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/anythink/banner/a/d$1;->a:Lcom/anythink/banner/a/d;

    invoke-static {v1}, Lcom/anythink/banner/a/d;->b(Lcom/anythink/banner/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 76
    sget-object v0, Lcom/anythink/core/b/a/d$e;->d:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/anythink/banner/a/d$1;->a:Lcom/anythink/banner/a/d;

    iget-object v0, v0, Lcom/anythink/banner/a/d;->a:Lcom/anythink/banner/a/c;

    if-eqz v0, :cond_30

    .line 79
    iget-object v0, p0, Lcom/anythink/banner/a/d$1;->a:Lcom/anythink/banner/a/d;

    iget-object v0, v0, Lcom/anythink/banner/a/d;->a:Lcom/anythink/banner/a/c;

    iget-object v1, p0, Lcom/anythink/banner/a/d$1;->a:Lcom/anythink/banner/a/d;

    invoke-static {v1}, Lcom/anythink/banner/a/d;->c(Lcom/anythink/banner/a/d;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/a/c;->onBannerClicked(Z)V

    .line 83
    :cond_30
    return-void
.end method

.method public final onBannerAdClose(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .registers 6

    .prologue
    .line 45
    if-eqz p1, :cond_28

    .line 46
    iget-object v0, p0, Lcom/anythink/banner/a/d$1;->a:Lcom/anythink/banner/a/d;

    iget-object v0, v0, Lcom/anythink/banner/a/d;->a:Lcom/anythink/banner/a/c;

    if-eqz v0, :cond_15

    .line 47
    iget-object v0, p0, Lcom/anythink/banner/a/d$1;->a:Lcom/anythink/banner/a/d;

    iget-object v0, v0, Lcom/anythink/banner/a/d;->a:Lcom/anythink/banner/a/c;

    iget-object v1, p0, Lcom/anythink/banner/a/d$1;->a:Lcom/anythink/banner/a/d;

    invoke-static {v1}, Lcom/anythink/banner/a/d;->a(Lcom/anythink/banner/a/d;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/a/c;->onBannerClose(Z)V

    .line 49
    :cond_15
    invoke-virtual {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/anythink/core/b/a/d$e;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p1, v1, v2, v3}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz v0, :cond_28

    .line 55
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Z)V

    .line 61
    :cond_28
    return-void
.end method

.method public final onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/anythink/banner/a/d$1;->a:Lcom/anythink/banner/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/banner/a/d;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    .line 40
    return-void
.end method

.method public final onBannerAdLoaded(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/anythink/banner/a/d$1;->a:Lcom/anythink/banner/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/anythink/banner/a/d;->a(Lcom/anythink/core/b/a/b;Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public final onBannerAdShow(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .registers 2

    .prologue
    .line 65
    return-void
.end method
