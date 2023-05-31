.class Lcom/bytedance/a/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/a/f;->c(Landroid/content/Context;)Lcom/bytedance/a/f$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/a/f$a$a;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Lcom/bytedance/a/f;


# direct methods
.method constructor <init>(Lcom/bytedance/a/f;Lcom/bytedance/a/f$a$a;JLjava/util/concurrent/CountDownLatch;)V
    .registers 7

    .prologue
    .line 140
    iput-object p1, p0, Lcom/bytedance/a/f$2;->d:Lcom/bytedance/a/f;

    iput-object p2, p0, Lcom/bytedance/a/f$2;->a:Lcom/bytedance/a/f$a$a;

    iput-wide p3, p0, Lcom/bytedance/a/f$2;->b:J

    iput-object p5, p0, Lcom/bytedance/a/f$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 142
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {p2}, Lcom/bytedance/base_bdtracker/bt$a;->a(Landroid/os/IBinder;)Lcom/bytedance/base_bdtracker/bt;

    move-result-object v0

    .line 146
    :try_start_20
    invoke-interface {v0}, Lcom/bytedance/base_bdtracker/bt;->a()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {v0}, Lcom/bytedance/base_bdtracker/bt;->b()Z

    move-result v0

    .line 148
    iget-object v2, p0, Lcom/bytedance/a/f$2;->a:Lcom/bytedance/a/f$a$a;

    invoke-virtual {v2, v1}, Lcom/bytedance/a/f$a$a;->b(Ljava/lang/String;)Lcom/bytedance/a/f$a$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/a/f$a$a;->a(Z)Lcom/bytedance/a/f$a$a;

    move-result-object v2

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/a/f$a$a;->b(J)Lcom/bytedance/a/f$a$a;

    move-result-object v2

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/a/f$2;->b:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/a/f$a$a;->a(J)Lcom/bytedance/a/f$a$a;

    .line 151
    const-string v2, "TrackerDr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "oaid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " isTrackLimited="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_6e} :catch_74
    .catchall {:try_start_20 .. :try_end_6e} :catchall_87

    .line 156
    iget-object v0, p0, Lcom/bytedance/a/f$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 158
    :goto_73
    return-void

    .line 152
    :catch_74
    move-exception v0

    .line 153
    :try_start_75
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 154
    iget-object v1, p0, Lcom/bytedance/a/f$2;->a:Lcom/bytedance/a/f$a$a;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/a/f$a$a;->d(Ljava/lang/String;)Lcom/bytedance/a/f$a$a;
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_87

    .line 156
    iget-object v0, p0, Lcom/bytedance/a/f$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_73

    :catchall_87
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/a/f$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 161
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method
