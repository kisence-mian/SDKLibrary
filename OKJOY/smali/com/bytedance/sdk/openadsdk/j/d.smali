.class Lcom/bytedance/sdk/openadsdk/j/d;
.super Ljava/lang/Object;
.source "TrackAdUrlImplEmpty.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/j/a;


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/j/d;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/j/d;
    .registers 2

    .prologue
    .line 12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/d;->a:Lcom/bytedance/sdk/openadsdk/j/d;

    if-nez v0, :cond_13

    .line 13
    const-class v1, Lcom/bytedance/sdk/openadsdk/j/d;

    monitor-enter v1

    .line 14
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/d;->a:Lcom/bytedance/sdk/openadsdk/j/d;

    if-nez v0, :cond_12

    .line 15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/j/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/j/d;->a:Lcom/bytedance/sdk/openadsdk/j/d;

    .line 17
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 19
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/d;->a:Lcom/bytedance/sdk/openadsdk/j/d;

    return-object v0

    .line 17
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    return-void
.end method
