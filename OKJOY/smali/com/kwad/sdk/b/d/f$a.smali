.class Lcom/kwad/sdk/b/d/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/b/d/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/d/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/d/f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/d/f$a;->a:Lcom/kwad/sdk/b/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/d/f$a;->a:Lcom/kwad/sdk/b/d/f;

    iget-object v0, v0, Lcom/kwad/sdk/b/d/f;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/g$b;->b(I)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/f$a;->a:Lcom/kwad/sdk/b/d/f;

    iget-object v0, v0, Lcom/kwad/sdk/b/d/f;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/kwad/sdk/c/f/g$b;->a(I)V

    return-void
.end method
