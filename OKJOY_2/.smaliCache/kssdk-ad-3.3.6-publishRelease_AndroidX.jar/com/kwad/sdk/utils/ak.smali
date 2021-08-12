.class public Lcom/kwad/sdk/utils/ak;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/webkit/WebView;)Landroid/webkit/WebSettings;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_22

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_22
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_37

    const-string v2, "searchBoxJavaBridge_"

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v2, "accessibilityTraversal"

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_37
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setSaveEnabled(Z)V

    return-object v0
.end method

.method public static b(Landroid/webkit/WebView;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_27

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_3c

    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_3c
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setSaveEnabled(Z)V

    return-void
.end method
