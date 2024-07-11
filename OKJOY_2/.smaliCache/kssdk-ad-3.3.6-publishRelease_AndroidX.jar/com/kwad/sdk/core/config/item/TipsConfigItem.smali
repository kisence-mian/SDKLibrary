.class public Lcom/kwad/sdk/core/config/item/TipsConfigItem;
.super Lcom/kwad/sdk/core/config/item/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/config/item/a<",
        "Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;-><init>()V

    const-string v1, "tipConfig"

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/core/config/item/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;->getTipShowSwitch()I

    move-result v0

    const-string v1, "tipsSwitch"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;->getTipInfoData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tipsInfo"

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;->getTipInfoData()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_28
    const-string v0, ""

    :goto_2a
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;

    if-nez v0, :cond_d

    new-instance v0, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;-><init>()V

    :cond_d
    const/4 v1, 0x0

    const-string v2, "tipsSwitch"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;->setTipShowSwitch(I)V

    const-string v1, "tipsInfo"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;->setTipInfoData(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_18

    new-instance v0, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;

    invoke-direct {v0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/config/item/TipsConfigItem$TipConfigData;->parseJson(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem;->a(Ljava/lang/Object;)V

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/TipsConfigItem;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/TipsConfigItem;->a(Ljava/lang/Object;)V

    return-void
.end method
