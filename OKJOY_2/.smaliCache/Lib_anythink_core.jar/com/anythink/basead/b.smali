.class public final Lcom/anythink/basead/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/basead/e/b;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/basead/e/b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 22
    if-eqz p0, :cond_b

    .line 23
    invoke-virtual {p0}, Lcom/anythink/basead/e/b;->d()Lcom/anythink/core/common/d/h;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/basead/b;->a(Lcom/anythink/core/common/d/h;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 25
    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/anythink/core/common/d/h;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/d/h;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    if-eqz p0, :cond_3a

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offer_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/anythink/core/common/d/h;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creative_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/anythink/core/common/d/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/anythink/core/common/d/h;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x0

    goto :goto_30

    :cond_2f
    const/4 p0, 0x1

    :goto_30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "is_deeplink"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-object v0

    .line 36
    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method
