.class Lcom/kwad/sdk/c/h/e/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/h/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/e/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/h/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/b$c;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/c/h/d/c;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$c;->a:Lcom/kwad/sdk/c/h/e/b;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;I)I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$c;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->b(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b$c;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v1}, Lcom/kwad/sdk/c/h/e/b;->a(Lcom/kwad/sdk/c/h/e/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "onCompletion \u2014\u2014> STATE_COMPLETED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b$c;->a:Lcom/kwad/sdk/c/h/e/b;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/e/b;->i(Lcom/kwad/sdk/c/h/e/b;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    return-void
.end method
