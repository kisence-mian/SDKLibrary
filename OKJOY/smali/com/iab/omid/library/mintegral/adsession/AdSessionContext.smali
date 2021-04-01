.class public final Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;
.super Ljava/lang/Object;


# instance fields
.field private final adSessionContextType:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

.field private final customReferenceData:Ljava/lang/String;

.field private final omidJsScriptContent:Ljava/lang/String;

.field private final partner:Lcom/iab/omid/library/mintegral/adsession/Partner;

.field private final verificationScriptResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/mintegral/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/mintegral/adsession/Partner;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->verificationScriptResources:Ljava/util/List;

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->partner:Lcom/iab/omid/library/mintegral/adsession/Partner;

    iput-object p2, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->omidJsScriptContent:Ljava/lang/String;

    if-eqz p4, :cond_1e

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->verificationScriptResources:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->adSessionContextType:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    :goto_1b
    iput-object p5, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->customReferenceData:Ljava/lang/String;

    return-void

    :cond_1e
    sget-object v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->adSessionContextType:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    goto :goto_1b
.end method

.method public static createHtmlAdSessionContext(Lcom/iab/omid/library/mintegral/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;
    .registers 9

    const/4 v3, 0x0

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_14

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p2, v0, v1}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_14
    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;-><init>(Lcom/iab/omid/library/mintegral/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createNativeAdSessionContext(Lcom/iab/omid/library/mintegral/adsession/Partner;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/mintegral/adsession/Partner;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;"
        }
    .end annotation

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OM SDK JS script content is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationScriptResources is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_18

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p3, v0, v1}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_18
    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;-><init>(Lcom/iab/omid/library/mintegral/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAdSessionContextType()Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->adSessionContextType:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    return-object v0
.end method

.method public getCustomReferenceData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->customReferenceData:Ljava/lang/String;

    return-object v0
.end method

.method public getOmidJsScriptContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->omidJsScriptContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPartner()Lcom/iab/omid/library/mintegral/adsession/Partner;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->partner:Lcom/iab/omid/library/mintegral/adsession/Partner;

    return-object v0
.end method

.method public getVerificationScriptResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->verificationScriptResources:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->webView:Landroid/webkit/WebView;

    return-object v0
.end method
