.class Lcom/kwad/sdk/b/d/g/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/d/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/d/g/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/d/g/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/d/g/c$a;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$a;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->a(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$a;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->a(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
