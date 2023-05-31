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
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/bytedance/sdk/openadsdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
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
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_28

    .line 335
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/o;

    monitor-enter v1

    .line 336
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_27

    .line 337
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/b;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/c/f;

    .line 338
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/c/f;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v3

    .line 340
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->a()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v4

    .line 341
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->d()Lcom/bytedance/sdk/openadsdk/c/g$a;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 343
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_2b

    .line 345
    :cond_28
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a:Lcom/bytedance/sdk/openadsdk/c/b;

    return-object v0

    .line 343
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 373
    if-eqz p2, :cond_23

    .line 374
    new-instance v3, Lcom/bytedance/sdk/openadsdk/c/n;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/c/n;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->a()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v5

    .line 380
    :goto_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->d()Lcom/bytedance/sdk/openadsdk/c/g$a;

    move-result-object v6

    .line 381
    new-instance v8, Lcom/bytedance/sdk/openadsdk/c/b;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/o;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/c/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;)V

    move-object v2, v8

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>(Lcom/bytedance/sdk/openadsdk/c/e;Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/c/g$b;Lcom/bytedance/sdk/openadsdk/c/g$a;Lcom/bytedance/sdk/openadsdk/c/g;)V

    return-object v8

    .line 377
    :cond_23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/g$b;->b()Lcom/bytedance/sdk/openadsdk/c/g$b;

    move-result-object v5

    .line 378
    new-instance v3, Lcom/bytedance/sdk/openadsdk/c/l;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/c/l;-><init>(Landroid/content/Context;)V

    goto :goto_10
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_17

    .line 350
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/o;

    monitor-enter v1

    .line 351
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_16

    .line 352
    const-string v0, "ttad_bk_batch_stats"

    const-string v2, "AdStatsEventBatchThread"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 354
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 356
    :cond_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c:Lcom/bytedance/sdk/openadsdk/c/b;

    return-object v0

    .line 354
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/c/b",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_17

    .line 361
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/o;

    monitor-enter v1

    .line 362
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    if-nez v0, :cond_16

    .line 363
    const-string v0, "ttad_bk_stats"

    const-string v2, "AdStatsEventThread"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    .line 365
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    .line 367
    :cond_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b:Lcom/bytedance/sdk/openadsdk/c/b;

    return-object v0

    .line 365
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static d()Lcom/bytedance/sdk/openadsdk/c/g$a;
    .registers 1

    .prologue
    .line 387
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b$1;-><init>()V

    return-object v0
.end method
