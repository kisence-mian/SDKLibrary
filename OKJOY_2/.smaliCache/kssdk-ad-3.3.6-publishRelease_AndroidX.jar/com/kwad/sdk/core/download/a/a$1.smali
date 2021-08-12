.class Lcom/kwad/sdk/core/download/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/download/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/download/a/a;->d()Lcom/kwad/sdk/core/download/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/download/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/download/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/download/a/a$1;->a:Lcom/kwad/sdk/core/download/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "DownloadDialogView"

    const-string v1, "onClose()"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/a$1;->a:Lcom/kwad/sdk/core/download/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/download/a/a;->a(Lcom/kwad/sdk/core/download/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->m(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/a$1;->a:Lcom/kwad/sdk/core/download/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/download/a/a;->b(Lcom/kwad/sdk/core/download/a/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/a$1;->a:Lcom/kwad/sdk/core/download/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/download/a/a;->b(Lcom/kwad/sdk/core/download/a/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/a$1;->a:Lcom/kwad/sdk/core/download/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/download/a/a;->b(Lcom/kwad/sdk/core/download/a/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2d
    return-void
.end method
