.class Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNCfg2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNCfg2;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->d:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNCfg2;Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNCfg2;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a()Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_18

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "true"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->c:Ljava/lang/String;

    return-void
.end method

.method private b()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;)Z
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;)Z
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->a()Z

    move-result p0

    return p0
.end method
