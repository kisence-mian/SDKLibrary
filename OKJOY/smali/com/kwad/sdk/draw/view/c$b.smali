.class Lcom/kwad/sdk/draw/view/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/view/c;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/view/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/view/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/c$b;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$b;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->m(Lcom/kwad/sdk/draw/view/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$b;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/c$b;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v1}, Lcom/kwad/sdk/draw/view/c;->n(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    new-instance v2, Lcom/kwad/sdk/draw/view/c$b$a;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/draw/view/c$b$a;-><init>(Lcom/kwad/sdk/draw/view/c$b;)V

    iget-object v3, p0, Lcom/kwad/sdk/draw/view/c$b;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v3}, Lcom/kwad/sdk/draw/view/c;->o(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/core/download/g/b;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    return-void
.end method
