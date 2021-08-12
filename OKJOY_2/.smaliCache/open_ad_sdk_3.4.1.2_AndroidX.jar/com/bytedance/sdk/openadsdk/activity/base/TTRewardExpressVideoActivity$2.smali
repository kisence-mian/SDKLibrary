.class Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;
.super Ljava/lang/Object;
.source "TTRewardExpressVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_14

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->N()V

    .line 236
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->u()V

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vbtt_skip_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    const-string v2, "rewarded_video"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_3c

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()V

    .line 246
    :cond_3c
    return-void
.end method

.method public a(JI)V
    .registers 6

    .line 190
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz p1, :cond_14

    .line 191
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 192
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->N()V

    .line 194
    :cond_14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->ba:Z

    .line 195
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->Y()V

    .line 196
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->u()V

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    long-to-int p2, p2

    iput p2, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->bc:I

    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->V()V

    .line 199
    return-void
.end method

.method public a(JJ)V
    .registers 9

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_14

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->N()V

    .line 259
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iput-wide p1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aV:J

    .line 260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(JJ)V

    .line 261
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->L()D

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    long-to-double v2, p1

    sub-double/2addr v0, v2

    double-to-int p4, v0

    iput p4, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->Q:I

    .line 262
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->Q:I

    const/4 p4, 0x0

    if-ltz p3, :cond_47

    .line 263
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p3, :cond_47

    .line 264
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->Q:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 268
    :cond_47
    long-to-int p1, p1

    .line 270
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->S:I

    const/4 p3, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v0, :cond_74

    .line 271
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->S:I

    if-ne p1, p2, :cond_74

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->be:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_74

    .line 272
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 273
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->be:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->r()V

    .line 278
    :cond_74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object p2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->T:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->g(Ljava/lang/String;)I

    move-result p2

    .line 279
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->m()Z

    move-result v2

    if-eqz v2, :cond_93

    if-eq p2, v0, :cond_93

    if-ltz p2, :cond_93

    move p3, v1

    .line 281
    :cond_93
    if-eqz p3, :cond_c4

    .line 282
    if-lt p1, p2, :cond_c4

    .line 283
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_ae

    .line 284
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_ae

    .line 285
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 288
    :cond_ae
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_c4

    .line 289
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const-string p2, "\u8df3\u8fc7"

    invoke-virtual {p1, p4, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 290
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setSkipEnable(Z)V

    .line 294
    :cond_c4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->Q:I

    if-gtz p1, :cond_cf

    .line 295
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->u()V

    .line 298
    :cond_cf
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_fe

    .line 299
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_fe

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 300
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    if-eqz p1, :cond_fe

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 301
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p1

    if-eqz p1, :cond_fe

    .line 302
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V

    .line 305
    :cond_fe
    return-void
.end method

.method public b(JI)V
    .registers 4

    .line 203
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz p1, :cond_f

    .line 204
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 206
    :cond_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 207
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    const-string p2, "onVideoError"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_2a

    .line 209
    :cond_1d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz p1, :cond_2a

    .line 210
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onVideoError()V

    .line 213
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->e(Z)V

    .line 214
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->v()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 215
    return-void

    .line 217
    :cond_39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->N()V

    .line 219
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_4b

    .line 220
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()V

    .line 222
    :cond_4b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->V()V

    .line 223
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->u()V

    .line 224
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->aZ:Z

    .line 225
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 226
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "vbtt_skip_type"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    const-string p3, "rewarded_video"

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    return-void
.end method
