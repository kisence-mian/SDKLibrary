.class Lcom/kwad/sdk/b/c/e$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/c/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/c/e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/c/e$c;->a:Lcom/kwad/sdk/b/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$c;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->j(Lcom/kwad/sdk/b/c/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$c;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->g(Lcom/kwad/sdk/b/c/e;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
