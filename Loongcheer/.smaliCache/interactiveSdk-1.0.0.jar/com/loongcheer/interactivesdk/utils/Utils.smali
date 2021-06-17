.class public Lcom/loongcheer/interactivesdk/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGaid(Landroid/app/Activity;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 118
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "gaid"

    const-string v2, "nul"

    invoke-static {v0, v1, v2}, Lcom/loongcheer/interactivesdk/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 119
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/interactivesdk/utils/Utils$1;

    invoke-direct {v1, p0}, Lcom/loongcheer/interactivesdk/utils/Utils$1;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_41

    .line 135
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Utils.run"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/loongcheer/interactivesdk/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 139
    :goto_41
    return-void
.end method

.method public static getJsonMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;
    .registers 6
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 94
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_d

    .line 97
    :cond_30
    return-object v0
.end method

.method public static getJsonMapStr(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;
    .registers 6
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_d

    .line 114
    :cond_34
    return-object v0
.end method

.method private static getMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/loongcheer/interactivesdk/utils/Utils;->map:Ljava/util/Map;

    if-nez v0, :cond_12

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loongcheer/interactivesdk/utils/Utils;->map:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loongcheer/interactivesdk/utils/Utils;->list:Ljava/util/List;

    .line 41
    :cond_12
    sget-object v0, Lcom/loongcheer/interactivesdk/utils/Utils;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static getMapStr(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/loongcheer/interactivesdk/utils/Utils;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1e
    return-void
.end method

.method public static putMapStr(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 46
    const-string v0, "key \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 47
    return-void

    .line 49
    :cond_c
    invoke-static {}, Lcom/loongcheer/interactivesdk/utils/Utils;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/loongcheer/interactivesdk/utils/Utils;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :try_start_18
    invoke-static {}, Lcom/loongcheer/interactivesdk/utils/Utils;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_35

    .line 55
    sget-object v0, Lcom/loongcheer/interactivesdk/utils/Utils;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "listkey":Ljava/lang/String;
    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->remoMap(Ljava/lang/String;)V

    .line 57
    sget-object v2, Lcom/loongcheer/interactivesdk/utils/Utils;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_35} :catch_36

    .line 61
    .end local v0    # "listkey":Ljava/lang/String;
    :cond_35
    goto :goto_37

    .line 59
    :catch_36
    move-exception v0

    .line 64
    :goto_37
    return-void
.end method

.method public static remoMap(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/loongcheer/interactivesdk/utils/Utils;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "\u6267\u884c\u5220\u9664"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public static toJsonResult(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "sign"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/loongcheer/interactivesdk/bean/ResultBean;

    invoke-direct {v0, p0, p1}, Lcom/loongcheer/interactivesdk/bean/ResultBean;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .local v0, "resultBean":Lcom/loongcheer/interactivesdk/bean/ResultBean;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
