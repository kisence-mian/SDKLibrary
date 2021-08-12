.class public Lcom/kwad/sdk/core/webview/jshandler/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/webview/a;

.field private b:Lcom/kwad/sdk/core/webview/jshandler/b$a;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;Lcom/kwad/sdk/core/webview/jshandler/b$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/b;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/b;->a:Lcom/kwad/sdk/core/webview/a;

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/b;->b:Lcom/kwad/sdk/core/webview/jshandler/b$a;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/b;)Lcom/kwad/sdk/core/webview/jshandler/b$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/b;->b:Lcom/kwad/sdk/core/webview/jshandler/b$a;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "dislike"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/b;->c:Landroid/os/Handler;

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/b$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/webview/jshandler/b$1;-><init>(Lcom/kwad/sdk/core/webview/jshandler/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/b;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
