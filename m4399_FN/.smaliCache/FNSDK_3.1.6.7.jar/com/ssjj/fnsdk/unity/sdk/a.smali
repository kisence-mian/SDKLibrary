.class final Lcom/ssjj/fnsdk/unity/sdk/a;
.super Lcom/ssjj/fnsdk/unity/core/FNUnityApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/unity/sdk/a$a;,
        Lcom/ssjj/fnsdk/unity/sdk/a$b;
    }
.end annotation


# static fields
.field private static a:Lcom/ssjj/fnsdk/unity/sdk/a;


# instance fields
.field private b:I

.field private c:Lcom/ssjj/fnsdk/unity/sdk/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/unity/sdk/a;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/unity/sdk/a;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/unity/sdk/a;->a:Lcom/ssjj/fnsdk/unity/sdk/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/ssjj/fnsdk/unity/core/FNUnityApi;-><init>()V

    const/16 v0, -0x63

    iput v0, p0, Lcom/ssjj/fnsdk/unity/sdk/a;->b:I

    new-instance v0, Lcom/ssjj/fnsdk/unity/sdk/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ssjj/fnsdk/unity/sdk/a$a;-><init>(Lcom/ssjj/fnsdk/unity/sdk/a$a;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/a;->c:Lcom/ssjj/fnsdk/unity/sdk/a$a;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/unity/sdk/a;Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Lcom/ssjj/fnsdk/unity/core/FNUnityBack;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/unity/sdk/a;->createUnityBack(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/unity/sdk/a;)Lcom/ssjj/fnsdk/unity/sdk/a$a;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/unity/sdk/a;->c:Lcom/ssjj/fnsdk/unity/sdk/a$a;

    return-object p0
.end method

.method protected static a()Lcom/ssjj/fnsdk/unity/sdk/a;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/unity/sdk/a;->a:Lcom/ssjj/fnsdk/unity/sdk/a;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_21

    instance-of v0, p1, Lcom/ssjj/chat/sdk/kit/ChatParam;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/ssjj/chat/sdk/kit/ChatParam;

    invoke-virtual {p1}, Lcom/ssjj/chat/sdk/kit/ChatParam;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_11
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1c

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/unity/sdk/a;->listToJSONArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return-object p1
.end method

.method private b()Z
    .registers 5

    iget v0, p0, Lcom/ssjj/fnsdk/unity/sdk/a;->b:I

    const/16 v1, -0x63

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_13

    :try_start_8
    const-class v0, Lcom/ssjj/chat/sdk/kit/ChatKit;

    iput v3, p0, Lcom/ssjj/fnsdk/unity/sdk/a;->b:I
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput v2, p0, Lcom/ssjj/fnsdk/unity/sdk/a;->b:I

    :cond_13
    :goto_13
    iget v0, p0, Lcom/ssjj/fnsdk/unity/sdk/a;->b:I

    if-ne v0, v3, :cond_18

    return v3

    :cond_18
    return v2
.end method


# virtual methods
.method public a(Lcom/ssjj/chat/sdk/kit/ChatParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V
    .registers 5

    invoke-direct {p0}, Lcom/ssjj/fnsdk/unity/sdk/a;->b()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result p1

    const-string v0, "init cancel, no ChatKit..."

    if-eqz p1, :cond_11

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_11
    if-eqz p2, :cond_18

    const/4 p1, -0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/ssjj/chat/sdk/kit/ChatBack;->onBack(ILjava/lang/String;Lcom/ssjj/chat/sdk/kit/ChatParam;)V

    :cond_18
    return-void

    :cond_19
    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/ssjj/chat/sdk/kit/ChatParam;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_2b
    iget-object v1, p0, Lcom/ssjj/fnsdk/unity/sdk/a;->c:Lcom/ssjj/fnsdk/unity/sdk/a$a;

    invoke-static {v1, p1}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a(Lcom/ssjj/fnsdk/unity/sdk/a$a;Lcom/ssjj/chat/sdk/kit/ChatParam;)V

    new-instance v1, Lcom/ssjj/fnsdk/unity/sdk/b;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/ssjj/fnsdk/unity/sdk/b;-><init>(Lcom/ssjj/fnsdk/unity/sdk/a;Lcom/ssjj/chat/sdk/kit/ChatParam;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V

    invoke-static {v1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/unity/sdk/a;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " cancel, no ChatKit..."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/unity/sdk/a;->createUnityBack(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Lcom/ssjj/fnsdk/unity/core/FNUnityBack;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0, p2, v3}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-object v3

    :cond_4a
    if-eqz p1, :cond_109

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    goto/16 :goto_109

    :cond_54
    new-instance v1, Lcom/ssjj/fnsdk/unity/sdk/a$b;

    invoke-direct {v1, p0, p1, v0}, Lcom/ssjj/fnsdk/unity/sdk/a$b;-><init>(Lcom/ssjj/fnsdk/unity/sdk/a;Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    new-instance v2, Lcom/ssjj/chat/sdk/kit/ChatParam;

    invoke-direct {v2}, Lcom/ssjj/chat/sdk/kit/ChatParam;-><init>()V

    invoke-virtual {v2, p2}, Lcom/ssjj/chat/sdk/kit/ChatParam;->fromJson(Ljava/lang/String;)V

    const-string p2, "activity"

    invoke-virtual {v2, p2}, Lcom/ssjj/chat/sdk/kit/ChatParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_77

    invoke-virtual {v2}, Lcom/ssjj/chat/sdk/kit/ChatParam;->map()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/ssjj/chat/sdk/kit/ChatParam;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_77
    const-string p2, "context"

    invoke-virtual {v2, p2}, Lcom/ssjj/chat/sdk/kit/ChatParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8d

    invoke-virtual {v2}, Lcom/ssjj/chat/sdk/kit/ChatParam;->map()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/ssjj/chat/sdk/kit/ChatParam;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8d
    invoke-virtual {v2}, Lcom/ssjj/chat/sdk/kit/ChatParam;->map()Ljava/util/Map;

    move-result-object p2

    const-string v4, "_api_"

    invoke-interface {p2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/ssjj/chat/sdk/kit/ChatParam;->map()Ljava/util/Map;

    move-result-object p2

    const-string v4, "_id_"

    invoke-interface {p2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/ssjj/chat/sdk/kit/ChatParam;->map()Ljava/util/Map;

    move-result-object p2

    const-string v4, "_keep_"

    invoke-interface {p2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "init"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b4

    invoke-virtual {p0, v2, v1}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Lcom/ssjj/chat/sdk/kit/ChatParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V

    goto :goto_104

    :cond_b4
    const-string p2, "fnchat_init"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_cb

    iget-object p2, p0, Lcom/ssjj/fnsdk/unity/sdk/a;->c:Lcom/ssjj/fnsdk/unity/sdk/a$a;

    invoke-static {p2, v2}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a(Lcom/ssjj/fnsdk/unity/sdk/a$a;Lcom/ssjj/chat/sdk/kit/ChatParam;)V

    new-instance p2, Lcom/ssjj/fnsdk/unity/sdk/d;

    invoke-direct {p2, p0, v1}, Lcom/ssjj/fnsdk/unity/sdk/d;-><init>(Lcom/ssjj/fnsdk/unity/sdk/a;Lcom/ssjj/fnsdk/unity/sdk/a$b;)V

    invoke-static {p1, v0, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->invoke(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_104

    :cond_cb
    const-string p2, "setCallbackInitState"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_dd

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/unity/sdk/a$b;->a(Z)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/a;->c:Lcom/ssjj/fnsdk/unity/sdk/a$a;

    invoke-virtual {p1, v2, v1}, Lcom/ssjj/fnsdk/unity/sdk/a$a;->a(Lcom/ssjj/chat/sdk/kit/ChatParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)V

    goto :goto_104

    :cond_dd
    const-string p2, "setCallback"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_fd

    const-string p2, "observe"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_fd

    const-string p2, "set"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_100

    const-string p2, "Listener"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_100

    :cond_fd
    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/unity/sdk/a$b;->a(Z)V

    :cond_100
    invoke-static {p1, v2, v1}, Lcom/ssjj/chat/sdk/kit/ChatKit;->invoke(Ljava/lang/String;Lcom/ssjj/chat/sdk/kit/ChatParam;Lcom/ssjj/chat/sdk/kit/ChatBack;)Ljava/lang/Object;

    move-result-object v3

    :goto_104
    invoke-direct {p0, v3}, Lcom/ssjj/fnsdk/unity/sdk/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_109
    :goto_109
    return-object v3
.end method

.method public isSupport(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/ssjj/fnsdk/unity/sdk/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isSupport "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cancel, no ChatKit..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_25
    return v1

    :cond_26
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_34

    :cond_2f
    invoke-static {p1}, Lcom/ssjj/chat/sdk/kit/ChatKit;->isSupport(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_34
    :goto_34
    return v1
.end method

.method protected onPutObjectToJSONArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/unity/core/FNUnityApi;->onPutObjectToJSONArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/ssjj/chat/sdk/kit/ChatParam;

    if-eqz v1, :cond_e

    check-cast p1, Lcom/ssjj/chat/sdk/kit/ChatParam;

    invoke-virtual {p1}, Lcom/ssjj/chat/sdk/kit/ChatParam;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    :cond_e
    return-object v0
.end method
