.class public Lcom/kwad/sdk/core/g/a;
.super Lcom/kwad/sdk/core/network/d;


# instance fields
.field b:Lcom/kwad/sdk/core/g/a/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/a/e;Ljava/util/List;ZLcom/kwad/sdk/core/g/a/j;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/g/a/e;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/kwad/sdk/core/g/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/d;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/g/a;->b:Lcom/kwad/sdk/core/g/a/e;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/kwad/sdk/core/g/a/e;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    const-string p1, "impInfo"

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/g/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string p1, "universePhotoInfo"

    invoke-virtual {p0, p1, p4}, Lcom/kwad/sdk/core/g/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    const-class p1, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    invoke-static {p1}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    const-string p4, "KEY_MODIFY_CREATEID"

    invoke-interface {p1, p4}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;->a(Ljava/lang/String;)Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;

    move-result-object p1

    if-eqz p1, :cond_4a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "creativeId_"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    if-eqz p2, :cond_5b

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p2, "preloadIdList"

    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/g/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string p1, "preloadCheck"

    invoke-virtual {p0, p1, p3}, Lcom/kwad/sdk/core/g/a;->a(Ljava/lang/String;Z)V

    :cond_5b
    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/aa;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "appTag"

    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/g/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
