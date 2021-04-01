.class Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireProgressEvent(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;

.field final synthetic val$current:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;II)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;

    iput p2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;->val$current:I

    iput p3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->progressListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;

    iget-object v2, v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;->val$current:I

    iget v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;->val$total:I

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;->onProgressUpdate(Ljava/lang/String;Landroid/view/View;II)V

    return-void
.end method
