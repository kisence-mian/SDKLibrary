.class public Lcom/anythink/network/myoffer/MyOfferAPI;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOffersOutOfCap(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 68
    invoke-static {p0}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/basead/g/a/b;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getCacheOfferIds(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/r;)Ljava/lang/String;
    .registers 3

    .line 46
    invoke-static {p0}, Lcom/anythink/basead/g/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/anythink/basead/g/a/a;->a(Ljava/lang/String;Lcom/anythink/core/common/d/r;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultOfferId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 57
    invoke-static {p0}, Lcom/anythink/basead/g/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/basead/g/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOutOfCapOfferIds(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/basead/g/a/b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static preloadTopOnOffer(Landroid/content/Context;Lcom/anythink/core/common/d/q;)V
    .registers 2

    .line 30
    invoke-static {p0}, Lcom/anythink/basead/g/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/a;

    move-result-object p0

    iget-object p1, p1, Lcom/anythink/core/common/d/q;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anythink/basead/g/a/a;->a(Ljava/lang/String;)V

    .line 31
    return-void
.end method
