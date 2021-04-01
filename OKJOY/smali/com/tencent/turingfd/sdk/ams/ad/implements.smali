.class public Lcom/tencent/turingfd/sdk/ams/ad/implements;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->a(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic vc:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic wc:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic xc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/synchronized;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 1
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/implements;->vc:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/implements;->wc:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/tencent/turingfd/sdk/ams/ad/implements;->xc:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/implements;->vc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/implements;->wc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/implements;->xc:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_d
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/implements;->xc:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_17
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 5
    :goto_12
    :try_start_12
    monitor-exit v1

    return-void

    .line 4
    :catchall_14
    move-exception v0

    .line 5
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_14

    throw v0

    :catch_17
    move-exception v0

    goto :goto_12
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
