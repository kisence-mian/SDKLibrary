.class Lcom/bytedance/sdk/openadsdk/core/g/a$2;
.super Ljava/lang/Object;
.source "PlayableCache.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/core/g/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V
    .registers 7

    .prologue
    .line 279
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->d:Ljava/io/File;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JJ)V
    .registers 5

    .prologue
    .line 299
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->d(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->e(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    .line 305
    if-eqz v0, :cond_22

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->b(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    .line 309
    :cond_22
    if-eqz p1, :cond_36

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v1, :cond_36

    .line 310
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/a$2;Lcom/bytedance/sdk/openadsdk/core/g/a$b;Lcom/bytedance/sdk/adnet/core/n;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 366
    :goto_35
    return-void

    .line 358
    :cond_36
    const/16 v0, -0x2bc

    .line 359
    if-eqz p1, :cond_4c

    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4c

    .line 360
    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 362
    :cond_4c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V

    goto :goto_35
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 289
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    .line 293
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->c(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->d(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->e(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/16 v0, -0x2bc

    .line 373
    const/4 v1, 0x0

    .line 374
    if-eqz p1, :cond_65

    .line 375
    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4c

    .line 376
    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 383
    :cond_2d
    :goto_2d
    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_65

    .line 384
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 387
    :goto_3a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v2, v3, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V

    .line 390
    return-void

    .line 377
    :cond_4c
    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_2d

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    iget-object v2, v2, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/j;

    if-eqz v2, :cond_2d

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    iget-object v2, v2, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/j;

    iget v2, v2, Lcom/bytedance/sdk/adnet/core/j;->a:I

    if-eqz v2, :cond_2d

    .line 380
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/j;

    iget v0, v0, Lcom/bytedance/sdk/adnet/core/j;->a:I

    goto :goto_2d

    :cond_65
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_3a
.end method
