.class Lcom/kwad/sdk/core/download/a/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/download/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/download/a/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/download/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/download/a/f$3;->a:Lcom/kwad/sdk/core/download/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/webview/jshandler/i$a;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFrameValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTipsDialogWebCardPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f$3;->a:Lcom/kwad/sdk/core/download/a/f;

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/download/a/f;->a(Lcom/kwad/sdk/core/download/a/f;Lcom/kwad/sdk/core/webview/jshandler/i$a;)Lcom/kwad/sdk/core/webview/jshandler/i$a;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f$3;->a:Lcom/kwad/sdk/core/download/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/core/download/a/f;->a(Lcom/kwad/sdk/core/download/a/f;)Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    move-result-object v0

    iget v1, p1, Lcom/kwad/sdk/core/webview/jshandler/i$a;->a:I

    iget p1, p1, Lcom/kwad/sdk/core/webview/jshandler/i$a;->d:I

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setTranslationY(F)V

    return-void
.end method
