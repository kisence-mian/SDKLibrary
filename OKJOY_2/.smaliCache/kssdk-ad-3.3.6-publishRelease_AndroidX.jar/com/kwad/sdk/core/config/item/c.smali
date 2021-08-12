.class public Lcom/kwad/sdk/core/config/item/c;
.super Lcom/kwad/sdk/core/config/item/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/config/item/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/config/item/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/c;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/c;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/c;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1d

    :cond_19
    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/c;->c()Ljava/lang/Object;

    move-result-object p1

    :goto_1d
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/c;->a(Ljava/lang/Object;)V

    return-void
.end method
