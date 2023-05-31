.class Lcom/sigmob/windad/consent/WindAdConsentForm$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/consent/WindAdConsentForm;->show()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/consent/WindAdConsentForm;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/consent/WindAdConsentForm;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$4;->a:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$4;->a:Lcom/sigmob/windad/consent/WindAdConsentForm;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentForm;->a(Lcom/sigmob/windad/consent/WindAdConsentForm;)Lcom/sigmob/windad/consent/ConsentFormListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ConsentFormListener;->onConsentFormOpened()V

    return-void
.end method
