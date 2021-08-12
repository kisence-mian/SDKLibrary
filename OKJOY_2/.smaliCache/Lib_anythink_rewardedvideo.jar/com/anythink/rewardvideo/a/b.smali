.class public final Lcom/anythink/rewardvideo/a/b;
.super Lcom/anythink/core/common/f;


# instance fields
.field a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private a(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/b;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/anythink/rewardvideo/a/b;->r:Z

    if-eqz v0, :cond_5

    .line 40
    return-void

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/b;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_c

    .line 43
    invoke-interface {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdLoaded()V

    .line 46
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/b;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 47
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 2

    .line 30
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 51
    iget-boolean v0, p0, Lcom/anythink/rewardvideo/a/b;->r:Z

    if-eqz v0, :cond_5

    .line 52
    return-void

    .line 54
    :cond_5
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/b;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_c

    .line 55
    invoke-interface {v0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V

    .line 58
    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/rewardvideo/a/b;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 59
    return-void
.end method

.method public final b()V
    .registers 2

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/b;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 64
    return-void
.end method
