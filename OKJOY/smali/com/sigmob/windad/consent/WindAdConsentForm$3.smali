.class Lcom/sigmob/windad/consent/WindAdConsentForm$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/consent/ConsentInfoUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/consent/WindAdConsentForm;->load()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/consent/WindAdConsentForm;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/consent/WindAdConsentForm;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$3;->a:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentInfoUpdated(Lcom/sigmob/windad/consent/ConsentStatus;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->UNKNOWN:Lcom/sigmob/windad/consent/ConsentStatus;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$3;->a:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentForm;->b(Lcom/sigmob/windad/consent/WindAdConsentForm;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "file:///android_asset/consentform.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$3;->a:Lcom/sigmob/windad/consent/WindAdConsentForm;

    sget-object v1, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    invoke-static {v0, v1}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;)Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$3;->a:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;)Lcom/sigmob/windad/consent/ConsentFormListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$3;->a:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;)Lcom/sigmob/windad/consent/ConsentFormListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormClosed(Lcom/sigmob/windad/consent/ConsentStatus;Ljava/lang/Boolean;)V

    goto :goto_f
.end method

.method public onFailedToUpdateConsentInfo(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$3;->a:Lcom/sigmob/windad/consent/WindAdConsentForm;

    sget-object v1, Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;->NOT_READY:Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    invoke-static {v0, v1}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;)Lcom/sigmob/windad/consent/WindAdConsentForm$LoadState;

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$3;->a:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;)Lcom/sigmob/windad/consent/ConsentFormListener;

    move-result-object v0

    const-string v1, "requestConsentInfoUpdate failed"

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    return-void
.end method
