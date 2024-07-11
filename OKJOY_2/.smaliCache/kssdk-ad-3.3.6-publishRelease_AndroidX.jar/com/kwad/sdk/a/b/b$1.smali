.class Lcom/kwad/sdk/a/b/b$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/b/b$1;->a:Lcom/kwad/sdk/a/b/b;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->d()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/b$1;->a:Lcom/kwad/sdk/a/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/b;->a(Lcom/kwad/sdk/a/b/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/a/b/b$1;->a:Lcom/kwad/sdk/a/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/b;->a(Lcom/kwad/sdk/a/b/b;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1a
    return-void
.end method
