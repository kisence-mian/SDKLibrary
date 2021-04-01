.class Lcom/kwad/sdk/b/c/f/b/a$a;
.super Lcom/kwad/sdk/b/e/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/c/f/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/c/f/b/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/c/f/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/c/f/b/a$a;->a:Lcom/kwad/sdk/b/c/f/b/a;

    invoke-direct {p0}, Lcom/kwad/sdk/b/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/a$a;->a:Lcom/kwad/sdk/b/c/f/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/f/b/a;->a(Lcom/kwad/sdk/b/c/f/b/a;)Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->b()V

    return-void
.end method

.method public c()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->c()V

    return-void
.end method
