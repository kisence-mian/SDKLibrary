.class final Lcom/mintegral/msdk/base/common/net/d$a;
.super Landroid/os/Handler;
.source "CommonBaseResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/common/net/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mintegral/msdk/base/common/net/d",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/common/net/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/base/common/net/d",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 447
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 448
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/d$a;->a:Ljava/lang/ref/WeakReference;

    .line 450
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/net/d;

    .line 455
    if-eqz v0, :cond_d

    .line 456
    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/common/net/d;->a(Lcom/mintegral/msdk/base/common/net/d;Landroid/os/Message;)V

    .line 458
    :cond_d
    return-void
.end method
