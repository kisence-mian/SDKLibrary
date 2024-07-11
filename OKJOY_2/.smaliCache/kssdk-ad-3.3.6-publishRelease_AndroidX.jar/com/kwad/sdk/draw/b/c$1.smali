.class Lcom/kwad/sdk/draw/b/c$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/draw/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/c$1;->a:Lcom/kwad/sdk/draw/b/c;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/c$1;->a:Lcom/kwad/sdk/draw/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/c;->a(Lcom/kwad/sdk/draw/b/c;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/c$1;->a:Lcom/kwad/sdk/draw/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/c;->a(Lcom/kwad/sdk/draw/b/c;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/c$1;->a:Lcom/kwad/sdk/draw/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/c;->a(Lcom/kwad/sdk/draw/b/c;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
