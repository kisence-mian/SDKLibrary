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

    .line 241
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFullScreenVideoAdClicked(Ljava/lang/String;)V
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 307
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 308
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdClicked(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    .line 312
    :cond_15
    return-void

    .line 310
    :catchall_16
    move-exception p1

    .line 313
    return-void
.end method

.method public final onFullScreenVideoAdClosed(Ljava/lang/String;)V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 319
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 320
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdClosed(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    .line 324
    :cond_15
    goto :goto_17

    .line 322
    :catchall_16
    move-exception v0

    .line 325
    :goto_17
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public final onFullScreenVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 332
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 333
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    .line 337
    :cond_15
    goto :goto_17

    .line 335
    :catchall_16
    move-exception p1

    .line 338
    :goto_17
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {p1, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public final onFullScreenVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 247
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 248
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdLoadSuccess(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    .line 252
    :cond_15
    return-void

    .line 250
    :catchall_16
    move-exception p1

    .line 253
    return-void
.end method

.method public final onFullScreenVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 4

    .line 293
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 295
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 296
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPlayEnd(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    .line 300
    :cond_15
    return-void

    .line 298
    :catchall_16
    move-exception p1

    .line 301
    return-void
.end method

.method public final onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .line 343
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 345
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 346
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    .line 350
    :cond_15
    goto :goto_17

    .line 348
    :catchall_16
    move-exception p1

    .line 351
    :goto_17
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {p1, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public final onFullScreenVideoAdPlayStart(Ljava/lang/String;)V
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 283
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 284
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPlayStart(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    .line 288
    :cond_15
    return-void

    .line 286
    :catchall_16
    move-exception p1

    .line 289
    return-void
.end method

.method public final onFullScreenVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 271
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 272
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPreLoadFail(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    .line 276
    :cond_15
    return-void

    .line 274
    :catchall_16
    move-exception p1

    .line 277
    return-void
.end method

.method public final onFullScreenVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/b/b;

    .line 259
    :try_start_c
    instance-of v1, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    if-eqz v1, :cond_15

    .line 260
    check-cast v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->onFullScreenVideoAdPreLoadSuccess(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    .line 264
    :cond_15
    return-void

    .line 262
    :catchall_16
    move-exception p1

    .line 265
    return-void
.end method
