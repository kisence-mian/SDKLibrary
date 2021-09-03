.class Lcom/taptap/sdk/ui/l$d;
.super Landroid/webkit/WebViewClient;
.source "WebBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/ui/l;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/ui/l;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/ui/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/ui/l$d;->a:Lcom/taptap/sdk/ui/l;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/taptap/sdk/ui/l$d;->a:Lcom/taptap/sdk/ui/l;

    invoke-static {p1}, Lcom/taptap/sdk/ui/l;->c(Lcom/taptap/sdk/ui/l;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/taptap/sdk/ui/l$d;->a:Lcom/taptap/sdk/ui/l;

    invoke-static {p1}, Lcom/taptap/sdk/ui/l;->d(Lcom/taptap/sdk/ui/l;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tapoauth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    const-string p2, "error"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    const-string p2, "code"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v6, 0x1

    if-eqz p1, :cond_38

    .line 7
    iget-object p1, p0, Lcom/taptap/sdk/ui/l$d;->a:Lcom/taptap/sdk/ui/l;

    invoke-static {p1}, Lcom/taptap/sdk/ui/l;->a(Lcom/taptap/sdk/ui/l;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/taptap/sdk/ui/l$d$a;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/ui/l$d$a;-><init>(Lcom/taptap/sdk/ui/l$d;)V

    invoke-static {p2, p1, v2, v0}, Lcom/taptap/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/f$b;)V

    return v6

    .line 18
    :cond_38
    new-instance p1, Lcom/taptap/sdk/LoginResponse;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/LoginResponse;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/AccessToken;Z)V

    .line 19
    iget-object p2, p0, Lcom/taptap/sdk/ui/l$d;->a:Lcom/taptap/sdk/ui/l;

    invoke-static {p2}, Lcom/taptap/sdk/ui/l;->b(Lcom/taptap/sdk/ui/l;)Lcom/taptap/sdk/ui/l$e;

    move-result-object p2

    if-eqz p2, :cond_52

    .line 20
    iget-object p2, p0, Lcom/taptap/sdk/ui/l$d;->a:Lcom/taptap/sdk/ui/l;

    invoke-static {p2}, Lcom/taptap/sdk/ui/l;->b(Lcom/taptap/sdk/ui/l;)Lcom/taptap/sdk/ui/l$e;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/taptap/sdk/ui/l$e;->a(Lcom/taptap/sdk/LoginResponse;)V

    :cond_52
    return v6

    :cond_53
    const/4 p1, 0x0

    return p1
.end method
