.class Lcom/bytedance/sdk/openadsdk/core/g/a$2;
.super Ljava/lang/Object;
.source "PlayableCache.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/core/g/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V
    .registers 7

    .line 280
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->d:Ljava/io/File;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 284
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(JJ)V
    .registers 5

    .line 300
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->d(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->e(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    .line 306
    if-eqz v0, :cond_22

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->b(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    .line 310
    :cond_22
    if-eqz p1, :cond_32

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v1, :cond_32

    .line 311
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/g/a$2;Lcom/bytedance/sdk/openadsdk/core/g/a$b;Lcom/bytedance/sdk/adnet/core/m;)V

    const/4 p1, 0x5

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    goto :goto_5a

    .line 359
    :cond_32
    const/16 v0, -0x2bc

    .line 360
    if-eqz p1, :cond_48

    iget-wide v1, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_48

    .line 361
    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 363
    :cond_48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILjava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V

    .line 367
    :goto_5a
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .line 290
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 294
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->c(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->d(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->e(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    nop

    .line 374
    nop

    .line 375
    const/16 v0, -0x2bc

    const/4 v1, 0x0

    if-eqz p1, :cond_52

    .line 376
    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_30

    .line 377
    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_48

    .line 378
    :cond_30
    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_48

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    iget-object v2, v2, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    if-eqz v2, :cond_48

    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    iget-object v2, v2, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    iget v2, v2, Lcom/bytedance/sdk/adnet/core/i;->a:I

    if-eqz v2, :cond_48

    .line 381
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/err/VAdError;->networkResponse:Lcom/bytedance/sdk/adnet/core/i;

    iget v0, v0, Lcom/bytedance/sdk/adnet/core/i;->a:I

    .line 384
    :cond_48
    :goto_48
    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_52

    .line 385
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 388
    :cond_52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILjava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V

    .line 391
    return-void
.end method
