.class final Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/lib/core/ApiClassManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ssjj/fnsdk/lib/core/ApiClassManager;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->a:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->c:Ljava/lang/reflect/Method;

    if-nez p3, :cond_e

    const-string p1, ""

    goto :goto_12

    :cond_e
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_12
    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/lib/core/ApiClassManager;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;-><init>(Lcom/ssjj/fnsdk/lib/core/ApiClassManager;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;)Ljava/lang/reflect/Method;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->c:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->b:Ljava/lang/Object;

    return-object p0
.end method
