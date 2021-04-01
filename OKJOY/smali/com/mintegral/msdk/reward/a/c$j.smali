.class final Lcom/mintegral/msdk/reward/a/c$j;
.super Lcom/mintegral/msdk/mtgjscommon/b/a;
.source "RewardMVVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/reward/a/c;

.field private b:Lcom/mintegral/msdk/videocommon/a$a;

.field private c:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private d:Z

.field private e:Z

.field private f:Lcom/mintegral/msdk/reward/a/c$f;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/videocommon/a$a;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/reward/a/c$f;Landroid/os/Handler;)V
    .registers 6

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/b/a;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c$j;->b:Lcom/mintegral/msdk/videocommon/a$a;

    .line 393
    if-eqz p3, :cond_9

    .line 394
    iput-object p3, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 396
    :cond_9
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c$j;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 397
    iput-object p4, p0, Lcom/mintegral/msdk/reward/a/c$j;->f:Lcom/mintegral/msdk/reward/a/c$f;

    .line 398
    iput-object p5, p0, Lcom/mintegral/msdk/reward/a/c$j;->g:Landroid/os/Handler;

    .line 399
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    .prologue
    const/16 v4, 0x11f

    const/16 v3, 0x5e

    .line 403
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->e:Z

    if-nez v0, :cond_af

    .line 404
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->f:Lcom/mintegral/msdk/reward/a/c$f;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->g:Landroid/os/Handler;

    if-eqz v0, :cond_17

    .line 405
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$j;->f:Lcom/mintegral/msdk/reward/a/c$f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    :cond_17
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->b:Lcom/mintegral/msdk/videocommon/a$a;

    if-eqz v0, :cond_20

    .line 408
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->b:Lcom/mintegral/msdk/videocommon/a$a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/a$a;->c()V

    .line 410
    :cond_20
    const-string v0, "WindVaneWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "templete preload readyState state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->f(Lcom/mintegral/msdk/reward/a/c;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 412
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 413
    const-string v0, "WindVaneWebView"

    const-string v1, "put templeteCache in bidIVCache "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$j;->b:Lcom/mintegral/msdk/videocommon/a$a;

    invoke-static {v4, v0, v1}, Lcom/mintegral/msdk/videocommon/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/videocommon/a$a;)V

    .line 429
    :goto_5a
    :try_start_5a
    const-string v0, "WindVaneWebView"

    const-string v1, "TempalteWindVaneWebviewClient tempalte load SUCCESS"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_101

    .line 431
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    monitor-enter v1
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_68} :catch_f6

    .line 432
    :try_start_68
    const-string v0, "WindVaneWebView"

    const-string v2, "adapter 341"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 434
    const-string v0, "WindVaneWebView"

    const-string v2, "TempalteWindVaneWebviewClient tempalte load  callback success"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 436
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 437
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 438
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$j;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 439
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 440
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 444
    :cond_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_68 .. :try_end_ac} :catchall_f3

    .line 451
    :goto_ac
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->e:Z

    .line 453
    :cond_af
    return-void

    .line 416
    :cond_b0
    const-string v0, "WindVaneWebView"

    const-string v1, "put templeteCache in iVCache "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$j;->b:Lcom/mintegral/msdk/videocommon/a$a;

    invoke-static {v4, v0, v1}, Lcom/mintegral/msdk/videocommon/a;->b(ILjava/lang/String;Lcom/mintegral/msdk/videocommon/a$a;)V

    goto :goto_5a

    .line 420
    :cond_c3
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 421
    const-string v0, "WindVaneWebView"

    const-string v1, "put templeteCache in bidRVCache "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$j;->b:Lcom/mintegral/msdk/videocommon/a$a;

    invoke-static {v3, v0, v1}, Lcom/mintegral/msdk/videocommon/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/videocommon/a$a;)V

    goto/16 :goto_5a

    .line 424
    :cond_df
    const-string v0, "WindVaneWebView"

    const-string v1, "put templeteCache in rVCache "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->c:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$j;->b:Lcom/mintegral/msdk/videocommon/a$a;

    invoke-static {v3, v0, v1}, Lcom/mintegral/msdk/videocommon/a;->b(ILjava/lang/String;Lcom/mintegral/msdk/videocommon/a$a;)V

    goto/16 :goto_5a

    .line 444
    :catchall_f3
    move-exception v0

    :try_start_f4
    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    :try_start_f5
    throw v0
    :try_end_f6
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_f6} :catch_f6

    .line 448
    :catch_f6
    move-exception v0

    .line 449
    const-string v1, "WindVaneWebView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ac

    .line 446
    :cond_101
    :try_start_101
    const-string v0, "WindVaneWebView"

    const-string v1, "TempalteWindVaneWebviewClient tempalte load SUCCESS  mRewardMVVideoAdapter is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_108} :catch_f6

    goto :goto_ac
.end method

.method public final a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 466
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mintegral/msdk/mtgjscommon/b/a;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    :try_start_3
    const-string v0, "WindVaneWebView"

    const-string v1, "TempalteWindVaneWebviewClient tempalte load failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v0, :cond_21

    .line 470
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    monitor-enter v1
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_25

    .line 471
    :try_start_11
    const-string v0, "WindVaneWebView"

    const-string v2, "TempalteWindVaneWebviewClient tempalte load callback failed"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-static {v0, p3, p4}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->a:Lcom/mintegral/msdk/reward/a/c;

    .line 474
    monitor-exit v1

    .line 479
    :cond_21
    :goto_21
    return-void

    .line 474
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_22

    :try_start_24
    throw v0
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_25} :catch_25

    .line 476
    :catch_25
    move-exception v0

    .line 477
    const-string v1, "WindVaneWebView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 457
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/b/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 458
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->d:Z

    if-nez v0, :cond_14

    .line 459
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const-string v0, "onJSBridgeConnected"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c$j;->d:Z

    .line 462
    :cond_14
    return-void
.end method
