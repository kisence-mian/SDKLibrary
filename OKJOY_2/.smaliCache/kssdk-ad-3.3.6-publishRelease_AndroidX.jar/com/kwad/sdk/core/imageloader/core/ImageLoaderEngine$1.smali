.class Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->submit(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

.field final synthetic val$task:Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine$1;->this$0:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine$1;->val$task:Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine$1;->this$0:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine$1;->val$task:Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->getLoadingUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine$1;->this$0:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    # invokes: Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->access$000(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine$1;->this$0:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->access$100(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_2f

    :cond_29
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine$1;->this$0:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    # getter for: Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->access$200(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_2f
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine$1;->val$task:Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
