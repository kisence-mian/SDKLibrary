.class public abstract Lcom/bytedance/sdk/openadsdk/core/f/e;
.super Ljava/lang/Object;
.source "PermissionsResultAction.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/f/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

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

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->b:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 166
    monitor-exit p0

    return-void

    .line 164
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(Ljava/lang/String;I)Z
    .registers 3

    monitor-enter p0

    .line 89
    if-nez p2, :cond_b

    .line 90
    :try_start_3
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit p0

    return p1

    .line 92
    :cond_b
    :try_start_b
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/f/c;->b:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    monitor-exit p0

    return p1

    .line 88
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z
    .registers 5

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/e$5;->a:[I

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/f/c;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_74

    goto :goto_6d

    .line 132
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/e;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 134
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->c:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/f/e$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/f/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_70

    .line 140
    monitor-exit p0

    return v0

    .line 143
    :cond_32
    :try_start_32
    new-instance p2, Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->c:Landroid/os/Looper;

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/e$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/e$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/e;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_70

    .line 149
    monitor-exit p0

    return v0

    .line 124
    :pswitch_43
    :try_start_43
    new-instance p2, Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->c:Landroid/os/Looper;

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/e$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/e;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_70

    .line 130
    monitor-exit p0

    return v0

    .line 113
    :pswitch_54
    :try_start_54
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 114
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f/e;->c:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/f/e$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/f/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6b
    .catchall {:try_start_54 .. :try_end_6b} :catchall_70

    .line 120
    monitor-exit p0

    return v0

    .line 153
    :cond_6d
    :goto_6d
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 109
    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_54
        :pswitch_43
        :pswitch_13
    .end packed-switch
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .registers 5

    monitor-enter p0

    .line 83
    :try_start_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1c

    .line 84
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 82
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
