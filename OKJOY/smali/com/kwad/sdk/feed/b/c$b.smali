.class Lcom/kwad/sdk/feed/b/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/b/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/e/b;

.field final synthetic b:Lcom/kwad/sdk/feed/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/b/c;Lcom/kwad/sdk/c/h/e/b;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/feed/b/c$b;->b:Lcom/kwad/sdk/feed/b/c;

    iput-object p2, p0, Lcom/kwad/sdk/feed/b/c$b;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/c$b;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/h/e/b;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/c$b;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/h/e/b;->start()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/feed/b/c$b;->b:Lcom/kwad/sdk/feed/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/feed/b/c;->c(Lcom/kwad/sdk/feed/b/c;)V

    goto :goto_d
.end method
