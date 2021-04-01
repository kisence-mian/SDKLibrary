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

    .prologue
    .line 844
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

    .prologue
    .line 847
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->e:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->i:Lcom/bytedance/sdk/a/b/a/e/m;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->c:Ljava/util/List;

    iget-boolean v3, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->d:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/m;->a(ILjava/util/List;Z)Z

    move-result v0

    .line 849
    if-eqz v0, :cond_1b

    :try_start_10
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->e:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->a:I

    sget-object v3, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 850
    :cond_1b
    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->d:Z

    if-eqz v0, :cond_32

    .line 851
    :cond_21
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->e:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_24} :catch_36

    .line 852
    :try_start_24
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->e:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$5;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 853
    monitor-exit v1

    .line 857
    :cond_32
    :goto_32
    return-void

    .line 853
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    :try_start_35
    throw v0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36

    .line 855
    :catch_36
    move-exception v0

    goto :goto_32
.end method
