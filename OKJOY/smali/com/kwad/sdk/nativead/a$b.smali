.class Lcom/kwad/sdk/nativead/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/nativead/a;->getVideoView(Landroid/content/Context;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/e/b;

.field final synthetic b:Lcom/kwad/sdk/nativead/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/nativead/a;Lcom/kwad/sdk/c/h/e/b;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/nativead/a$b;->b:Lcom/kwad/sdk/nativead/a;

    iput-object p2, p0, Lcom/kwad/sdk/nativead/a$b;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$b;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/h/e/b;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$b;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/h/e/b;->start()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$b;->b:Lcom/kwad/sdk/nativead/a;

    invoke-static {}, Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/e/g$a;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/nativead/a;->a(Lcom/kwad/sdk/nativead/a;Landroid/view/View;Lcom/kwad/sdk/e/g$a;)V

    goto :goto_d
.end method
