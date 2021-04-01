.class public Lcom/tencent/turingfd/sdk/ams/ad/instanceof;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->a(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic Gc:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic Hc:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic Ic:Ljava/lang/Object;

.field public final synthetic Xb:Landroid/content/Context;

.field public final synthetic this$0:Lcom/tencent/turingfd/sdk/ams/ad/synchronized;

.field public final synthetic vc:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic wc:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/synchronized;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/synchronized;

    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->vc:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->Gc:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->Hc:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->Xb:Landroid/content/Context;

    iput-object p6, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->wc:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p7, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->Ic:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const-string v1, ""

    .line 1
    :try_start_2
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/synchronized;

    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->vc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/synchronized;->a(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_2c

    move-result-object v0

    .line 3
    :goto_10
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->Hc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    :try_start_15
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->Xb:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->wc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_22} :catch_3a

    .line 6
    :goto_22
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->Ic:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_25
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->Ic:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2a} :catch_4a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_47

    .line 8
    :goto_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_47

    return-void

    .line 1
    :catch_2c
    move-exception v0

    .line 2
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->Gc:Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v2, -0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_10

    .line 4
    :catch_3a
    move-exception v0

    .line 5
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/instanceof;->Gc:Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v1, -0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_22

    .line 7
    :catchall_47
    move-exception v0

    .line 8
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    :catch_4a
    move-exception v0

    goto :goto_2a
.end method
