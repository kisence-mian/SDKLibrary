.class Lcom/kwad/sdk/draw/b/b/c$8;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/b/b/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/b/c$8;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b/c$8;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b/c;->e(Lcom/kwad/sdk/draw/b/b/c;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b/c$8;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b/c;->h(Lcom/kwad/sdk/draw/b/b/c;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b/c$8;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b/c;->g(Lcom/kwad/sdk/draw/b/b/c;)Lcom/kwad/sdk/core/webview/jshandler/n;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b/c$8;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b/c;->g(Lcom/kwad/sdk/draw/b/b/c;)Lcom/kwad/sdk/core/webview/jshandler/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/jshandler/n;->f()V

    :cond_28
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b/c$8;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b/c;->g(Lcom/kwad/sdk/draw/b/b/c;)Lcom/kwad/sdk/core/webview/jshandler/n;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b/c$8;->a:Lcom/kwad/sdk/draw/b/b/c;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b/c;->g(Lcom/kwad/sdk/draw/b/b/c;)Lcom/kwad/sdk/core/webview/jshandler/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/jshandler/n;->e()V

    :cond_14
    return-void
.end method
