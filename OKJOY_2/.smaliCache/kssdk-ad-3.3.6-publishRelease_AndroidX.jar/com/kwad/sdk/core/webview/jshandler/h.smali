.class public Lcom/kwad/sdk/core/webview/jshandler/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/h$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/kwad/sdk/core/webview/jshandler/h$a;

.field private c:Lcom/kwad/sdk/core/webview/a/c;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/jshandler/h$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/h;->b:Lcom/kwad/sdk/core/webview/jshandler/h$a;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/h;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/webview/jshandler/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/webview/jshandler/h;->c()V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/core/webview/jshandler/h;)Lcom/kwad/sdk/core/webview/a/c;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/webview/jshandler/h;->c:Lcom/kwad/sdk/core/webview/a/c;

    return-object p0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/h;->b:Lcom/kwad/sdk/core/webview/jshandler/h$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/kwad/sdk/core/webview/jshandler/h$a;->a()V

    :cond_7
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "hide"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 3

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/h;->c:Lcom/kwad/sdk/core/webview/a/c;

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/h;->a:Landroid/os/Handler;

    new-instance p2, Lcom/kwad/sdk/core/webview/jshandler/h$1;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/core/webview/jshandler/h$1;-><init>(Lcom/kwad/sdk/core/webview/jshandler/h;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/h;->b:Lcom/kwad/sdk/core/webview/jshandler/h$a;

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/h;->c:Lcom/kwad/sdk/core/webview/a/c;

    iget-object v1, p0, Lcom/kwad/sdk/core/webview/jshandler/h;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
