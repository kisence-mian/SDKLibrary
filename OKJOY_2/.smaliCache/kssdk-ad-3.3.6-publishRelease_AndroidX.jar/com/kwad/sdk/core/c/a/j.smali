.class public Lcom/kwad/sdk/core/c/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/c<",
        "Lcom/kwad/sdk/core/report/o$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/report/o$a;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p1, Lcom/kwad/sdk/core/report/o$a;->a:I

    const-string v2, "photoPlaySecond"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p1, Lcom/kwad/sdk/core/report/o$a;->b:I

    const-string v2, "itemClickType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p1, Lcom/kwad/sdk/core/report/o$a;->c:I

    const-string v2, "itemCloseType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p1, Lcom/kwad/sdk/core/report/o$a;->d:I

    const-string v2, "elementType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/kwad/sdk/core/report/o$a;->f:Ljava/lang/String;

    const-string v2, "payload"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/kwad/sdk/core/report/o$a;->g:I

    const-string v2, "deeplinkType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p1, Lcom/kwad/sdk/core/report/o$a;->h:I

    const-string v2, "downloadSource"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p1, Lcom/kwad/sdk/core/report/o$a;->i:I

    const-string v2, "isPackageChanged"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/kwad/sdk/core/report/o$a;->j:Ljava/lang/String;

    const-string v2, "installedFrom"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/report/o$a;->k:Ljava/lang/String;

    const-string v2, "downloadFailedReason"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/kwad/sdk/core/report/o$a;->l:I

    const-string v2, "isChangedEndcard"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/kwad/sdk/core/report/o$a;->m:Ljava/lang/String;

    const-string v2, "serverPackageName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/report/o$a;->n:Ljava/lang/String;

    const-string v2, "installedPackageName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/kwad/sdk/core/report/o$a;->o:I

    const-string v2, "closeButtonImpressionTime"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p1, Lcom/kwad/sdk/core/report/o$a;->p:I

    const-string v2, "closeButtonClickTime"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget p1, p1, Lcom/kwad/sdk/core/report/o$a;->q:I

    const-string v1, "downloadStatus"

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;)Lorg/json/JSONObject;
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/report/o$a;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/c/a/j;->a(Lcom/kwad/sdk/core/report/o$a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "photoPlaySecond"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/o$a;->a:I

    const-string v0, "itemClickType"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/o$a;->b:I

    const-string v0, "itemCloseType"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/o$a;->c:I

    const-string v0, "elementType"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/o$a;->d:I

    const-string v0, "payload"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/report/o$a;->f:Ljava/lang/String;

    const-string v0, "deeplinkType"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/o$a;->g:I

    const-string v0, "downloadSource"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/o$a;->h:I

    const-string v0, "isPackageChanged"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/o$a;->i:I

    const-string v0, "installedFrom"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/report/o$a;->j:Ljava/lang/String;

    const-string v0, "downloadFailedReason"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/report/o$a;->k:Ljava/lang/String;

    const-string v0, "isChangedEndcard"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/o$a;->l:I

    const-string v0, "serverPackageName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/report/o$a;->m:Ljava/lang/String;

    const-string v0, "installedPackageName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/report/o$a;->n:Ljava/lang/String;

    const-string v0, "closeButtonImpressionTime"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/o$a;->o:I

    const-string v0, "closeButtonClickTime"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/report/o$a;->p:I

    const-string v0, "downloadStatus"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/kwad/sdk/core/report/o$a;->q:I

    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;Lorg/json/JSONObject;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/report/o$a;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/c/a/j;->a(Lcom/kwad/sdk/core/report/o$a;Lorg/json/JSONObject;)V

    return-void
.end method
