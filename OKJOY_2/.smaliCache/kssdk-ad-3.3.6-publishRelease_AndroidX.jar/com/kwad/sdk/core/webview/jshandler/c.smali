.class public Lcom/kwad/sdk/core/webview/jshandler/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/c$a;,
        Lcom/kwad/sdk/core/webview/jshandler/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/webview/a;

.field private b:Lcom/kwad/sdk/core/webview/jshandler/c$b;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/c;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/c;->a:Lcom/kwad/sdk/core/webview/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "getContainerLimit"

    return-object v0
.end method

.method public a(Lcom/kwad/sdk/core/webview/jshandler/c$b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/c;->b:Lcom/kwad/sdk/core/webview/jshandler/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 4

    new-instance p1, Lcom/kwad/sdk/core/webview/jshandler/c$a;

    invoke-direct {p1}, Lcom/kwad/sdk/core/webview/jshandler/c$a;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/c;->b:Lcom/kwad/sdk/core/webview/jshandler/c$b;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/webview/jshandler/c$b;->a(Lcom/kwad/sdk/core/webview/jshandler/c$a;)V

    goto :goto_21

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/c;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/webview/jshandler/c$a;->a:I

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/c;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/webview/jshandler/c$a;->b:I

    :goto_21
    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
