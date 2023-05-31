.class public final Lcom/bytedance/sdk/a/b/a/a/d$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/a/a/d$b;

.field final b:[Z

.field final synthetic c:Lcom/bytedance/sdk/a/b/a/a/d;

.field private d:Z


# virtual methods
.method a()V
    .registers 4

    .prologue
    .line 871
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d$a;->a:Lcom/bytedance/sdk/a/b/a/a/d$b;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    if-ne v0, p0, :cond_22

    .line 872
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/d$a;->c:Lcom/bytedance/sdk/a/b/a/a/d;

    iget v1, v1, Lcom/bytedance/sdk/a/b/a/a/d;->c:I

    if-ge v0, v1, :cond_1d

    .line 874
    :try_start_d
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/d$a;->c:Lcom/bytedance/sdk/a/b/a/a/d;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/a/d;->b:Lcom/bytedance/sdk/a/b/a/f/a;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/a/d$a;->a:Lcom/bytedance/sdk/a/b/a/a/d$b;

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/a/d$b;->d:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/a/b/a/f/a;->a(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_23

    .line 872
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 879
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d$a;->a:Lcom/bytedance/sdk/a/b/a/a/d$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    .line 881
    :cond_22
    return-void

    .line 875
    :catch_23
    move-exception v1

    goto :goto_1a
.end method

.method public b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/a/d$a;->c:Lcom/bytedance/sdk/a/b/a/a/d;

    monitor-enter v1

    .line 959
    :try_start_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d$a;->d:Z

    if-eqz v0, :cond_10

    .line 960
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 966
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    .line 962
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d$a;->a:Lcom/bytedance/sdk/a/b/a/a/d$b;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/a/d$b;->f:Lcom/bytedance/sdk/a/b/a/a/d$a;

    if-ne v0, p0, :cond_1c

    .line 963
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d$a;->c:Lcom/bytedance/sdk/a/b/a/a/d;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/bytedance/sdk/a/b/a/a/d;->a(Lcom/bytedance/sdk/a/b/a/a/d$a;Z)V

    .line 965
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/a/d$a;->d:Z

    .line 966
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_d

    .line 967
    return-void
.end method
