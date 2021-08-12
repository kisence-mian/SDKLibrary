.class public Lcom/kwad/sdk/core/webview/jshandler/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/jshandler/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "getDeviceInfo"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/a/c;)V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/core/webview/jshandler/d$a;->a()Lcom/kwad/sdk/core/webview/jshandler/d$a;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/b;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
