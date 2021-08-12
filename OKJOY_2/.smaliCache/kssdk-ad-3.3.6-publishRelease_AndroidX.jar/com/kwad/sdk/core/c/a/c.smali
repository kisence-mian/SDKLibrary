.class public Lcom/kwad/sdk/core/c/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/c<",
        "Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;",
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
.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;)Lorg/json/JSONObject;
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/c/a/c;->a(Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;)Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->creativeId:J

    const-string v3, "creativeId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adSourceType:I

    const-string v2, "adSourceType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adDescription:Ljava/lang/String;

    const-string v2, "adDescription"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adMarkIcon:Ljava/lang/String;

    const-string v2, "adMarkIcon"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adGrayMarkIcon:Ljava/lang/String;

    const-string v2, "adGrayMarkIcon"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adSourceDescription:Ljava/lang/String;

    const-string v2, "adSourceDescription"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adOperationType:I

    const-string v2, "adOperationType"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adActionDescription:Ljava/lang/String;

    const-string v2, "adActionDescription"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adActionBarColor:Ljava/lang/String;

    const-string v2, "adActionBarColor"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adShowDuration:I

    const-string v2, "adShowDuration"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appIconUrl:Ljava/lang/String;

    const-string v2, "appIconUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    const-string v2, "appPackageName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appScore:I

    const-string v2, "appScore"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appDownloadCountDesc:Ljava/lang/String;

    const-string v2, "appDownloadCountDesc"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appCategory:Ljava/lang/String;

    const-string v2, "appCategory"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appVersion:Ljava/lang/String;

    const-string v2, "appVersion"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->corporationName:Ljava/lang/String;

    const-string v2, "corporationName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->packageSize:J

    const-string v3, "packageSize"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appImageUrl:Ljava/util/List;

    const-string v2, "appImageUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appImageSize:Lcom/kwad/sdk/core/response/model/AdInfo$MaterialSize;

    const-string v2, "appImageSize"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appDescription:Ljava/lang/String;

    const-string v2, "appDescription"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->enableSkipAd:I

    const-string v2, "enableSkipAd"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->skipSecond:I

    const-string v2, "skipSecond"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->ecpm:I

    const-string v2, "ecpm"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->videoPlayedNS:Ljava/lang/String;

    const-string v2, "videoPlayedNS"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->productName:Ljava/lang/String;

    const-string v2, "productName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->mABParams:Lcom/kwad/sdk/core/response/model/ABParams;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/ABParams;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expParam"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->showUrl:Ljava/lang/String;

    const-string v2, "showUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->clickUrl:Ljava/lang/String;

    const-string v2, "clickUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->convUrl:Ljava/lang/String;

    const-string v1, "convUrl"

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;Lorg/json/JSONObject;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/c/a/c;->a(Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;Lorg/json/JSONObject;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "creativeId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->creativeId:J

    const-string v0, "adSourceType"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adSourceType:I

    const-string v0, "adDescription"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adDescription:Ljava/lang/String;

    const-string v0, "adMarkIcon"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adMarkIcon:Ljava/lang/String;

    const-string v0, "adGrayMarkIcon"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adGrayMarkIcon:Ljava/lang/String;

    const-string v0, "adSourceDescription"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adSourceDescription:Ljava/lang/String;

    const-string v0, "adOperationType"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adOperationType:I

    const-string v0, "adActionDescription"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adActionDescription:Ljava/lang/String;

    const-string v0, "adActionBarColor"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adActionBarColor:Ljava/lang/String;

    const-string v0, "adShowDuration"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adShowDuration:I

    const-string v0, "appName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appName:Ljava/lang/String;

    const-string v0, "appIconUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appIconUrl:Ljava/lang/String;

    const-string v0, "appPackageName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    const-string v0, "appScore"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appScore:I

    const-string v0, "appDownloadCountDesc"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appDownloadCountDesc:Ljava/lang/String;

    const-string v0, "appCategory"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appCategory:Ljava/lang/String;

    const-string v0, "appVersion"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appVersion:Ljava/lang/String;

    const-string v0, "corporationName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->corporationName:Ljava/lang/String;

    const-string v0, "packageSize"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->packageSize:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appImageUrl:Ljava/util/List;

    const-string v0, "appImageUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_bf

    const/4 v1, 0x0

    :goto_ab
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_bf

    iget-object v2, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appImageUrl:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    :cond_bf
    new-instance v0, Lcom/kwad/sdk/core/response/model/AdInfo$MaterialSize;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdInfo$MaterialSize;-><init>()V

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appImageSize:Lcom/kwad/sdk/core/response/model/AdInfo$MaterialSize;

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appImageSize:Lcom/kwad/sdk/core/response/model/AdInfo$MaterialSize;

    const-string v1, "appImageSize"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/AdInfo$MaterialSize;->parseJson(Lorg/json/JSONObject;)V

    const-string v0, "appDescription"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appDescription:Ljava/lang/String;

    const-string v0, "enableSkipAd"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->enableSkipAd:I

    const-string v0, "skipSecond"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->skipSecond:I

    const-string v0, "ecpm"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->ecpm:I

    const-string v0, "videoPlayedNS"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->videoPlayedNS:Ljava/lang/String;

    const-string v0, "productName"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->productName:Ljava/lang/String;

    new-instance v0, Lcom/kwad/sdk/core/response/model/ABParams;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/ABParams;-><init>()V

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->mABParams:Lcom/kwad/sdk/core/response/model/ABParams;

    :try_start_108
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->mABParams:Lcom/kwad/sdk/core/response/model/ABParams;

    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "expParam"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/ABParams;->parseJson(Lorg/json/JSONObject;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_118} :catch_119

    goto :goto_11a

    :catch_119
    move-exception v0

    :goto_11a
    const-string v0, "showUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->showUrl:Ljava/lang/String;

    const-string v0, "clickUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->clickUrl:Ljava/lang/String;

    const-string v0, "convUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->convUrl:Ljava/lang/String;

    return-void
.end method
