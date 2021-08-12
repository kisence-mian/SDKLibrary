.class Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;
.super Ljava/lang/Object;
.source "TTFullScreenVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_14

    .line 401
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->N()V

    .line 404
    :cond_14
    const-string v0, "TTFullScreenVideoActivity"

    const-string v1, "onTimeOut\u3001\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->V()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->u()V

    goto :goto_2e

    .line 409
    :cond_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->finish()V

    .line 412
    :goto_2e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 413
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vbtt_skip_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    const-string v2, "fullscreen_interstitial_ad"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_51

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()V

    .line 420
    :cond_51
    return-void
.end method

.method public a(JI)V
    .registers 4

    .line 358
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz p1, :cond_14

    .line 359
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 360
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->N()V

    .line 362
    :cond_14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->Y()V

    .line 364
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->V()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 365
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->u()V

    goto :goto_2c

    .line 368
    :cond_27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->finish()V

    .line 370
    :goto_2c
    return-void
.end method

.method public a(JJ)V
    .registers 9

    .line 429
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz p3, :cond_14

    .line 430
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 p4, 0x12c

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 431
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->N()V

    .line 433
    :cond_14
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->L()D

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    long-to-double v2, p1

    sub-double/2addr v0, v2

    double-to-int p4, v0

    iput p4, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->Q:I

    .line 434
    long-to-int p1, p1

    .line 436
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e(I)V

    .line 438
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->Q:I

    if-ltz p1, :cond_4c

    .line 439
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_4c

    .line 440
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowCountDown(Z)V

    .line 441
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->Q:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 444
    :cond_4c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->Q:I

    if-gtz p1, :cond_6c

    .line 445
    const-string p1, "TTFullScreenVideoActivity"

    const-string p2, "onProgressUpdate\u3001\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->V()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 447
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->u()V

    goto :goto_6c

    .line 450
    :cond_67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->finish()V

    .line 455
    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 456
    :cond_80
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->v()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 457
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V

    .line 460
    :cond_8f
    return-void
.end method

.method public b(JI)V
    .registers 4

    .line 374
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz p1, :cond_f

    .line 375
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 377
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e(Z)V

    .line 378
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->v()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 379
    return-void

    .line 381
    :cond_1e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->N()V

    .line 383
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_30

    .line 384
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()V

    .line 386
    :cond_30
    const-string p1, "TTFullScreenVideoActivity"

    const-string p2, "onError\u3001\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->V()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 388
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->u()V

    .line 389
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 390
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "vbtt_skip_type"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    const-string p3, "fullscreen_interstitial_ad"

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 392
    goto :goto_60

    .line 394
    :cond_5b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->finish()V

    .line 396
    :goto_60
    return-void
.end method
