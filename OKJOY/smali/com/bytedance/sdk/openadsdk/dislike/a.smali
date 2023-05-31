.class public Lcom/bytedance/sdk/openadsdk/dislike/a;
.super Ljava/lang/Object;
.source "DislikeDispatcher.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/dislike/a;


# instance fields
.field private final b:Lcom/bytedance/sdk/openadsdk/core/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/p",
            "<",
            "Lcom/bytedance/sdk/openadsdk/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/a;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 23
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/dislike/a;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dislike/a;->a:Lcom/bytedance/sdk/openadsdk/dislike/a;

    if-nez v0, :cond_13

    .line 27
    const-class v1, Lcom/bytedance/sdk/openadsdk/dislike/a;

    monitor-enter v1

    .line 28
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dislike/a;->a:Lcom/bytedance/sdk/openadsdk/dislike/a;

    if-nez v0, :cond_12

    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/dislike/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/dislike/a;->a:Lcom/bytedance/sdk/openadsdk/dislike/a;

    .line 31
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 33
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/dislike/a;->a:Lcom/bytedance/sdk/openadsdk/dislike/a;

    return-object v0

    .line 31
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/util/List;)V
    .registers 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/a;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/util/List;)V

    .line 38
    return-void
.end method
