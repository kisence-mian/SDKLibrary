.class public final Lcom/anythink/banner/a/e;
.super Lcom/anythink/core/common/f;


# instance fields
.field private H:Lcom/anythink/banner/api/ATBannerView;

.field a:Lcom/anythink/banner/a/d;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private a(Lcom/anythink/banner/a/d;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/anythink/banner/a/e;->a:Lcom/anythink/banner/a/d;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/anythink/banner/a/e;->a:Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_9

    .line 41
    iget-boolean v1, p0, Lcom/anythink/banner/a/e;->r:Z

    invoke-interface {v0, v1}, Lcom/anythink/banner/a/d;->onBannerLoaded(Z)V

    .line 43
    :cond_9
    return-void
.end method

.method public final a(Lcom/anythink/banner/api/ATBannerView;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/anythink/banner/a/e;->H:Lcom/anythink/banner/api/ATBannerView;

    .line 36
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 3

    .line 54
    instance-of v0, p1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_b

    .line 55
    check-cast p1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    iget-object v0, p0, Lcom/anythink/banner/a/e;->H:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p1, v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->setATBannerView(Lcom/anythink/banner/api/ATBannerView;)V

    .line 57
    :cond_b
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/anythink/banner/a/e;->a:Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_9

    .line 48
    iget-boolean v1, p0, Lcom/anythink/banner/a/e;->r:Z

    invoke-interface {v0, v1, p1}, Lcom/anythink/banner/a/d;->onBannerFailed(ZLcom/anythink/core/api/AdError;)V

    .line 50
    :cond_9
    return-void
.end method

.method public final b()V
    .registers 2

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/banner/a/e;->a:Lcom/anythink/banner/a/d;

    .line 63
    return-void
.end method
