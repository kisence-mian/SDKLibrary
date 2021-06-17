.class public Lcom/tendcloud/tenddata/game/co;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/co;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/co;->a:Lcom/tendcloud/tenddata/game/co;

    .line 113
    :try_start_3
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/co;->a()Lcom/tendcloud/tenddata/game/co;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    .line 119
    goto :goto_13

    .line 114
    :catchall_f
    move-exception v0

    .line 118
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 120
    :goto_13
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/co;
    .registers 2

    .line 69
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->a:Lcom/tendcloud/tenddata/game/co;

    if-nez v0, :cond_17

    .line 70
    const-class v0, Lcom/tendcloud/tenddata/game/co;

    monitor-enter v0

    .line 71
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/co;->a:Lcom/tendcloud/tenddata/game/co;

    if-nez v1, :cond_12

    .line 72
    new-instance v1, Lcom/tendcloud/tenddata/game/co;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/co;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/co;->a:Lcom/tendcloud/tenddata/game/co;

    .line 74
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 76
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->a:Lcom/tendcloud/tenddata/game/co;

    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .registers 2

    .line 64
    return-void
.end method

.method private b(Ljava/util/Map;)Ljava/util/Map;
    .registers 6

    .line 80
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 82
    if-eqz p1, :cond_5f

    .line 83
    :try_start_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 84
    return-object v0

    .line 86
    :cond_e
    const/4 v1, 0x0

    .line 87
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_37

    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 91
    :cond_37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_5a

    .line 93
    :goto_52
    add-int/lit8 v1, v1, 0x1

    .line 94
    const/16 v2, 0x32

    if-ne v1, v2, :cond_59

    .line 95
    goto :goto_5f

    .line 97
    :cond_59
    goto :goto_17

    .line 99
    :catchall_5a
    move-exception p1

    .line 103
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_60

    .line 104
    :cond_5f
    :goto_5f
    nop

    .line 105
    :goto_60
    return-object v0
.end method


# virtual methods
.method public final onTDEBEventAppEvent(Lcom/tendcloud/tenddata/game/zz$a;)V
    .registers 8

    .line 23
    const-string v0, "eventLabel"

    if-eqz p1, :cond_99

    :try_start_4
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    if-eqz v1, :cond_99

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    goto/16 :goto_99

    .line 29
    :cond_1d
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "service"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/a;

    .line 31
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 32
    iget-object v3, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "eventId"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 33
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_47

    if-eqz v3, :cond_47

    .line 34
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->d:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 36
    :cond_47
    iget-object v4, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v5, "map"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 37
    if-eqz v4, :cond_5a

    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_5a

    .line 38
    check-cast v4, Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    :cond_5a
    new-instance v4, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v4}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 42
    const-string v5, "appEvent"

    iput-object v5, v4, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 43
    iput-object v3, v4, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 44
    iput-object v1, v4, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 46
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 47
    iget-object p1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-direct {p0, v2}, Lcom/tendcloud/tenddata/game/co;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/util/Map;)V

    .line 51
    const-string v0, "eventParam"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object v1, v4, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_93} :catch_94

    .line 59
    goto :goto_98

    .line 54
    :catch_94
    move-exception p1

    .line 58
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 60
    :goto_98
    return-void

    .line 26
    :cond_99
    :goto_99
    return-void
.end method
