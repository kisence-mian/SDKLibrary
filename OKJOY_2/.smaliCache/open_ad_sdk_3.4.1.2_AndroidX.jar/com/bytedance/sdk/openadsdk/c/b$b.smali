.class Lcom/bytedance/sdk/openadsdk/c/b$b;
.super Lcom/bytedance/sdk/openadsdk/c/b;
.source "AdEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/c/b<",
        "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/c/b$b;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>()V

    .line 132
    return-void
.end method

.method public static e()Lcom/bytedance/sdk/openadsdk/c/b$b;
    .registers 2

    .line 120
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/b$b;->a:Lcom/bytedance/sdk/openadsdk/c/b$b;

    if-nez v0, :cond_17

    .line 121
    const-class v0, Lcom/bytedance/sdk/openadsdk/c/b$b;

    monitor-enter v0

    .line 122
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/b$b;->a:Lcom/bytedance/sdk/openadsdk/c/b$b;

    if-nez v1, :cond_12

    .line 123
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/b$b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/c/b$b;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/c/b$b;->a:Lcom/bytedance/sdk/openadsdk/c/b$b;

    .line 125
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 127
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/b$b;->a:Lcom/bytedance/sdk/openadsdk/c/b$b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 1

    monitor-enter p0

    .line 137
    monitor-exit p0

    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/c/i;)V
    .registers 2

    .line 116
    check-cast p1, Lcom/bytedance/sdk/openadsdk/g/c/c$a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/b$b;->a(Lcom/bytedance/sdk/openadsdk/g/c/c$a;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/g/c/c$a;)V
    .registers 2

    .line 147
    return-void
.end method

.method public b()V
    .registers 1

    .line 142
    return-void
.end method
