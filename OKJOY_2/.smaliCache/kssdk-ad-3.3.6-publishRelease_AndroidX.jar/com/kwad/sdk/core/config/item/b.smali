.class public Lcom/kwad/sdk/core/config/item/b;
.super Lcom/kwad/sdk/core/config/item/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/config/item/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "batchReportCacheType"

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/core/config/item/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 4

    const-string v0, "BatchReportCacheTypeConfigItem"

    const-string v1, "loadBatchReportCacheType"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eqz p0, :cond_1a

    const/4 v1, 0x0

    const-string v2, "ksadsdk_rep"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_1a

    const-string v1, "batchReportCacheType"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1a
    return v0
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "BatchReportCacheTypeConfigItem"

    const-string v1, "saveBatchReportCacheType"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1e

    const/4 v0, 0x0

    const-string v1, "ksadsdk_rep"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "batchReportCacheType"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1e
    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/config/item/b;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/config/item/b;->a(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_18
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/b;->a(Ljava/lang/Object;)V

    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/b;->c()Ljava/lang/Object;

    move-result-object p1

    goto :goto_18
.end method
