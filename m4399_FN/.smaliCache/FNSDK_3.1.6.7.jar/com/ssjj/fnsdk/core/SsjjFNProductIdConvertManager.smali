.class public Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->a:Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .registers 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->b:Ljava/util/Map;

    const-string v0, "fnres/game/fn_productid.list"

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->readTextFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_bb

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bb

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_bb

    const-string v1, "found productId list"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\r"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\t"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\uff0c"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\uff1b"

    const-string v3, ";"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "<br/>"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5f
    if-lt v3, v1, :cond_62

    goto :goto_bb

    :cond_62
    aget-object v4, p1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_a6

    aget-object v6, v5, v2

    if-eqz v6, :cond_a6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a6

    aget-object v6, v5, v7

    if-eqz v6, :cond_a6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a6

    new-instance v4, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;)V

    aget-object v6, v5, v2

    iput-object v6, v4, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;->a:Ljava/lang/String;

    aget-object v6, v5, v7

    iput-object v6, v4, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;->b:Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x2

    if-le v6, v7, :cond_9e

    aget-object v6, v5, v7

    iput-object v6, v4, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;->c:Ljava/lang/String;

    :cond_9e
    iget-object v6, p0, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->b:Ljava/util/Map;

    aget-object v5, v5, v2

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b8

    :cond_a6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "productId list err: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_bb
    :goto_bb
    return-void
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->a:Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;

    return-object v0
.end method


# virtual methods
.method public convert(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->b:Ljava/util/Map;

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->a(Landroid/app/Activity;)V

    :cond_7
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_10

    return-object p2

    :cond_10
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;

    if-eqz p1, :cond_55

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_55

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "productId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " -> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " | "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager$a;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    move-object p2, v0

    :cond_55
    return-object p2
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->b:Ljava/util/Map;

    return-void
.end method
