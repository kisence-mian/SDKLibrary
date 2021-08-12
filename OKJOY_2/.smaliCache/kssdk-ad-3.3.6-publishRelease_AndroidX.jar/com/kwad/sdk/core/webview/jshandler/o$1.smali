.class Lcom/kwad/sdk/core/webview/jshandler/o$1;
.super Lcom/kwad/sdk/core/download/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/webview/jshandler/o;->c()Lcom/kwad/sdk/api/KsAppDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/webview/jshandler/o;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/webview/jshandler/o;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/o$1;->a:Lcom/kwad/sdk/core/webview/jshandler/o;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/o$1;->a:Lcom/kwad/sdk/core/webview/jshandler/o;

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/core/webview/jshandler/o;->a(Lcom/kwad/sdk/core/webview/jshandler/o;IF)V

    return-void
.end method

.method public onDownloadFailed()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/o$1;->a:Lcom/kwad/sdk/core/webview/jshandler/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/o;->a(Lcom/kwad/sdk/core/webview/jshandler/o;IF)V

    return-void
.end method

.method public onDownloadFinished()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/o$1;->a:Lcom/kwad/sdk/core/webview/jshandler/o;

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/o;->a(Lcom/kwad/sdk/core/webview/jshandler/o;IF)V

    return-void
.end method

.method public onIdle()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/o$1;->a:Lcom/kwad/sdk/core/webview/jshandler/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/o;->a(Lcom/kwad/sdk/core/webview/jshandler/o;IF)V

    return-void
.end method

.method public onInstalled()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/o$1;->a:Lcom/kwad/sdk/core/webview/jshandler/o;

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/webview/jshandler/o;->a(Lcom/kwad/sdk/core/webview/jshandler/o;IF)V

    return-void
.end method

.method public onProgressUpdate(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/o$1;->a:Lcom/kwad/sdk/core/webview/jshandler/o;

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/core/webview/jshandler/o;->a(Lcom/kwad/sdk/core/webview/jshandler/o;IF)V

    return-void
.end method
