.class public Lcom/kwad/sdk/collector/AppStatusRules;
.super Lcom/kwad/sdk/core/network/BaseResultData;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/collector/AppStatusRules$Target;,
        Lcom/kwad/sdk/collector/AppStatusRules$Strategy;,
        Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_GRANULARITY:J = 0xea60L

.field public static final DEFAULT_START_TIME:J = 0x5265c00L

.field private static final serialVersionUID:J = 0x2a01bdbfdf0fa2b3L


# instance fields
.field private data:Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/BaseResultData;-><init>()V

    new-instance v0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules;->data:Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;

    return-void
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/kwad/sdk/collector/AppStatusRules;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/collector/AppStatusRules;

    invoke-direct {v0}, Lcom/kwad/sdk/collector/AppStatusRules;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/collector/AppStatusRules;->parseJson(Lorg/json/JSONObject;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_19
    return-object v0
.end method


# virtual methods
.method public getTargetList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/collector/AppStatusRules$Target;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules;->data:Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->getTarget()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public obtainHistoryGranularity()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules;->data:Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->getStrategy()Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->getHistoryGranularity()J

    move-result-wide v0

    goto :goto_12

    :cond_f
    const-wide/32 v0, 0xea60

    :goto_12
    return-wide v0
.end method

.method public obtainScanInterval()J
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules;->data:Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->getStrategy()Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_20

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules;->data:Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->getStrategy()Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->getScanInterval()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move-wide v1, v3

    :goto_1d
    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    :cond_20
    :goto_20
    return-wide v1
.end method

.method public obtainStartTime()J
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules;->data:Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;

    const-wide/32 v1, 0x5265c00

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->getStrategy()Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_23

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules;->data:Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->getStrategy()Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->getStartTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1f

    return-wide v1

    :cond_1f
    const-wide/16 v0, 0x3e8

    mul-long/2addr v3, v0

    return-wide v3

    :cond_23
    :goto_23
    return-wide v1
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/network/BaseResultData;->parseJson(Lorg/json/JSONObject;)V

    if-nez p1, :cond_6

    return-void

    :cond_6
    :try_start_6
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/collector/AppStatusRules;->data:Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->parseJson(Lorg/json/JSONObject;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method public targetNotEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/collector/AppStatusRules;->getTargetList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/core/network/BaseResultData;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/collector/AppStatusRules;->data:Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;

    const-string v2, "data"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    return-object v0
.end method
