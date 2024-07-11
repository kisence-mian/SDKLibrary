.class Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;
.super Ljava/lang/Object;
.source "AdEventProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/multipro/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static a()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_2c

    .line 335
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/p;

    monitor-enter v0

    .line 336
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v1, :cond_27

    .line 337
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/b;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/c/f;

    .line 338
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/c/f;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v3

    .line 340
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->a()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v4

    .line 341
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->d()Lcom/bytedance/sdk/openadsdk/c/g$a;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 343
    :cond_27
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1

    .line 345
    :cond_2c
    :goto_2c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation

    .line 373
    if-eqz p2, :cond_10

    .line 374
    new-instance p2, Lcom/bytedance/sdk/openadsdk/c/n;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/c/n;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->a()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v0

    goto :goto_1d

    .line 377
    :cond_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->b()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v0

    .line 378
    new-instance p2, Lcom/bytedance/sdk/openadsdk/c/l;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/c/l;-><init>(Landroid/content/Context;)V

    .line 380
    :goto_1d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->d()Lcom/bytedance/sdk/openadsdk/c/g$a;

    move-result-object v1

    .line 381
    new-instance v9, Lcom/bytedance/sdk/openadsdk/c/b;

    const/4 v10, 0x0

    new-instance v11, Lcom/bytedance/sdk/openadsdk/c/o;

    const/4 v6, 0x0

    move-object v2, v11

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/c/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    move-object v2, v9

    move-object v3, p2

    move-object v4, v10

    move-object v5, v0

    move-object v6, v1

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;Lcom/bytedance/sdk/openadsdk/c/g;)V

    return-object v9
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation

    .line 349
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_1b

    .line 350
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/p;

    monitor-enter v0

    .line 351
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v1, :cond_16

    .line 352
    const-string v1, "ttad_bk_batch_stats"

    const-string v2, "AdStatsEventBatchThread"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 354
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 356
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    return-object v0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation

    .line 360
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_1b

    .line 361
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/p;

    monitor-enter v0

    .line 362
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v1, :cond_16

    .line 363
    const-string v1, "ttad_bk_stats"

    const-string v2, "AdStatsEventThread"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 365
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 367
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    return-object v0
.end method

.method private static d()Lcom/bytedance/sdk/openadsdk/c/g$a;
    .registers 1

    .line 387
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b$1;-><init>()V

    return-object v0
.end method
