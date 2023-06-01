.class Lcom/ssjj/fnsdk/core/share/price/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Lcom/ssjj/fnsdk/core/SsjjFNParams;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/a;->a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/price/a;->b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/a;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/price/a;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 7

    if-nez p1, :cond_6e

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/price/a;->b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->keys()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_11
    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/price/a;->a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/a;->c:Landroid/content/Context;

    new-instance v1, Lcom/ssjj/fnsdk/core/share/price/b;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/price/a;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {v1, p0, p3, v2}, Lcom/ssjj/fnsdk/core/share/price/b;-><init>(Lcom/ssjj/fnsdk/core/share/price/a;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->createShareImage(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_7d

    :cond_26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "roleId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "roleName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "roleLevel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "serverName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "callbackInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/price/a;->b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_6e
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/a;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_7d

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 p3, 0x1

    const-string v0, "\u52a0\u8f7d\u914d\u7f6e\u5931\u8d25"

    invoke-interface {p1, p3, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_7d
    :goto_7d
    return-void
.end method
