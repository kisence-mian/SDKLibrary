.class Lcom/bytedance/embed_device_register/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embed_device_register/e;->c(Landroid/content/Context;)Lcom/bytedance/embed_device_register/e$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/embed_device_register/e$a$a;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Lcom/bytedance/embed_device_register/e;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_device_register/e;Lcom/bytedance/embed_device_register/e$a$a;JLjava/util/concurrent/CountDownLatch;)V
    .registers 7

    .prologue
    .line 147
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e$2;->d:Lcom/bytedance/embed_device_register/e;

    iput-object p2, p0, Lcom/bytedance/embed_device_register/e$2;->a:Lcom/bytedance/embed_device_register/e$a$a;

    iput-wide p3, p0, Lcom/bytedance/embed_device_register/e$2;->b:J

    iput-object p5, p0, Lcom/bytedance/embed_device_register/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .prologue
    .line 149
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {p2}, Lcom/bytedance/embed_bdtracker/bt$a;->a(Landroid/os/IBinder;)Lcom/bytedance/embed_bdtracker/bt;

    move-result-object v0

    .line 153
    :try_start_20
    invoke-interface {v0}, Lcom/bytedance/embed_bdtracker/bt;->a()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-interface {v0}, Lcom/bytedance/embed_bdtracker/bt;->b()Z

    move-result v0

    .line 155
    iget-object v2, p0, Lcom/bytedance/embed_device_register/e$2;->a:Lcom/bytedance/embed_device_register/e$a$a;

    invoke-virtual {v2, v1}, Lcom/bytedance/embed_device_register/e$a$a;->b(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/embed_device_register/e$a$a;->a(Z)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/embed_device_register/e$a$a;->b(J)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v2

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/embed_device_register/e$2;->b:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/embed_device_register/e$a$a;->a(J)Lcom/bytedance/embed_device_register/e$a$a;

    .line 158
    const-string v2, "TrackerDr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/e;->b()Ljava/lang/String;

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

    invoke-static {v2, v0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_6e} :catch_74
    .catchall {:try_start_20 .. :try_end_6e} :catchall_87

    .line 163
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 165
    :goto_73
    return-void

    .line 159
    :catch_74
    move-exception v0

    .line 160
    :try_start_75
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 161
    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$2;->a:Lcom/bytedance/embed_device_register/e$a$a;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/embed_device_register/e$a$a;->d(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_87

    .line 163
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_73

    :catchall_87
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/embed_device_register/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .prologue
    .line 168
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/embed_device_register/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
