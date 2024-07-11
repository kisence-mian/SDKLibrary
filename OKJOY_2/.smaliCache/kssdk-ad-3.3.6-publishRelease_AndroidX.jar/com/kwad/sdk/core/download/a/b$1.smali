.class Lcom/kwad/sdk/core/download/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/download/a/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/download/a/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/download/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/download/a/b$1;->a:Lcom/kwad/sdk/core/download/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/kwad/sdk/core/download/a/b$1;->a:Lcom/kwad/sdk/core/download/a/b;

    invoke-static {p1}, Lcom/kwad/sdk/core/download/a/b;->a(Lcom/kwad/sdk/core/download/a/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->m(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/download/a/b$1;->a:Lcom/kwad/sdk/core/download/a/b;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/download/a/b;->dismiss()V

    return-void
.end method
