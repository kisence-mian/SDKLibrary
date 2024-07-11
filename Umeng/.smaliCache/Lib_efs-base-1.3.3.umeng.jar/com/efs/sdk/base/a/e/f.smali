.class public final Lcom/efs/sdk/base/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/e/f$a;
    }
.end annotation


# static fields
.field static b:Ljava/nio/channels/FileLock;


# instance fields
.field volatile a:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/efs/sdk/base/a/e/f;->a:I

    .line 60
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/efs/sdk/base/a/e/f;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/efs/sdk/base/a/e/f;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    .line 81
    :try_start_1
    const-string v0, "efs.send_log"

    const-string v1, "tryFileLock start! "

    .line 1025
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/efs/sdk/base/a/e/f;->a:I

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/efs/sdk/base/a/e/f$1;

    invoke-direct {v1, p0, p1}, Lcom/efs/sdk/base/a/e/f$1;-><init>(Lcom/efs/sdk/base/a/e/f;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 113
    monitor-exit p0

    return-void

    .line 80
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .line 68
    iget v0, p0, Lcom/efs/sdk/base/a/e/f;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 69
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_7
    iget v0, p0, Lcom/efs/sdk/base/a/e/f;->a:I

    if-nez v0, :cond_14

    .line 71
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/efs/sdk/base/a/e/f;->a(Landroid/content/Context;)V

    .line 73
    :cond_14
    const/4 v0, 0x0

    return v0
.end method
