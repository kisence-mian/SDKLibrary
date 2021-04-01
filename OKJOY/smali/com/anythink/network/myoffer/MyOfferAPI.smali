.class public Lcom/anythink/network/myoffer/MyOfferAPI;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOffersOutOfCap(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 60
    invoke-static {p0}, Lcom/anythink/myoffer/a/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/myoffer/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCacheOfferIds(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultOfferId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 49
    invoke-static {p0}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOutOfCapOfferIds(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    invoke-static {p0}, Lcom/anythink/myoffer/a/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initTopOnOffer(Landroid/content/Context;Lcom/anythink/core/b/c/i;)V
    .registers 3

    .prologue
    .line 22
    invoke-static {p0}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/myoffer/a/a;->a(Lcom/anythink/core/b/c/i;)V

    .line 23
    return-void
.end method
