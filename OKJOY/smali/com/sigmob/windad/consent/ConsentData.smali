.class Lcom/sigmob/windad/consent/ConsentData;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Lcom/sigmob/windad/consent/ConsentStatus;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/consent/ConsentData;->a:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/windad/consent/ConsentStatus;->UNKNOWN:Lcom/sigmob/windad/consent/ConsentStatus;

    iput-object v0, p0, Lcom/sigmob/windad/consent/ConsentData;->b:Lcom/sigmob/windad/consent/ConsentStatus;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/consent/ConsentData;->d:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method a()Lcom/sigmob/windad/consent/ConsentStatus;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/ConsentData;->b:Lcom/sigmob/windad/consent/ConsentStatus;

    return-object v0
.end method

.method a(Lcom/sigmob/windad/consent/ConsentStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/consent/ConsentData;->b:Lcom/sigmob/windad/consent/ConsentStatus;

    return-void
.end method

.method a(Ljava/lang/Boolean;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/sigmob/windad/consent/ConsentData;->a:Ljava/lang/Boolean;

    :cond_4
    return-void
.end method

.method b()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/ConsentData;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/ConsentData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isUserPrefersAdFree()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/ConsentData;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/consent/ConsentData;->c:Ljava/lang/String;

    return-void
.end method

.method public setUserPrefersAdFree(Ljava/lang/Boolean;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/sigmob/windad/consent/ConsentData;->d:Ljava/lang/Boolean;

    :cond_4
    return-void
.end method
