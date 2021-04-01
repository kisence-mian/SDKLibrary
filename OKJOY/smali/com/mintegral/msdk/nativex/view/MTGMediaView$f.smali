.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$f;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/listener/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mintegral/msdk/nativex/view/MTGMediaView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 3

    .prologue
    .line 3007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3008
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$f;->a:Ljava/lang/ref/WeakReference;

    .line 3009
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 3012
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 3013
    if-eqz v0, :cond_16

    .line 3014
    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->J(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$c;

    invoke-direct {v2, v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$c;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3016
    :cond_16
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3019
    return-void
.end method
