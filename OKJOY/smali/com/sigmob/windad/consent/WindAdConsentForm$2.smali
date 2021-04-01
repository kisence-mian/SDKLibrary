.class Lcom/sigmob/windad/consent/WindAdConsentForm$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/consent/WindAdConsentForm;-><init>(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)V
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/sigmob/windad/consent/WindAdConsentForm;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/consent/WindAdConsentForm;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->a:Z

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "action"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_58

    :cond_22
    :goto_22
    packed-switch v0, :pswitch_data_66

    :goto_25
    return-void

    :sswitch_26
    const-string v2, "load_complete"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move v0, v1

    goto :goto_22

    :sswitch_30
    const-string v6, "dismiss"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v0, v2

    goto :goto_22

    :sswitch_3a
    const-string v2, "browser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v0, 0x2

    goto :goto_22

    :pswitch_44
    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0, v4}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;Ljava/lang/String;)V

    goto :goto_25

    :pswitch_4a
    iput-boolean v1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->a:Z

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0, v4}, Lcom/sigmob/windad/consent/WindAdConsentForm;->b(Lcom/sigmob/windad/consent/WindAdConsentForm;Ljava/lang/String;)V

    goto :goto_25

    :pswitch_52
    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0, v5}, Lcom/sigmob/windad/consent/WindAdConsentForm;->c(Lcom/sigmob/windad/consent/WindAdConsentForm;Ljava/lang/String;)V

    goto :goto_25

    :sswitch_data_58
    .sparse-switch
        -0x51b03f8e -> :sswitch_26
        0x8ff2b28 -> :sswitch_3a
        0x63a3b28a -> :sswitch_30
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_44
        :pswitch_4a
        :pswitch_52
    .end packed-switch
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0, p2}, Lcom/sigmob/windad/consent/WindAdConsentForm;->d(Lcom/sigmob/windad/consent/WindAdConsentForm;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p2}, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->a(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->a:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0, p1}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;Landroid/webkit/WebView;)V

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    sget-object v1, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    invoke-static {v0, v1}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;)Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;)Lcom/sigmob/windad/consent/ConsentFormListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Errorcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    sget-object v1, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    invoke-static {v0, v1}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;)Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3f

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;)Lcom/sigmob/windad/consent/ConsentFormListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Errorcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    :goto_3e
    return-void

    :cond_3f
    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;)Lcom/sigmob/windad/consent/ConsentFormListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Errorcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v1, v0}, Lcom/sigmob/windad/consent/WindAdConsentForm;->d(Lcom/sigmob/windad/consent/WindAdConsentForm;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0, v0}, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->b:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0, p2}, Lcom/sigmob/windad/consent/WindAdConsentForm;->d(Lcom/sigmob/windad/consent/WindAdConsentForm;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p2}, Lcom/sigmob/windad/consent/WindAdConsentForm$2;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
