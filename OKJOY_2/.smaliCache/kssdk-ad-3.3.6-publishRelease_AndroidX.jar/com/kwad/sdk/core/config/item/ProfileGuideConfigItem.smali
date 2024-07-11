.class public Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;
.super Lcom/kwad/sdk/core/config/item/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/config/item/a<",
        "Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;-><init>()V

    const-string v1, "profileGuideConfig"

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/core/config/item/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_25
    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    :goto_2b
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .registers 7

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;

    if-nez v0, :cond_d

    new-instance v0, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;-><init>()V

    :cond_d
    const/4 v1, 0x0

    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_1d} :catch_1f

    move-object v1, v2

    goto :goto_23

    :catch_1f
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_23
    if-eqz v1, :cond_28

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;->parseJson(Lorg/json/JSONObject;)V

    :cond_28
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_18

    new-instance v0, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;-><init>()V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem$ProfileGuideConfig;->parseJson(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->a(Ljava/lang/Object;)V

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/ProfileGuideConfigItem;->a(Ljava/lang/Object;)V

    return-void
.end method
