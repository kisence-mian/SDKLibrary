.class public Lcom/kwad/sdk/core/webview/jshandler/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# instance fields
.field private a:Lcom/kwad/sdk/core/webview/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "registerDeeplinkListener"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 3

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/m;->a:Lcom/kwad/sdk/core/webview/a/c;

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/m;->a:Lcom/kwad/sdk/core/webview/a/c;

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/m;->a:Lcom/kwad/sdk/core/webview/a/c;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    :cond_8
    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/m;->a:Lcom/kwad/sdk/core/webview/a/c;

    if-eqz v0, :cond_a

    const/4 v1, -0x1

    const-string v2, "deep link error"

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/webview/a/c;->a(ILjava/lang/String;)V

    :cond_a
    return-void
.end method
