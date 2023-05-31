.class Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/draw/view/DrawCardApp$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$f;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$f;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->a(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;I)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$f;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->g(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView$f;->a:Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;->h(Lcom/kwad/sdk/contentalliance/detail/ad/view/AdBottomView;)Lcom/kwad/sdk/draw/view/DrawCardApp;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
