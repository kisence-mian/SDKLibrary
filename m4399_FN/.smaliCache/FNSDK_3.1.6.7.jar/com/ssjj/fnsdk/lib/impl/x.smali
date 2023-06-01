.class public Lcom/ssjj/fnsdk/lib/impl/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ssjj/fnsdk/lib/impl/x;


# instance fields
.field private final b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/x;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/impl/x;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/lib/impl/x;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/lib/impl/x;Ljava/lang/String;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;I)I
    .registers 4

    const-string v0, "checkUpdate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    return p2

    :cond_9
    const/4 p1, 0x1

    if-nez p2, :cond_e

    const/4 p2, 0x1

    goto :goto_16

    :cond_e
    const/4 v0, 0x2

    if-ne p2, v0, :cond_13

    const/4 p2, -0x2

    goto :goto_16

    :cond_13
    if-ne p2, p1, :cond_16

    const/4 p2, -0x1

    :cond_16
    :goto_16
    return p2
.end method

.method public static a()Lcom/ssjj/fnsdk/lib/impl/x;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/lib/impl/x;->a:Lcom/ssjj/fnsdk/lib/impl/x;

    return-object v0
.end method

.method private a(Lcom/ssjj/fnsdk/core/SsjjFNParams;)Lcom/ssjj/fnsdk/lib/sdk/FNParam;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->copyFrom(Lcom/ssjj/fnsdk/lib/core/FNEntity;)V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->mapObj()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_53

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2e

    goto :goto_1a

    :cond_2e
    instance-of v3, v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;)Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    move-result-object v2

    :goto_3e
    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_42
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_1a

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3e

    :cond_53
    :goto_53
    return-object v0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/lib/impl/x;Lcom/ssjj/fnsdk/core/SsjjFNParams;)Lcom/ssjj/fnsdk/lib/sdk/FNParam;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;)Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    if-eqz v0, :cond_32

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_24

    move-object p1, v0

    goto :goto_32

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;)Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_32
    :goto_32
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_22
    if-nez p2, :cond_29

    new-instance p2, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    :cond_29
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->isSupport(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v3

    invoke-virtual {v0, p1, v4}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    move-object v0, v2

    :goto_44
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-static {p2}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v5}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-virtual {v5, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->copyFrom(Lcom/ssjj/fnsdk/lib/core/FNEntity;)V

    if-eqz v1, :cond_5e

    move-object v1, v2

    goto :goto_5f

    :cond_5e
    move-object v1, p3

    :goto_5f
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v6

    new-instance v7, Lcom/ssjj/fnsdk/lib/impl/y;

    invoke-direct {v7, p0, v1, p1}, Lcom/ssjj/fnsdk/lib/impl/y;-><init>(Lcom/ssjj/fnsdk/lib/impl/x;Lcom/ssjj/fnsdk/lib/sdk/FNBack;Ljava/lang/String;)V

    invoke-virtual {v6, v4, p1, v5, v7}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_73

    move-object v0, v1

    :cond_73
    const/4 v1, 0x1

    :cond_74
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->isSurportApi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-static {p2}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v5}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-virtual {v5, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->copyFrom(Lcom/ssjj/fnsdk/lib/core/FNEntity;)V

    if-eqz v1, :cond_8d

    goto :goto_8e

    :cond_8d
    move-object v2, p3

    :goto_8e
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    move-result-object v1

    new-instance v6, Lcom/ssjj/fnsdk/lib/impl/z;

    invoke-direct {v6, p0, v2, p1}, Lcom/ssjj/fnsdk/lib/impl/z;-><init>(Lcom/ssjj/fnsdk/lib/impl/x;Lcom/ssjj/fnsdk/lib/sdk/FNBack;Ljava/lang/String;)V

    invoke-virtual {v1, v4, p1, v5, v6}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_9c

    :cond_9b
    move v3, v1

    :goto_9c
    if-nez v3, :cond_b3

    if-eqz p3, :cond_b3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0d\u652f\u6301: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-interface {p3, v1, p1, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b3
    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2c
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result p1

    if-eqz p1, :cond_18

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invoke init "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_18
    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->reset()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-class v0, Lcom/ssjj/fnsdk/lib/impl/h;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-class v0, Lcom/ssjj/fnsdk/lib/impl/p;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-class v0, Lcom/ssjj/fnsdk/lib/impl/v;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-class v0, Lcom/ssjj/fnsdk/lib/impl/s;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-class v0, Lcom/ssjj/fnsdk/lib/impl/u;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-class v0, Lcom/ssjj/fnsdk/lib/impl/r;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-class v0, Lcom/ssjj/fnsdk/lib/impl/d;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-class v0, Lcom/ssjj/fnsdk/lib/impl/b;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-class v0, Lcom/ssjj/fnsdk/lib/impl/c;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-class v0, Lcom/ssjj/fnsdk/lib/impl/a;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/Class;)V

    const-string p1, "init"

    invoke-virtual {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/lib/impl/x;->a(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onNewIntent(Landroid/content/Intent;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-string v1, "onNewIntent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method public a(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "invoke release"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "release"

    invoke-virtual {v0, p1, v1}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->isSupport(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    :cond_10
    if-nez v0, :cond_1a

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->isSurportApi(Ljava/lang/String;)Z

    move-result v0

    :cond_1a
    return v0
.end method

.method protected b()Lcom/ssjj/fnsdk/lib/core/ApiClassManager;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    return-object v0
.end method

.method public c()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onResume()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public d()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onStart()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public e()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onRestart()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-string v1, "onRestart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public f()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onPause()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public g()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onStop()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-string v1, "onStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public h()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->onDestroy()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/x;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1b
    return-void
.end method
