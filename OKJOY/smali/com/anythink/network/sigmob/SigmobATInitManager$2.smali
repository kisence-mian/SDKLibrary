.class final Lcom/anythink/network/sigmob/SigmobATInitManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;


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
    .line 160
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFullScreenVideoAdClicked(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 226
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 227
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdClicked(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 232
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public final onFullScreenVideoAdClosed(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 238
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 239
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdClosed(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_1b

    .line 244
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 245
    return-void

    :catch_1b
    move-exception v0

    goto :goto_15
.end method

.method public final onFullScreenVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 249
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 251
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 252
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_1b

    .line 257
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 258
    return-void

    :catch_1b
    move-exception v0

    goto :goto_15
.end method

.method public final onFullScreenVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 166
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 167
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdLoadSuccess(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 172
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public final onFullScreenVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 214
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 215
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPlayEnd(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 220
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public final onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 262
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 264
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 265
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_1b

    .line 270
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 271
    return-void

    :catch_1b
    move-exception v0

    goto :goto_15
.end method

.method public final onFullScreenVideoAdPlayStart(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 202
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 203
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPlayStart(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 208
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public final onFullScreenVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 190
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 191
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPreLoadFail(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 196
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public final onFullScreenVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/a/b;

    .line 178
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 179
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPreLoadSuccess(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 184
    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method
