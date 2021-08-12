.class Lcom/bytedance/sdk/openadsdk/i/a/c$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/a/c;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$1;->a:Lcom/bytedance/sdk/openadsdk/i/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/a/c$1$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/i/a/c$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/a/c$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method
