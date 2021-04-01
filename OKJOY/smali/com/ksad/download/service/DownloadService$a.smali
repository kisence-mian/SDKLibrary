.class Lcom/ksad/download/service/DownloadService$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/download/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ksad/download/service/DownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksad/download/service/DownloadService;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ksad/download/service/DownloadService$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ksad/download/service/DownloadService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/service/DownloadService;

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_b

    invoke-static {v0}, Lcom/ksad/download/service/DownloadService;->a(Lcom/ksad/download/service/DownloadService;)Lcom/ksad/download/d;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-static {v0}, Lcom/ksad/download/service/DownloadService;->a(Lcom/ksad/download/service/DownloadService;)Lcom/ksad/download/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksad/download/d;->a()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_b

    :cond_24
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b
.end method
