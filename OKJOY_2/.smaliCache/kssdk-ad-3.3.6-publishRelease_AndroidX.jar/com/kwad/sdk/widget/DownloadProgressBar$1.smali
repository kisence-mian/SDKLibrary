.class Lcom/kwad/sdk/widget/DownloadProgressBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/widget/DownloadProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/widget/DownloadProgressBar;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/widget/DownloadProgressBar;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar$1;->a:Lcom/kwad/sdk/widget/DownloadProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar$1;->a:Lcom/kwad/sdk/widget/DownloadProgressBar;

    invoke-virtual {v0}, Lcom/kwad/sdk/widget/DownloadProgressBar;->invalidate()V

    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar$1;->a:Lcom/kwad/sdk/widget/DownloadProgressBar;

    invoke-virtual {v0}, Lcom/kwad/sdk/widget/DownloadProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar$1;->a:Lcom/kwad/sdk/widget/DownloadProgressBar;

    const-wide/16 v1, 0x22

    invoke-virtual {v0, p0, v1, v2}, Lcom/kwad/sdk/widget/DownloadProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void
.end method
