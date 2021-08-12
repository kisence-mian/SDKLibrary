.class public Lcom/kwad/sdk/core/scene/EntryPackage;
.super Lcom/kwad/sdk/core/scene/URLPackage;


# static fields
.field private static final serialVersionUID:J = 0x7283f5c8c609986bL


# instance fields
.field public entryId:Ljava/lang/String;

.field public entryPageSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/scene/URLPackage;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/kwad/sdk/core/scene/EntryPackage;->entryPageSource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/scene/URLPackage;-><init>(Ljava/lang/String;I)V

    const-string p1, "unknown"

    iput-object p1, p0, Lcom/kwad/sdk/core/scene/EntryPackage;->entryPageSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/scene/URLPackage;->parseJson(Lorg/json/JSONObject;)V

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string v0, "entryPageSource"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/scene/EntryPackage;->entryPageSource:Ljava/lang/String;

    const-string v0, "entryId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/scene/EntryPackage;->entryId:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/core/scene/URLPackage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/scene/EntryPackage;->entryPageSource:Ljava/lang/String;

    const-string v2, "entryPageSource"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/scene/EntryPackage;->entryId:Ljava/lang/String;

    const-string v2, "entryId"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
