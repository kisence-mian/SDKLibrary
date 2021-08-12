.class public Lcom/kwad/sdk/core/config/item/l;
.super Lcom/kwad/sdk/core/config/item/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/config/item/a<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/config/item/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/kwad/sdk/utils/s;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/kwad/sdk/utils/m;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_21
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/l;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/m;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/s;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/l;->a(Ljava/lang/Object;)V

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/l;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/l;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 6

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_18
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3a

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/config/item/l;->a(Ljava/lang/Object;)V

    return-void

    :cond_3a
    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/l;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/l;->a(Ljava/lang/Object;)V

    return-void
.end method
