.class public Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/g/a/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdConfigs"
.end annotation


# static fields
.field public static final DEF_CONFIG_BATCH_REPORT_CACHE_LIMIT:I = 0x14

.field public static final DEF_CONFIG_LIKEBUTTON_SWITCH:I = 0x1

.field public static final DEF_CONFIG_MOREBUTTON_SWITCH:I = 0x1

.field public static final DEF_CONFIG_SEEKBAR_SWITCH:I = 0x3b

.field public static final DEF_CONFIG_TOOLBAR_SWITCH:I = 0x1

.field public static final DEF_CONFIG_VIDEOCACHE_SWITCH:I = 0x0

.field private static final serialVersionUID:J = -0x667b8c11747ba3cfL


# instance fields
.field public batchReportCatchLimit:I

.field public likeButtonSwitch:I

.field public moreButtonSwitch:I

.field public pkgNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public seekBarSwitch:I

.field public toolbarSwitch:I

.field public videoCacheSwitch:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->toolbarSwitch:I

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->likeButtonSwitch:I

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->moreButtonSwitch:I

    const/16 v0, 0x3b

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->seekBarSwitch:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->videoCacheSwitch:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->pkgNameList:Ljava/util/List;

    const/16 v0, 0x14

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->batchReportCatchLimit:I

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v1, "toolbarSwitch"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->toolbarSwitch:I

    const-string v1, "likeButtonSwitch"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->likeButtonSwitch:I

    const-string v1, "moreButtonSwitch"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->moreButtonSwitch:I

    const-string v1, "seekBarSwitch"

    const/16 v2, 0x3b

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->seekBarSwitch:I

    const-string v1, "videoCacheSwitch"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->videoCacheSwitch:I

    const-string v1, "pkgNameList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_56

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->pkgNameList:Ljava/util/List;

    :goto_44
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_56

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->pkgNameList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_56
    const-string v0, "batchReportCatchLimit"

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->batchReportCatchLimit:I

    goto :goto_4
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->toolbarSwitch:I

    const-string v2, "toolbarSwitch"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->likeButtonSwitch:I

    const-string v2, "likeButtonSwitch"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->moreButtonSwitch:I

    const-string v2, "moreButtonSwitch"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->seekBarSwitch:I

    const-string v2, "seekBarSwitch"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->videoCacheSwitch:I

    const-string v2, "videoCacheSwitch"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->pkgNameList:Ljava/util/List;

    if-eqz v1, :cond_35

    invoke-static {v1}, Lcom/kwad/sdk/e/e;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "pkgNameList"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_35
    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->batchReportCatchLimit:I

    const-string v2, "batchReportCatchLimit"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method
