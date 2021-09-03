.class Lcom/taptap/sdk/ui/m;
.super Lcom/taptap/sdk/ui/c;
.source "WebViewHandler.java"


# instance fields
.field private a:Lcom/taptap/sdk/ui/a;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/ui/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taptap/sdk/ui/c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taptap/sdk/ui/m;->a:Lcom/taptap/sdk/ui/a;

    return-void
.end method

.method static synthetic a(Lcom/taptap/sdk/ui/m;)Lcom/taptap/sdk/ui/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taptap/sdk/ui/m;->a:Lcom/taptap/sdk/ui/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/taptap/sdk/LoginRequest;)V
    .registers 5

    .line 2
    new-instance v0, Lcom/taptap/sdk/ui/l;

    invoke-direct {v0}, Lcom/taptap/sdk/ui/l;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/ui/l;->a(Landroid/os/Bundle;)V

    .line 6
    new-instance p1, Lcom/taptap/sdk/ui/m$a;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/ui/m$a;-><init>(Lcom/taptap/sdk/ui/m;)V

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/ui/l;->a(Lcom/taptap/sdk/ui/l$e;)V

    .line 14
    const-string p1, "webview"

    invoke-static {p1}, Lcom/taptap/sdk/tracker/TapTapLoginTrackerHelper;->authorizationOpen(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/taptap/sdk/ui/m;->a:Lcom/taptap/sdk/ui/a;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/ui/a;->a(Lcom/taptap/sdk/ui/d;)V

    return-void
.end method
