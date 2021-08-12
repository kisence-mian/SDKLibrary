.class Lcom/bytedance/sdk/openadsdk/k/d;
.super Ljava/lang/Object;
.source "TrackAdUrlImplEmpty.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/k/a;


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/k/d;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/k/d;
    .registers 2

    .line 12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/k/d;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    if-nez v0, :cond_17

    .line 13
    const-class v0, Lcom/bytedance/sdk/openadsdk/k/d;

    monitor-enter v0

    .line 14
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/k/d;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    if-nez v1, :cond_12

    .line 15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/k/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/k/d;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    .line 17
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 19
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/k/d;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 29
    return-void
.end method
