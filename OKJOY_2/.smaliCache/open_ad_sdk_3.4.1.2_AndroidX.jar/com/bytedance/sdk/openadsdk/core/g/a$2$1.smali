.class Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;
.super Ljava/lang/Object;
.source "PlayableCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/a$2;->a(Lcom/bytedance/sdk/adnet/core/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

.field final synthetic b:Lcom/bytedance/sdk/adnet/core/m;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/a$2;Lcom/bytedance/sdk/openadsdk/core/g/a$b;Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 4

    .line 311
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->b:Lcom/bytedance/sdk/adnet/core/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 314
    nop

    .line 317
    const/4 v0, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    if-eqz v1, :cond_d

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->c(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    .line 320
    :cond_d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->b:Lcom/bytedance/sdk/adnet/core/m;

    iget-object v1, v1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/am;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 321
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    if-eqz v1, :cond_2d

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->d(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    .line 325
    :cond_2d
    nop

    .line 326
    nop

    .line 327
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_42

    .line 328
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->a()J

    move-result-wide v2

    .line 329
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->b()J

    move-result-wide v4

    move-wide v5, v4

    move-wide v3, v2

    goto :goto_44

    .line 327
    :cond_42
    move-wide v5, v2

    move-wide v3, v5

    .line 331
    :goto_44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;JJ)V

    .line 334
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->d:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/io/File;)V
    :try_end_5a
    .catchall {:try_start_2 .. :try_end_5a} :catchall_70

    .line 338
    :try_start_5a
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->d:Ljava/io/File;

    const-string v3, "tt_open_ad_sdk_check_res.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_6c
    .catchall {:try_start_5a .. :try_end_6c} :catchall_6d

    .line 341
    goto :goto_6e

    .line 340
    :catchall_6d
    move-exception v1

    .line 343
    :goto_6e
    nop

    .line 347
    goto :goto_8a

    .line 344
    :catchall_70
    move-exception v0

    .line 345
    const-string v1, "PlayableCache"

    const-string v2, "unzip error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/16 v3, -0x2c0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 351
    :goto_8a
    :try_start_8a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->b:Lcom/bytedance/sdk/adnet/core/m;

    iget-object v1, v1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_94

    .line 353
    goto :goto_95

    .line 352
    :catchall_94
    move-exception v1

    .line 355
    :goto_95
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V

    .line 356
    return-void
.end method
