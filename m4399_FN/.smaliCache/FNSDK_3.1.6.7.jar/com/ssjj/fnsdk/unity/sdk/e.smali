.class final Lcom/ssjj/fnsdk/unity/sdk/e;
.super Lcom/ssjj/fnsdk/unity/core/FNUnityApi;


# static fields
.field private static a:Lcom/ssjj/fnsdk/unity/sdk/e;


# instance fields
.field private final b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/unity/sdk/e;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/unity/sdk/e;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/unity/sdk/e;->a:Lcom/ssjj/fnsdk/unity/sdk/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/unity/core/FNUnityApi;-><init>()V

    new-instance v0, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/e;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    return-void
.end method

.method protected static a()Lcom/ssjj/fnsdk/unity/sdk/e;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/unity/sdk/e;->a:Lcom/ssjj/fnsdk/unity/sdk/e;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FNCustom.invoke "

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
    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/e;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->isSupport(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/e;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const/4 v1, 0x1

    aput-object p3, v2, v1

    invoke-virtual {v0, p1, v2}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    if-nez v1, :cond_52

    if-eqz p3, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FNCustom\u4e0d\u652f\u6301: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-interface {p3, v1, p1, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_52
    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_1d

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/unity/sdk/e;->listToJSONArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_d
    instance-of v0, p1, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/ssjj/fnsdk/lib/core/FNEntity;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/core/FNEntity;->toJson()Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return-object p1
.end method


# virtual methods
.method public a(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 7

    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FNCustom.invoke init "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/e;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->reset()V

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_58

    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apiclass"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/ssjj/fnsdk/unity/sdk/e;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->add(Ljava/lang/String;)V

    goto :goto_2d

    :cond_58
    :goto_58
    new-instance v0, Lcom/ssjj/fnsdk/unity/sdk/f;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/unity/sdk/f;-><init>(Lcom/ssjj/fnsdk/unity/sdk/e;)V

    const-string v1, "init"

    invoke-direct {p0, v1, p1, v0}, Lcom/ssjj/fnsdk/unity/sdk/e;->a(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;

    if-eqz p2, :cond_6a

    const/4 v0, 0x1

    const-string v1, "succ"

    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_6a
    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5d

    :cond_9
    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>(Ljava/lang/String;)V

    const-string p2, "activity"

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    const-string p2, "context"

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/unity/sdk/e;->createUnityBack(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "_keep_"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setcallback"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4f

    const/4 v1, 0x1

    :cond_4f
    if-eqz v1, :cond_54

    invoke-virtual {p2, v3}, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->setKeep(Z)V

    :cond_54
    invoke-direct {p0, p1, v0, p2}, Lcom/ssjj/fnsdk/unity/sdk/e;->a(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/unity/sdk/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5d
    :goto_5d
    const/4 p1, 0x0

    return-object p1
.end method

.method public isSupport(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/e;->b:Lcom/ssjj/fnsdk/lib/core/ApiClassManager;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/lib/core/ApiClassManager;->isSupport(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
