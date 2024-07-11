.class Lcom/bytedance/sdk/a/b/a/e/g$7;
.super Lcom/bytedance/sdk/a/b/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/a/e/g;->c(ILcom/bytedance/sdk/a/b/a/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/bytedance/sdk/a/b/a/e/b;

.field final synthetic d:Lcom/bytedance/sdk/a/b/a/e/g;


# direct methods
.method varargs constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g;Ljava/lang/String;[Ljava/lang/Object;ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 6

    .line 894
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$7;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iput p4, p0, Lcom/bytedance/sdk/a/b/a/e/g$7;->a:I

    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/e/g$7;->c:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/a/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    .line 897
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$7;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->i:Lcom/bytedance/sdk/a/b/a/e/m;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$7;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$7;->c:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/m;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 898
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$7;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v0

    .line 899
    :try_start_e
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$7;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->r:Ljava/util/Set;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$7;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 900
    monitor-exit v0

    .line 901
    return-void

    .line 900
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v1
.end method
