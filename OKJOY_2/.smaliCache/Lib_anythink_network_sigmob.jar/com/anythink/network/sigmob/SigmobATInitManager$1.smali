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

    .line 44
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoAdClicked(Ljava/lang/String;)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 147
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_16

    .line 148
    move-object v1, v0

    check-cast v1, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v1, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdClicked(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    .line 152
    :cond_16
    goto :goto_18

    .line 150
    :catchall_17
    move-exception v1

    .line 155
    :goto_18
    :try_start_18
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_21

    .line 156
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdClicked(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    .line 160
    :cond_21
    return-void

    .line 158
    :catchall_22
    move-exception p1

    .line 162
    return-void
.end method

.method public final onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 169
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_16

    .line 170
    move-object v1, v0

    check-cast v1, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    .line 174
    :cond_16
    goto :goto_18

    .line 172
    :catchall_17
    move-exception p1

    .line 177
    :goto_18
    :try_start_18
    instance-of p1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz p1, :cond_21

    .line 178
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdClosed(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    .line 182
    :cond_21
    goto :goto_23

    .line 180
    :catchall_22
    move-exception p1

    .line 184
    :goto_23
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {p1, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public final onVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .line 192
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 194
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_16

    .line 195
    move-object v1, v0

    check-cast v1, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    .line 200
    :cond_16
    goto :goto_18

    .line 198
    :catchall_17
    move-exception v1

    .line 203
    :goto_18
    :try_start_18
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_21

    .line 204
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    .line 208
    :cond_21
    goto :goto_23

    .line 206
    :catchall_22
    move-exception p1

    .line 210
    :goto_23
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {p1, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public final onVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 50
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_16

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v1, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdLoadSuccess(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    .line 55
    :cond_16
    goto :goto_18

    .line 53
    :catchall_17
    move-exception v1

    .line 58
    :goto_18
    :try_start_18
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_21

    .line 59
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdLoadSuccess(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    .line 62
    :cond_21
    goto :goto_23

    .line 61
    :catchall_22
    move-exception v0

    .line 64
    :goto_23
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public final onVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 126
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_16

    .line 127
    move-object v1, v0

    check-cast v1, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v1, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdPlayEnd(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    .line 131
    :cond_16
    goto :goto_18

    .line 129
    :catchall_17
    move-exception v1

    .line 134
    :goto_18
    :try_start_18
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_21

    .line 135
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPlayEnd(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    .line 139
    :cond_21
    return-void

    .line 137
    :catchall_22
    move-exception p1

    .line 141
    return-void
.end method

.method public final onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 222
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_16

    .line 223
    move-object v1, v0

    check-cast v1, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    .line 227
    :cond_16
    goto :goto_18

    .line 225
    :catchall_17
    move-exception v1

    .line 230
    :goto_18
    :try_start_18
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_21

    .line 231
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    .line 235
    :cond_21
    goto :goto_23

    .line 233
    :catchall_22
    move-exception p1

    .line 237
    :goto_23
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {p1, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public final onVideoAdPlayStart(Ljava/lang/String;)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 105
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_16

    .line 106
    move-object v1, v0

    check-cast v1, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v1, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdPlayStart(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    .line 110
    :cond_16
    goto :goto_18

    .line 108
    :catchall_17
    move-exception v1

    .line 113
    :goto_18
    :try_start_18
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_21

    .line 114
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPlayStart(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    .line 118
    :cond_21
    return-void

    .line 116
    :catchall_22
    move-exception p1

    .line 120
    return-void
.end method

.method public final onVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 84
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_16

    .line 85
    move-object v1, v0

    check-cast v1, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v1, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdPreLoadFail(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    .line 89
    :cond_16
    goto :goto_18

    .line 87
    :catchall_17
    move-exception v1

    .line 92
    :goto_18
    :try_start_18
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_21

    .line 93
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPreLoadFail(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    .line 97
    :cond_21
    return-void

    .line 95
    :catchall_22
    move-exception p1

    .line 99
    return-void
.end method

.method public final onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 72
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    if-eqz v1, :cond_15

    .line 73
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    .line 77
    :cond_15
    return-void

    .line 75
    :catchall_16
    move-exception p1

    .line 78
    return-void
.end method
