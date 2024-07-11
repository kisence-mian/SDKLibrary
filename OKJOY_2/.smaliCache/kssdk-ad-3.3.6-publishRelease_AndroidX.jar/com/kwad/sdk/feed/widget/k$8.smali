.class Lcom/kwad/sdk/feed/widget/k$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/core/video/videoview/a;Lcom/kwad/sdk/core/video/videoview/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/feed/widget/k;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/k;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/k$8;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$8;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->g(Lcom/kwad/sdk/feed/widget/k;)I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$8;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->q(Lcom/kwad/sdk/feed/widget/k;)V

    goto :goto_1f

    :cond_10
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$8;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->g(Lcom/kwad/sdk/feed/widget/k;)I

    move-result p1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1f

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$8;->a:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->p(Lcom/kwad/sdk/feed/widget/k;)V

    :cond_1f
    :goto_1f
    return-void
.end method
