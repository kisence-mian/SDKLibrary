.class public final Lcom/anythink/banner/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;


# instance fields
.field a:Lcom/anythink/banner/a/d;

.field b:Z

.field c:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/banner/a/d;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p3, p0, Lcom/anythink/banner/a/b;->b:Z

    .line 31
    iput-object p1, p0, Lcom/anythink/banner/a/b;->a:Lcom/anythink/banner/a/d;

    .line 32
    iput-object p2, p0, Lcom/anythink/banner/a/b;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    .line 33
    return-void
.end method


# virtual methods
.method public final onBannerAdClicked()V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/anythink/banner/a/b;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_2c

    .line 72
    invoke-virtual {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 77
    sget-object v1, Lcom/anythink/core/common/b/e$e;->d:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/anythink/banner/a/b;->a:Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_2c

    .line 80
    iget-boolean v1, p0, Lcom/anythink/banner/a/b;->b:Z

    iget-object v2, p0, Lcom/anythink/banner/a/b;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/a/d;->onBannerClicked(ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 84
    :cond_2c
    return-void
.end method

.method public final onBannerAdClose()V
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/anythink/banner/a/b;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_22

    .line 38
    iget-object v1, p0, Lcom/anythink/banner/a/b;->a:Lcom/anythink/banner/a/d;

    if-eqz v1, :cond_d

    .line 39
    iget-boolean v2, p0, Lcom/anythink/banner/a/b;->b:Z

    invoke-interface {v1, v2, v0}, Lcom/anythink/banner/a/d;->onBannerClose(ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 41
    :cond_d
    iget-object v0, p0, Lcom/anythink/banner/a/b;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/anythink/core/common/b/e$e;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    if-eqz v0, :cond_22

    .line 46
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Z)V

    .line 51
    :cond_22
    return-void
.end method

.method public final onBannerAdShow()V
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/anythink/banner/a/b;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_2c

    .line 56
    iget-object v1, p0, Lcom/anythink/banner/a/b;->a:Lcom/anythink/banner/a/d;

    if-eqz v1, :cond_d

    .line 57
    iget-boolean v2, p0, Lcom/anythink/banner/a/b;->b:Z

    invoke-interface {v1, v2, v0}, Lcom/anythink/banner/a/d;->onBannerShow(ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 59
    :cond_d
    iget-object v0, p0, Lcom/anythink/banner/a/b;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-virtual {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/anythink/core/common/b/e$e;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 66
    :cond_2c
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 5

    .line 89
    iget-object v0, p0, Lcom/anythink/banner/a/b;->a:Lcom/anythink/banner/a/d;

    if-eqz v0, :cond_b

    .line 90
    iget-boolean v1, p0, Lcom/anythink/banner/a/b;->b:Z

    iget-object v2, p0, Lcom/anythink/banner/a/b;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-interface {v0, v1, v2, p1}, Lcom/anythink/banner/a/d;->onDeeplinkCallback(ZLcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    .line 92
    :cond_b
    return-void
.end method
