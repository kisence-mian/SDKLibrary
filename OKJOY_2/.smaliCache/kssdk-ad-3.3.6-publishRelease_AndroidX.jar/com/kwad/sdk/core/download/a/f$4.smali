.class Lcom/kwad/sdk/core/download/a/f$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/h$a;


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

    iput-object p1, p0, Lcom/kwad/sdk/core/download/a/f$4;->a:Lcom/kwad/sdk/core/download/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "DownloadTipsDialogWebCardPresenter"

    const-string v1, "handleWebCardHide"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/f$4;->a:Lcom/kwad/sdk/core/download/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/core/download/a/f;->b(Lcom/kwad/sdk/core/download/a/f;)V

    return-void
.end method
