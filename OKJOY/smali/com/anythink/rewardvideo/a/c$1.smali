.class final Lcom/anythink/rewardvideo/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/rewardvideo/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/rewardvideo/a/c;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/a/c;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/c$1;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRewardedVideoAdDataLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c$1;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-virtual {v0, p1}, Lcom/anythink/rewardvideo/a/c;->a(Lcom/anythink/core/b/a/b;)V

    .line 30
    return-void
.end method

.method public final onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 42
    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->clearLoadListener()V

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c$1;->a:Lcom/anythink/rewardvideo/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/rewardvideo/a/c;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    .line 46
    return-void
.end method

.method public final onRewardedVideoAdLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .registers 4

    .prologue
    .line 34
    if-eqz p1, :cond_5

    .line 35
    invoke-virtual {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->clearLoadListener()V

    .line 37
    :cond_5
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c$1;->a:Lcom/anythink/rewardvideo/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/anythink/rewardvideo/a/c;->a(Lcom/anythink/core/b/a/b;Ljava/util/List;)V

    .line 38
    return-void
.end method
