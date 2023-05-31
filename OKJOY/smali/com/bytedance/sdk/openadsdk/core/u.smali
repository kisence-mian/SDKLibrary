.class public Lcom/bytedance/sdk/openadsdk/core/u;
.super Ljava/lang/Object;
.source "SingleAppData.java"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/u;


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

.field private c:Z

.field private d:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field private f:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

.field private h:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->c:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->h:Z

    .line 29
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/u;
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/u;->a:Lcom/bytedance/sdk/openadsdk/core/u;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/u;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/u;->a:Lcom/bytedance/sdk/openadsdk/core/u;

    .line 36
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/u;->a:Lcom/bytedance/sdk/openadsdk/core/u;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 76
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 80
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 64
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 88
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->c:Z

    .line 51
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->h:Z

    .line 102
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->c:Z

    return v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object v0
.end method

.method public g()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 106
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 107
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->e:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 108
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->g:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 109
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->h:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->c:Z

    .line 112
    return-void
.end method
