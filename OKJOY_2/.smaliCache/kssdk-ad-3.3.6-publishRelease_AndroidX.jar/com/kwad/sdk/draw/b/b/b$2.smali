.class Lcom/kwad/sdk/draw/b/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/draw/view/playcard/DrawCardApp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/b/b/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/b/b$2;->a:Lcom/kwad/sdk/draw/b/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b$2;->a:Lcom/kwad/sdk/draw/b/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b/b;->b(Lcom/kwad/sdk/draw/b/b/b;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/b/b$2;->a:Lcom/kwad/sdk/draw/b/b/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/b/b;->c(Lcom/kwad/sdk/draw/b/b/b;)V

    return-void
.end method
