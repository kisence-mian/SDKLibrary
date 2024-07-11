.class public Lcom/kwad/sdk/core/webview/jshandler/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/webview/a;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/webview/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/e;->a:Lcom/kwad/sdk/core/webview/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "getKsAdData"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/core/webview/jshandler/e;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object p1, p1, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez p1, :cond_d

    const/4 p1, -0x1

    const-string v0, "native adTemplate is null"

    invoke-interface {p2, p1, v0}, Lcom/kwad/sdk/core/webview/a/c;->a(ILjava/lang/String;)V

    return-void

    :cond_d
    new-instance p1, Lcom/kwad/sdk/core/webview/jshandler/e$a;

    invoke-direct {p1}, Lcom/kwad/sdk/core/webview/jshandler/e$a;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/core/webview/jshandler/e;->a:Lcom/kwad/sdk/core/webview/a;

    iget-object v0, v0, Lcom/kwad/sdk/core/webview/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/webview/jshandler/e$a;->a(Lcom/kwad/sdk/core/webview/jshandler/e$a;Ljava/util/List;)Ljava/util/List;

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
