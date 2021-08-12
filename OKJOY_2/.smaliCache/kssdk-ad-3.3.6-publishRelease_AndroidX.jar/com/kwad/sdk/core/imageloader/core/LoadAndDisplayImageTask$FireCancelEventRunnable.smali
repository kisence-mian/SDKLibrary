.class Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$FireCancelEventRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FireCancelEventRunnable"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$FireCancelEventRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$FireCancelEventRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;

    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    iget-object v2, v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    :cond_17
    return-void
.end method
