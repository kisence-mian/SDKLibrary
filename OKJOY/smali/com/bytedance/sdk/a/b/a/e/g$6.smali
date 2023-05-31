.class Lcom/bytedance/sdk/a/b/a/e/g$6;
.super Lcom/bytedance/sdk/a/b/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/a/e;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/bytedance/sdk/a/a/c;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lcom/bytedance/sdk/a/b/a/e/g;


# direct methods
.method varargs constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/a/c;IZ)V
    .registers 8

    .prologue
    .line 871
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->f:Lcom/bytedance/sdk/a/b/a/e/g;

    iput p4, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->a:I

    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->c:Lcom/bytedance/sdk/a/a/c;

    iput p6, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->d:I

    iput-boolean p7, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->e:Z

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/a/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 6

    .prologue
    .line 875
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->f:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->i:Lcom/bytedance/sdk/a/b/a/e/m;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->c:Lcom/bytedance/sdk/a/a/c;

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->d:I

    iget-boolean v4, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/m;->a(ILcom/bytedance/sdk/a/a/e;IZ)Z

    move-result v0

    .line 876
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->f:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->a:I

    sget-object v3, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 877
    :cond_1d
    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->e:Z

    if-eqz v0, :cond_34

    .line 878
    :cond_23
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->f:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_38

    .line 879
    :try_start_26
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->f:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$6;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 880
    monitor-exit v1

    .line 884
    :cond_34
    :goto_34
    return-void

    .line 880
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    :try_start_37
    throw v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38

    .line 882
    :catch_38
    move-exception v0

    goto :goto_34
.end method
