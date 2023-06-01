.class final Lcom/ssjj/fnsdk/unity/sdk/g;
.super Lcom/ssjj/fnsdk/unity/core/FNUnityApi;


# static fields
.field private static a:Lcom/ssjj/fnsdk/unity/sdk/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/unity/sdk/g;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/unity/sdk/g;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/unity/sdk/g;->a:Lcom/ssjj/fnsdk/unity/sdk/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/unity/core/FNUnityApi;-><init>()V

    return-void
.end method

.method protected static a()Lcom/ssjj/fnsdk/unity/sdk/g;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/unity/sdk/g;->a:Lcom/ssjj/fnsdk/unity/sdk/g;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_1d

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/unity/sdk/g;->listToJSONArrayString(Ljava/util/List;)Ljava/lang/String;

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
    .registers 5

    const-string v0, "init"

    invoke-virtual {p0, v0, p1}, Lcom/ssjj/fnsdk/unity/sdk/g;->createUnityBack(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/unity/sdk/h;

    invoke-direct {v1, p0, p2, v0}, Lcom/ssjj/fnsdk/unity/sdk/h;-><init>(Lcom/ssjj/fnsdk/unity/sdk/g;Lcom/ssjj/fnsdk/lib/sdk/FNBack;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->init(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_69

    :cond_9
    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>(Ljava/lang/String;)V

    const-string p2, "activity"

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    :cond_1c
    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    const-string p2, "context"

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_38

    :cond_31
    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_38
    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/unity/sdk/g;->createUnityBack(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

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

    if-eqz v2, :cond_5b

    const/4 v1, 0x1

    :cond_5b
    if-eqz v1, :cond_60

    invoke-virtual {p2, v3}, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->setKeep(Z)V

    :cond_60
    invoke-static {p1, v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->invoke(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/unity/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_69
    :goto_69
    const/4 p1, 0x0

    return-object p1
.end method

.method public isSupport(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->isSupport(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
