.class final Lcom/anythink/network/sigmob/SigmobATInitManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/sigmob/SigmobATInitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATInitManager;


# direct methods
.method constructor <init>(Lcom/anythink/network/sigmob/SigmobATInitManager;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoAdClicked(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 104
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_15

    .line 105
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdClicked(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 110
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public final onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 117
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_15

    .line 118
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_1b

    .line 123
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 124
    return-void

    :catch_1b
    move-exception v0

    goto :goto_15
.end method

.method public final onVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 133
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_15

    .line 134
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    .line 136
    :cond_15
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1a} :catch_1b

    .line 140
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    goto :goto_1a
.end method

.method public final onVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 43
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_15

    .line 44
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdLoadSuccess(Ljava/lang/String;)V

    .line 46
    :cond_15
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1a} :catch_1b

    .line 50
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    goto :goto_1a
.end method

.method public final onVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 92
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_15

    .line 93
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdPlayEnd(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 98
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public final onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 150
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_15

    .line 151
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_1b

    .line 156
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 157
    return-void

    :catch_1b
    move-exception v0

    goto :goto_15
.end method

.method public final onVideoAdPlayStart(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 80
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_15

    .line 81
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdPlayStart(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 86
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public final onVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 68
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_15

    .line 69
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdPreLoadFail(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 74
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public final onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 56
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_15

    .line 57
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 62
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method
