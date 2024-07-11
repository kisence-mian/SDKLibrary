.class public Lcom/kwad/sdk/core/webview/jshandler/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/p$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/core/webview/a/c;

.field private b:Lcom/kwad/sdk/core/webview/jshandler/p$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/webview/jshandler/p$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/webview/jshandler/p$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/p;->b:Lcom/kwad/sdk/core/webview/jshandler/p$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "registerVideoListener"

    return-object v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/p;->a:Lcom/kwad/sdk/core/webview/a/c;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/p;->b:Lcom/kwad/sdk/core/webview/jshandler/p$a;

    iput p1, v0, Lcom/kwad/sdk/core/webview/jshandler/p$a;->a:I

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/p;->a:Lcom/kwad/sdk/core/webview/a/c;

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/p;->b:Lcom/kwad/sdk/core/webview/jshandler/p$a;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 3

    iput-object p2, p0, Lcom/kwad/sdk/core/webview/jshandler/p;->a:Lcom/kwad/sdk/core/webview/a/c;

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/p;->a:Lcom/kwad/sdk/core/webview/a/c;

    return-void
.end method
