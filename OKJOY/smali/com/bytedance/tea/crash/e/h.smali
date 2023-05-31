.class public Lcom/bytedance/tea/crash/e/h;
.super Ljava/lang/Object;
.source "NpthHandlerThread.java"


# static fields
.field private static volatile a:Landroid/os/HandlerThread;

.field private static volatile b:Landroid/os/Handler;

.field private static volatile c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/tea/crash/e/h;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/HandlerThread;
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lcom/bytedance/tea/crash/e/h;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_27

    .line 25
    const-class v1, Lcom/bytedance/tea/crash/e/h;

    monitor-enter v1

    .line 26
    :try_start_7
    sget-object v0, Lcom/bytedance/tea/crash/e/h;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_26

    .line 27
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "default_npth_thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/tea/crash/e/h;->a:Landroid/os/HandlerThread;

    .line 28
    sget-object v0, Lcom/bytedance/tea/crash/e/h;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/tea/crash/e/h;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/tea/crash/e/h;->b:Landroid/os/Handler;

    .line 31
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_2a

    .line 33
    :cond_27
    sget-object v0, Lcom/bytedance/tea/crash/e/h;->a:Landroid/os/HandlerThread;

    return-object v0

    .line 31
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public static b()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/bytedance/tea/crash/e/h;->b:Landroid/os/Handler;

    if-nez v0, :cond_7

    .line 41
    invoke-static {}, Lcom/bytedance/tea/crash/e/h;->a()Landroid/os/HandlerThread;

    .line 43
    :cond_7
    sget-object v0, Lcom/bytedance/tea/crash/e/h;->b:Landroid/os/Handler;

    return-object v0
.end method
