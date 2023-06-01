.class public final Lcom/ssjj/fnsdk/lib/core/ApiClassManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->b:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final add(Ljava/lang/Class;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ssjj/fnsdk/lib/core/ApiClass;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_59

    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v2

    :goto_1b
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1d
    if-lt v4, v3, :cond_20

    goto :goto_59

    :cond_20
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_56

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v7

    if-nez v7, :cond_56

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-eqz v6, :cond_39

    goto :goto_56

    :cond_39
    new-instance v6, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;

    invoke-direct {v6, p0, p1, v5, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;-><init>(Lcom/ssjj/fnsdk/lib/core/ApiClassManager;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;)V

    invoke-static {v6}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->a(Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->a:Ljava/util/Set;

    invoke-static {v6}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->a(Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_59
    :goto_59
    return-void
.end method

.method public final add(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_1b

    :catch_8
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add apiClass fail, not found class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public final varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3e

    :cond_a
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    return-object v0

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;

    if-eqz v2, :cond_14

    :try_start_29
    invoke-static {v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->b(Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;->c(Lcom/ssjj/fnsdk/lib/core/ApiClassManager$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_39

    if-eqz v2, :cond_14

    move-object v0, v2

    goto :goto_14

    :catchall_39
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method public final isSupport(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_14

    :cond_9
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->a:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return p1
.end method

.method public final removeSupport(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->a:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
