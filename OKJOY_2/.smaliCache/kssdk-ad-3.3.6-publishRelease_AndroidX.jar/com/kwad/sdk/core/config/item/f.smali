.class public Lcom/kwad/sdk/core/config/item/f;
.super Lcom/kwad/sdk/core/config/item/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/config/item/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/config/item/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/f;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/f;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_10
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/f;->a(Ljava/lang/Object;)V

    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/f;->c()Ljava/lang/Object;

    move-result-object p1

    goto :goto_10
.end method
