.class public abstract Lcom/bytedance/sdk/openadsdk/core/f/e;
.super Ljava/lang/Object;
.source "PermissionsResultAction.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/f/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->b:Ljava/util/Set;

    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->c:Landroid/os/Looper;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method protected final declared-synchronized a([Ljava/lang/String;)V
    .registers 3
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->b:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;I)Z
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    monitor-enter p0

    if-nez p2, :cond_b

    .line 90
    :try_start_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    move-result v0

    .line 92
    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    :try_start_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/c;->b:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_9

    .line 89
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 110
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/f/e$5;->a:[I

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/c;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_2d

    packed-switch v1, :pswitch_data_6e

    .line 153
    :cond_12
    const/4 v0, 0x0

    :goto_13
    monitor-exit p0

    return v0

    .line 113
    :pswitch_15
    :try_start_15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 114
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->c:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/e$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/f/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2d

    goto :goto_13

    .line 110
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :pswitch_30
    :try_start_30
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->c:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/e$2;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 132
    :pswitch_40
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 133
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 134
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->c:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/e$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/f/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 143
    :cond_5e
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->c:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/f/e$4;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/e$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6d
    .catchall {:try_start_30 .. :try_end_6d} :catchall_2d

    goto :goto_13

    .line 111
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_30
        :pswitch_40
    .end packed-switch
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1c

    .line 84
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 83
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
