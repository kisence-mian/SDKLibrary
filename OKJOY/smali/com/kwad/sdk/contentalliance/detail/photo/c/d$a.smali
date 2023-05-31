.class Lcom/kwad/sdk/contentalliance/detail/photo/c/d$a;
.super Lcom/kwad/sdk/b/e/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/c/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/d;

    invoke-direct {p0}, Lcom/kwad/sdk/b/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/d$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/d;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->c()V

    return-void
.end method
