.class Lcom/bytedance/sdk/openadsdk/i/a/c$5;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/a/c;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/i/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/a/c;ILjava/util/HashSet;)V
    .registers 4

    .line 333
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$5;->b:Lcom/bytedance/sdk/openadsdk/i/a/c;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$5;->a:Ljava/util/HashSet;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$5;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 338
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    .line 340
    goto :goto_17

    .line 339
    :catchall_16
    move-exception v1

    .line 341
    :goto_17
    goto :goto_6

    .line 342
    :cond_18
    return-void
.end method
