.class Lcom/bytedance/sdk/a/b/a/e/g$4;
.super Lcom/bytedance/sdk/a/b/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/a/e/g;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/bytedance/sdk/a/b/a/e/g;


# direct methods
.method varargs constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6

    .prologue
    .line 825
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iput p4, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->a:I

    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/a/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    .prologue
    .line 828
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->i:Lcom/bytedance/sdk/a/b/a/e/m;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/m;->a(ILjava/util/List;)Z

    move-result v0

    .line 830
    if-eqz v0, :cond_2a

    .line 831
    :try_start_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->a:I

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 832
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_2e

    .line 833
    :try_start_1c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$4;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 834
    monitor-exit v1

    .line 838
    :cond_2a
    :goto_2a
    return-void

    .line 834
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_2e

    .line 836
    :catch_2e
    move-exception v0

    goto :goto_2a
.end method
