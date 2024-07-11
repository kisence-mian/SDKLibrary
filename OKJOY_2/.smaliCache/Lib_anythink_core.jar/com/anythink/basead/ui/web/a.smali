.class final Lcom/anythink/basead/ui/web/a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Lcom/anythink/basead/ui/web/WebLandPageActivity;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/anythink/basead/ui/web/a;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    .line 34
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 92
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/anythink/basead/ui/web/a;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->b(Z)V

    .line 95
    iget-object p2, p0, Lcom/anythink/basead/ui/web/a;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Z)V

    .line 96
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 83
    iget-object p1, p0, Lcom/anythink/basead/ui/web/a;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a()Lcom/anythink/basead/ui/web/WebProgressBarView;

    move-result-object p1

    .line 84
    if-eqz p1, :cond_12

    .line 85
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/web/WebProgressBarView;->setVisibility(I)V

    .line 86
    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/web/WebProgressBarView;->setProgress(I)V

    .line 88
    :cond_12
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 39
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 3

    .line 101
    iget-object p1, p0, Lcom/anythink/basead/ui/web/a;->a:Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->finish()V

    .line 102
    const/4 p1, 0x1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6b

    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6b

    .line 46
    :cond_10
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, v1}, Lcom/anythink/basead/a/g;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 49
    return v2

    .line 53
    :cond_1c
    :try_start_1c
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_69

    const-string v4, "http"

    if-eqz v3, :cond_4a

    .line 56
    :try_start_2e
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 57
    const-string v3, "browser_fallback_url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 59
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_49

    .line 60
    return v2

    .line 64
    :cond_48
    goto :goto_4a

    .line 62
    :catchall_49
    move-exception p1

    .line 67
    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 68
    const-string p1, ""

    const-string p2, "The App does not exist."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_69

    .line 69
    return v2

    .line 71
    :cond_68
    return v1

    .line 72
    :catchall_69
    move-exception p1

    .line 75
    return v1

    .line 44
    :cond_6b
    :goto_6b
    return v1
.end method
