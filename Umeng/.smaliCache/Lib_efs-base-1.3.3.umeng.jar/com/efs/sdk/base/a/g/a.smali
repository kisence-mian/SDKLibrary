.class public abstract Lcom/efs/sdk/base/a/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/efs/sdk/base/a/g/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/efs/sdk/base/a/g/a/a;
.end method

.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .registers 4

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    if-nez v0, :cond_18

    .line 29
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_1e

    .line 30
    :try_start_5
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    if-nez v0, :cond_13

    .line 31
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/g/a;->a()Lcom/efs/sdk/base/a/g/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/base/a/g/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    .line 32
    if-nez v0, :cond_13

    .line 33
    monitor-exit p0

    return-void

    .line 36
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    :try_start_17
    throw p1

    .line 38
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a;->a:Lcom/efs/sdk/base/a/g/a/a;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/g/a/a;->a(Lcom/efs/sdk/base/a/f/b;)V
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1e

    .line 41
    return-void

    .line 39
    :catchall_1e
    move-exception p1

    .line 40
    const-string v0, "efs.processor"

    const-string v1, "log handle error"

    invoke-static {v0, v1, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method
