.class public final Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;
.super Ljava/lang/Object;


# instance fields
.field private final resourceUrl:Ljava/net/URL;

.field private final vendorKey:Ljava/lang/String;

.field private final verificationParameters:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->vendorKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->resourceUrl:Ljava/net/URL;

    iput-object p3, p0, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->verificationParameters:Ljava/lang/String;

    return-void
.end method

.method public static createVerificationScriptResourceWithParameters(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;
    .registers 4

    const-string v0, "VendorKey is null or empty"

    invoke-static {p0, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ResourceURL is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationParameters is null or empty"

    invoke-static {p2, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;

    invoke-direct {v0, p0, p1, p2}, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createVerificationScriptResourceWithoutParameters(Ljava/lang/String;Ljava/net/URL;)Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;
    .registers 4

    const-string v0, "VendorKey is null or empty"

    invoke-static {p0, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ResourceURL is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createVerificationScriptResourceWithoutParameters(Ljava/net/URL;)Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;
    .registers 3

    const/4 v1, 0x0

    const-string v0, "ResourceURL is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;

    invoke-direct {v0, v1, p0, v1}, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getResourceUrl()Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->resourceUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getVendorKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->vendorKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationParameters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->verificationParameters:Ljava/lang/String;

    return-object v0
.end method
