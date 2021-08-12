.class public Lcom/kwad/sdk/utils/al;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_f

    new-instance v0, Lcom/kwad/sdk/utils/al$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/sdk/utils/al$1;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/ae;->a(Ljava/lang/Runnable;)V

    goto :goto_18

    :cond_f
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    if-eqz p2, :cond_18

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/utils/al;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
