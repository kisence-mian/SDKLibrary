.class final Lcom/anythink/rewardvideo/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/b;->a(Landroid/content/Context;JLcom/anythink/core/b/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/anythink/core/b/a/b;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/anythink/rewardvideo/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/a/b;JLcom/anythink/core/b/a/b;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 39
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/b$1;->d:Lcom/anythink/rewardvideo/a/b;

    iput-wide p2, p0, Lcom/anythink/rewardvideo/a/b$1;->a:J

    iput-object p4, p0, Lcom/anythink/rewardvideo/a/b$1;->b:Lcom/anythink/core/b/a/b;

    iput-object p5, p0, Lcom/anythink/rewardvideo/a/b$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRewardedVideoAdDataLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .registers 5

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/anythink/rewardvideo/a/b$1;->a:J

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/b$1;->b:Lcom/anythink/core/b/a/b;

    invoke-static {v0, v1, v2}, Lcom/anythink/rewardvideo/a/b;->b(JLcom/anythink/core/b/a/b;)V

    .line 43
    return-void
.end method

.method public final onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 7

    .prologue
    .line 52
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/b$1;->d:Lcom/anythink/rewardvideo/a/b;

    iget-wide v2, p0, Lcom/anythink/rewardvideo/a/b$1;->a:J

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/b$1;->b:Lcom/anythink/core/b/a/b;

    invoke-static {v0, v2, v3, v1, p2}, Lcom/anythink/rewardvideo/a/b;->a(Lcom/anythink/rewardvideo/a/b;JLcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    .line 53
    return-void
.end method

.method public final onRewardedVideoAdLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .registers 7

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/b$1;->d:Lcom/anythink/rewardvideo/a/b;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/b$1;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/anythink/rewardvideo/a/b$1;->a:J

    iget-object v4, p0, Lcom/anythink/rewardvideo/a/b$1;->b:Lcom/anythink/core/b/a/b;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/rewardvideo/a/b;->a(Lcom/anythink/rewardvideo/a/b;Landroid/content/Context;JLcom/anythink/core/b/a/b;)V

    .line 48
    return-void
.end method
