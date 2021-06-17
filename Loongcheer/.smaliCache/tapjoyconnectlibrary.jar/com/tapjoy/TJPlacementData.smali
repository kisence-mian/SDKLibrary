.class public Lcom/tapjoy/TJPlacementData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->p:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->q:Z

    .line 42
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJPlacementData;->setKey(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/tapjoy/TJPlacementData;->updateUrl(Ljava/lang/String;)V

    .line 44
    const-string v0, "app"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setPlacementType(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "httpResponse"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->p:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->q:Z

    .line 48
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJPlacementData;->setBaseURL(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    .line 50
    nop

    .line 1080
    iput-object p3, p0, Lcom/tapjoy/TJPlacementData;->n:Ljava/lang/String;

    .line 1081
    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->p:Z

    .line 51
    const-string v0, "app"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setPlacementType(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getAuctionMediationURL()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseURL()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackID()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getContentViewId()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponse()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/tapjoy/TJPlacementData;->g:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationURL()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectURL()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/tapjoy/TJPlacementData;->j:I

    return v0
.end method

.method public hasProgressSpinner()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->k:Z

    return v0
.end method

.method public isBaseActivity()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->p:Z

    return v0
.end method

.method public isPreloadDisabled()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->q:Z

    return v0
.end method

.method public isPrerenderingRequested()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    return v0
.end method

.method public resetPlacementRequestData()V
    .registers 3

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setHttpStatusCode(I)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setRedirectURL(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setHasProgressSpinner(Z)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setPrerenderingRequested(Z)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setPreloadDisabled(Z)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setContentViewId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setHandleDismissOnPause(Z)V

    .line 66
    return-void
.end method

.method public setAuctionMediationURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "mediationURL"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->e:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "baseURL"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->c:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setContentViewId(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentViewId"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->o:Ljava/lang/String;

    return-void
.end method

.method public setHandleDismissOnPause(Z)V
    .registers 2
    .param p1, "shouldHandleDismissOnPause"    # Z

    .line 207
    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->r:Z

    .line 208
    return-void
.end method

.method public setHasProgressSpinner(Z)V
    .registers 2
    .param p1, "hasProgressSpinner"    # Z

    .line 131
    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->k:Z

    .line 132
    return-void
.end method

.method public setHttpResponse(Ljava/lang/String;)V
    .registers 2
    .param p1, "httpResponse"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->f:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setHttpStatusCode(I)V
    .registers 2
    .param p1, "httpStatusCode"    # I

    .line 111
    iput p1, p0, Lcom/tapjoy/TJPlacementData;->g:I

    .line 112
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    return-void
.end method

.method public setMediationURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "mediationURL"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->d:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .registers 2
    .param p1, "placementName"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->h:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPlacementType(Ljava/lang/String;)V
    .registers 2
    .param p1, "placementType"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->i:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setPreloadDisabled(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 183
    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->q:Z

    .line 184
    return-void
.end method

.method public setPrerenderingRequested(Z)V
    .registers 2
    .param p1, "prerenderingRequested"    # Z

    .line 199
    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    .line 200
    return-void
.end method

.method public setRedirectURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "redirectURL"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->l:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setViewType(I)V
    .registers 2
    .param p1, "viewType"    # I

    .line 123
    iput p1, p0, Lcom/tapjoy/TJPlacementData;->j:I

    .line 124
    return-void
.end method

.method public shouldHandleDismissOnPause()Z
    .registers 2

    .line 214
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->r:Z

    return v0
.end method

.method public updateUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .line 69
    nop

    .line 1089
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->b:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 71
    const/4 v0, 0x0

    const/16 v1, 0x2f

    const-string v2, "//"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setBaseURL(Ljava/lang/String;)V

    .line 73
    :cond_1f
    return-void
.end method
