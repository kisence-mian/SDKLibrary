.class public Lcom/kwad/sdk/core/config/item/d;
.super Lcom/kwad/sdk/core/config/item/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/config/item/a<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/config/item/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/d;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/d;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/d;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/d;->c()Ljava/lang/Object;

    move-result-object p1

    :goto_1f
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/config/item/d;->a(Ljava/lang/Object;)V

    return-void
.end method
