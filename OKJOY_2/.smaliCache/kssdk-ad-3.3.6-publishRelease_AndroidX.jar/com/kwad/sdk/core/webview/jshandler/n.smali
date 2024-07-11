.class public Lcom/kwad/sdk/core/webview/jshandler/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/core/webview/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/n;->a:Lcom/kwad/sdk/core/webview/a/c;

    if-eqz v0, :cond_11

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/n$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/n$a;-><init>()V

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/webview/jshandler/n$a;->a(Lcom/kwad/sdk/core/webview/jshandler/n$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/n;->a:Lcom/kwad/sdk/core/webview/a/c;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "registerLifecycleListener"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 3

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/n;->a:Lcom/kwad/sdk/core/webview/a/c;

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/n;->a:Lcom/kwad/sdk/core/webview/a/c;

    return-void
.end method

.method public c()V
    .registers 2

    const-string v0, "showStart"

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/webview/jshandler/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 2

    const-string v0, "showEnd"

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/webview/jshandler/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .registers 2

    const-string v0, "hideStart"

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/webview/jshandler/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 2

    const-string v0, "hideEnd"

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/webview/jshandler/n;->a(Ljava/lang/String;)V

    return-void
.end method
