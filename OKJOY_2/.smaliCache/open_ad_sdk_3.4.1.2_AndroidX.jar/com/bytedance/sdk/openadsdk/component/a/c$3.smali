.class Lcom/bytedance/sdk/openadsdk/component/a/c$3;
.super Ljava/lang/Object;
.source "TTFeedAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a/c;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a/c;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoUrl()Ljava/lang/String;
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->c(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    .line 207
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->d(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    .line 208
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->e(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_3e

    .line 211
    :cond_22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->f(Lcom/bytedance/sdk/openadsdk/component/a/c;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->a(Lcom/bytedance/sdk/openadsdk/component/a/c;Z)Z

    .line 214
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->g(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :cond_3e
    :goto_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method public reportVideoAutoStart()V
    .registers 10

    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->w(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->x(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->y(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feed_auto_play"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 255
    return-void
.end method

.method public reportVideoBreak(J)V
    .registers 12

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->t(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->u(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->v(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    .line 247
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getVideoDuration()D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {p1, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v7

    .line 246
    const-string v4, "feed_break"

    const/4 v8, 0x0

    move-wide v5, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 249
    return-void
.end method

.method public reportVideoContinue(J)V
    .registers 12

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->n(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->o(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->p(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    .line 233
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getVideoDuration()D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {p1, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v7

    .line 232
    const-string v4, "feed_continue"

    const/4 v8, 0x0

    move-wide v5, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 235
    return-void
.end method

.method public reportVideoError(JII)V
    .registers 8

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->E(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creative_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "error_code"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "extra_error_code"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/a/c;->F(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p3

    .line 278
    if-eqz p3, :cond_48

    .line 279
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/t;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string v1, "video_size"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/t;->f()Ljava/lang/String;

    move-result-object p3

    const-string p4, "video_resolution"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_48
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "duration"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getVideoDuration()D

    move-result-wide p3

    double-to-long p3, p3

    const-wide/16 v1, 0x3e8

    mul-long/2addr p3, v1

    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "percent"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->G(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/a/c;->H(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/a/c;->I(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "play_error"

    invoke-static {p1, p2, p3, p4, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 285
    return-void
.end method

.method public reportVideoFinish()V
    .registers 10

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->q(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->r(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->s(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    .line 240
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getVideoDuration()D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v5, v4, v6

    .line 239
    const-string v4, "feed_over"

    const/16 v7, 0x64

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 242
    return-void
.end method

.method public reportVideoPause(J)V
    .registers 12

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->k(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->l(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->m(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    .line 227
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->getVideoDuration()D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {p1, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v7

    .line 226
    const-string v4, "feed_pause"

    const/4 v8, 0x0

    move-wide v5, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 228
    return-void
.end method

.method public reportVideoStart()V
    .registers 10

    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->h(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->i(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/c;->j(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feed_play"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 222
    return-void
.end method

.method public reportVideoStartError(II)V
    .registers 6

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->z(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creative_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "error_code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extra_error_code"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->A(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p1

    .line 264
    if-eqz p1, :cond_48

    .line 265
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "video_size"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_resolution"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->B(Lcom/bytedance/sdk/openadsdk/component/a/c;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/a/c;->C(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/component/a/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/a/c;->D(Lcom/bytedance/sdk/openadsdk/component/a/c;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "play_start_error"

    invoke-static {p1, p2, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 269
    return-void
.end method
