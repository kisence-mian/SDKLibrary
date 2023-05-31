.class public Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/sigmob/windad/consent/ConsentFormListener;

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Ljava/net/URL;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/net/URL;)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->c:Z

    iput-boolean v1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->d:Z

    iput-boolean v1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->e:Z

    iput-object p2, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->f:Ljava/net/URL;

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->f:Ljava/net/URL;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide valid app privacy policy url to create a ConsentForm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Lcom/sigmob/windad/consent/ConsentFormListener;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->b:Lcom/sigmob/windad/consent/ConsentFormListener;

    return-object v0
.end method

.method static synthetic c(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->f:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic g(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sigmob/windad/consent/WindAdConsentForm;
    .registers 3

    new-instance v0, Lcom/sigmob/windad/consent/WindAdConsentForm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sigmob/windad/consent/WindAdConsentForm;-><init>(Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;Lcom/sigmob/windad/consent/WindAdConsentForm$1;)V

    return-object v0
.end method

.method public withAdFreeOption(Z)Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->e:Z

    return-object p0
.end method

.method public withListener(Lcom/sigmob/windad/consent/ConsentFormListener;)Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->b:Lcom/sigmob/windad/consent/ConsentFormListener;

    return-object p0
.end method

.method public withNonPersonalizedAdsOption(Z)Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->d:Z

    return-object p0
.end method

.method public withPersonalizedAdsOption(Z)Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/consent/WindAdConsentForm$Builder;->c:Z

    return-object p0
.end method
