.class public abstract Lcom/efs/sdk/base/a/i/a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public a:Lcom/efs/sdk/base/a/d/a;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 32
    sget-object v0, Lcom/efs/sdk/base/a/h/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    const/4 v0, 0x0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/efs/sdk/base/a/i/a;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/i/a;->a()V

    .line 45
    nop

    .line 1049
    const/4 p1, 0x0

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/efs/sdk/base/a/i/a;->sendEmptyMessageDelayed(IJ)Z

    .line 46
    return-void
.end method
