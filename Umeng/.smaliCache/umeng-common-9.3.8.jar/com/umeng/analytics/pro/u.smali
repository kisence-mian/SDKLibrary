.class public Lcom/umeng/analytics/pro/u;
.super Ljava/lang/Object;
.source "ViewPageTracker.java"


# static fields
.field private static final c:I = 0x5

.field private static d:Lorg/json/JSONArray;

.field private static e:Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/umeng/analytics/vshelper/a;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/u;->d:Lorg/json/JSONArray;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/u;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/u;->f:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Ljava/util/Stack;

    .line 47
    invoke-static {}, Lcom/umeng/analytics/vshelper/PageNameMonitor;->getInstance()Lcom/umeng/analytics/vshelper/PageNameMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/u;->b:Lcom/umeng/analytics/vshelper/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .line 51
    if-eqz p0, :cond_46

    .line 53
    nop

    .line 54
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    sget-object v1, Lcom/umeng/analytics/pro/u;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_44

    .line 58
    :try_start_b
    sget-object v2, Lcom/umeng/analytics/pro/u;->d:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/umeng/analytics/pro/u;->d:Lorg/json/JSONArray;

    .line 60
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_41

    .line 61
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_46

    .line 62
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v2, "__a"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_46

    .line 66
    invoke-static {p0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p0

    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/t;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/h$a;->b:Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z
    :try_end_40
    .catchall {:try_start_19 .. :try_end_40} :catchall_44

    goto :goto_46

    .line 60
    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 73
    :catchall_44
    move-exception p0

    goto :goto_47

    .line 74
    :cond_46
    :goto_46
    nop

    .line 75
    :goto_47
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .line 180
    const/4 v0, 0x2

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 11

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 79
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 80
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_31

    .line 81
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const-string v2, "@"

    const/4 v3, 0x0

    aput-object v2, v5, v3

    .line 83
    new-array v6, v1, [Ljava/lang/String;

    aput-object v0, v6, v3

    .line 84
    sget-object v2, Lcom/umeng/analytics/pro/i;->F:Ljava/lang/String;

    const-string v4, "\\|"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 87
    :cond_31
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->b:Lcom/umeng/analytics/vshelper/a;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/vshelper/a;->customPageBegin(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->f:Ljava/util/Map;

    monitor-enter v0

    .line 89
    :try_start_39
    iget-object v1, p0, Lcom/umeng/analytics/pro/u;->f:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 91
    iget-object v1, p0, Lcom/umeng/analytics/pro/u;->a:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_51
    monitor-exit v0

    goto :goto_56

    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_39 .. :try_end_55} :catchall_53

    throw p1

    .line 95
    :cond_56
    :goto_56
    return-void
.end method

.method public b()V
    .registers 12

    .line 159
    nop

    .line 160
    nop

    .line 162
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->f:Ljava/util/Map;

    monitor-enter v0

    .line 163
    :try_start_5
    iget-object v1, p0, Lcom/umeng/analytics/pro/u;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-lez v8, :cond_3f

    .line 165
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 166
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-wide v9, v2

    move-object v2, v4

    move-wide v3, v9

    .line 168
    :cond_3f
    goto :goto_12

    .line 169
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_47

    .line 170
    if-eqz v2, :cond_46

    .line 171
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/u;->b(Ljava/lang/String;)V

    .line 173
    :cond_46
    return-void

    .line 169
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    goto :goto_4b

    :goto_4a
    throw v1

    :goto_4b
    goto :goto_4a
.end method

.method public b(Ljava/lang/String;)V
    .registers 12

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 99
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b1

    .line 101
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->f:Ljava/util/Map;

    monitor-enter v0

    .line 102
    :try_start_13
    iget-object v3, p0, Lcom/umeng/analytics/pro/u;->f:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 103
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_ae

    .line 105
    if-nez v3, :cond_1f

    .line 109
    return-void

    .line 112
    :cond_1f
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 113
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_3e

    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 114
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 118
    :cond_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 119
    sget-object v6, Lcom/umeng/analytics/pro/u;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 121
    :try_start_4a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 122
    const-string v7, "page_name"

    invoke-virtual {v0, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v7, "duration"

    invoke-virtual {v0, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    const-string v4, "page_start"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v3, "type"

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/u;->a()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    sget-object v3, Lcom/umeng/analytics/pro/u;->d:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    sget-object v0, Lcom/umeng/analytics/pro/u;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_85

    .line 129
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 130
    if-eqz v3, :cond_85

    .line 131
    const/16 v4, 0x1003

    invoke-static {v3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_85
    .catchall {:try_start_4a .. :try_end_85} :catchall_86

    .line 135
    :cond_85
    goto :goto_87

    .line 134
    :catchall_86
    move-exception v0

    .line 136
    :goto_87
    :try_start_87
    monitor-exit v6
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_ab

    .line 137
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 138
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_aa

    .line 140
    new-array v6, v2, [Ljava/lang/String;

    const-string v0, "@"

    aput-object v0, v6, v1

    .line 141
    new-array v7, v2, [Ljava/lang/String;

    aput-object p1, v7, v1

    .line 142
    sget-object v3, Lcom/umeng/analytics/pro/i;->E:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\\|"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 145
    :cond_aa
    goto :goto_d3

    .line 136
    :catchall_ab
    move-exception p1

    :try_start_ac
    monitor-exit v6
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p1

    .line 103
    :catchall_ae
    move-exception p1

    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw p1

    .line 146
    :cond_b1
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 147
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_d3

    .line 149
    new-array v6, v2, [Ljava/lang/String;

    const-string v0, "@"

    aput-object v0, v6, v1

    .line 150
    new-array v7, v2, [Ljava/lang/String;

    aput-object p1, v7, v1

    .line 151
    sget-object v3, Lcom/umeng/analytics/pro/i;->G:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\\|"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    :cond_d3
    :goto_d3
    return-void
.end method
