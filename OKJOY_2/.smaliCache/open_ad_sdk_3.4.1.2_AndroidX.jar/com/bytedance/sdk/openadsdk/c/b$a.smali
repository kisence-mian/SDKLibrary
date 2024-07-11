.class Lcom/bytedance/sdk/openadsdk/c/b$a;
.super Lcom/bytedance/sdk/openadsdk/c/b;
.source "AdEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/c/b<",
        "Lcom/bytedance/sdk/openadsdk/c/a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/c/b$a;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/c/b;-><init>()V

    .line 98
    return-void
.end method

.method public static e()Lcom/bytedance/sdk/openadsdk/c/b$a;
    .registers 2

    .line 86
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/c/b$a;

    if-nez v0, :cond_17

    .line 87
    const-class v0, Lcom/bytedance/sdk/openadsdk/c/b$a;

    monitor-enter v0

    .line 88
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/c/b$a;

    if-nez v1, :cond_12

    .line 89
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/b$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/c/b$a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/c/b$a;

    .line 91
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 93
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/c/b$a;->a:Lcom/bytedance/sdk/openadsdk/c/b$a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 1

    monitor-enter p0

    .line 103
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/c/a;)V
    .registers 2

    .line 113
    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/c/i;)V
    .registers 2

    .line 82
    check-cast p1, Lcom/bytedance/sdk/openadsdk/c/a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/b$a;->a(Lcom/bytedance/sdk/openadsdk/c/a;)V

    return-void
.end method

.method public b()V
    .registers 1

    .line 108
    return-void
.end method
