.class Lcom/bytedance/sdk/openadsdk/component/reward/e$3;
.super Ljava/lang/Object;
.source "RewardVideoCache.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/component/reward/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/reward/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/e;Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/e$a;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 6

    .line 323
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 327
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 328
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 329
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->p()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e

    return-object p1

    .line 333
    :cond_1d
    goto :goto_3b

    .line 331
    :catch_1e
    move-exception p1

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datastoreGet throw IOException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RewardVideoCache"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_3b
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(JJ)V
    .registers 5

    .line 352
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1b

    .line 357
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    if-eqz v1, :cond_f

    .line 358
    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e$a;->a(ZLjava/lang/Object;)V

    .line 361
    :cond_f
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-wide/16 v6, 0x0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/component/reward/e;ZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_34

    .line 363
    :cond_1b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    if-eqz v1, :cond_23

    .line 364
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e$a;->a(ZLjava/lang/Object;)V

    .line 367
    :cond_23
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez p1, :cond_2d

    const-wide/16 v0, -0x3

    goto :goto_2f

    :cond_2d
    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    :goto_2f
    move-wide v6, v0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/component/reward/e;ZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    .line 369
    :goto_34
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .line 339
    if-eqz p2, :cond_7

    .line 340
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/component/reward/e;Ljava/io/File;)V

    .line 342
    :cond_7
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 346
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->a:Ljava/io/File;

    return-object p1
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    if-eqz v0, :cond_9

    .line 374
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/e$a;->a(ZLjava/lang/Object;)V

    .line 377
    :cond_9
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez p1, :cond_13

    const-wide/16 v0, -0x2

    goto :goto_15

    :cond_13
    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    :goto_15
    move-wide v6, v0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/component/reward/e;ZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    .line 378
    return-void
.end method
