.class public Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/collector/AppStatusRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppStatusInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x215b77974a3707aaL


# instance fields
.field private strategy:Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

.field private target:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/collector/AppStatusRules$Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    invoke-direct {v0}, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->strategy:Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->target:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getStrategy()Lcom/kwad/sdk/collector/AppStatusRules$Strategy;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->strategy:Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    return-object v0
.end method

.method public getTarget()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/collector/AppStatusRules$Target;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->target:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    const-string v0, "strategy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v1, p0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->strategy:Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->parseJson(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    goto :goto_1d

    :cond_1c
    move v1, v0

    :goto_1d
    if-ge v0, v1, :cond_37

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/kwad/sdk/collector/AppStatusRules$Target;

    invoke-direct {v3}, Lcom/kwad/sdk/collector/AppStatusRules$Target;-><init>()V

    invoke-virtual {v3, v2}, Lcom/kwad/sdk/collector/AppStatusRules$Target;->parseJson(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->target:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_33

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :catch_33
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    return-void
.end method

.method public setStrategy(Lcom/kwad/sdk/collector/AppStatusRules$Strategy;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->strategy:Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    return-void
.end method

.method public setTarget(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/collector/AppStatusRules$Target;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->target:Ljava/util/ArrayList;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->strategy:Lcom/kwad/sdk/collector/AppStatusRules$Strategy;

    const-string v2, "strategy"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/collector/AppStatusRules$AppStatusInfo;->target:Ljava/util/ArrayList;

    const-string v2, "target"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
