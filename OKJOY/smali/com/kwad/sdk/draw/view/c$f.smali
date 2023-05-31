.class Lcom/kwad/sdk/draw/view/c$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/draw/view/DrawCardApp$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/view/c;->s()V
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

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/c$f;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$f;->a:Lcom/kwad/sdk/draw/view/c;

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/kwad/sdk/draw/view/c;->a(Lcom/kwad/sdk/draw/view/c;I)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$f;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->i(Lcom/kwad/sdk/draw/view/c;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/c$f;->a:Lcom/kwad/sdk/draw/view/c;

    invoke-static {v0}, Lcom/kwad/sdk/draw/view/c;->j(Lcom/kwad/sdk/draw/view/c;)Lcom/kwad/sdk/draw/view/DrawCardApp;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
