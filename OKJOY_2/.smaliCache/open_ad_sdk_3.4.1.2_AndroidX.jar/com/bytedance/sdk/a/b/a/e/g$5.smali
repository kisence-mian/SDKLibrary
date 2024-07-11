.class Lcom/bytedance/sdk/a/b/a/e/g$5;
.super Lcom/bytedance/sdk/a/b/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/a/e/g;->a(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lcom/bytedance/sdk/a/b/a/e/g;


# direct methods
.method varargs constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7

    .line 849
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->e:Lcom/bytedance/sdk/a/b/a/e/g;

    iput p4, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->a:I

    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->c:Ljava/util/List;

    iput-boolean p6, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->d:Z

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/a/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    .line 852
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->e:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->i:Lcom/bytedance/sdk/a/b/a/e/m;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->c:Ljava/util/List;

    iget-boolean v3, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->d:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/m;->a(ILjava/util/List;Z)Z

    move-result v0

    .line 854
    if-eqz v0, :cond_1e

    :try_start_10
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->e:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->a:I

    sget-object v3, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    goto :goto_1e

    .line 860
    :catch_1c
    move-exception v0

    goto :goto_39

    .line 855
    :cond_1e
    :goto_1e
    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->d:Z

    if-eqz v0, :cond_35

    .line 856
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->e:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_27} :catch_1c

    .line 857
    :try_start_27
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->e:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 858
    monitor-exit v0

    .line 861
    :cond_35
    goto :goto_39

    .line 858
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_36

    :try_start_38
    throw v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_39} :catch_1c

    .line 862
    :goto_39
    return-void
.end method
