.class public Lcom/bytedance/sdk/openadsdk/j/d;
.super Ljava/lang/Object;
.source "PoolTaskStatistics.java"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/bytedance/sdk/openadsdk/j/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/j/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_core_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_max_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/j/a;JJ)V
    .registers 15

    .line 34
    if-nez p0, :cond_3

    .line 35
    return-void

    .line 37
    :cond_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/j/a/a;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/a;->getCorePoolSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/j/a;->getMaximumPoolSize()I

    move-result v4

    move-object v1, v9

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/j/a/a;-><init>(Ljava/lang/String;IIJJ)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 38
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/j/d;->a(Z)V

    .line 39
    return-void
.end method

.method public static a(Z)V
    .registers 24

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->f()Lcom/bytedance/sdk/openadsdk/j/c;

    move-result-object v1

    .line 46
    if-nez p0, :cond_10

    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_1be

    :cond_10
    if-eqz v1, :cond_1be

    .line 49
    sget-object v2, Lcom/bytedance/sdk/openadsdk/j/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2

    .line 50
    :try_start_15
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 51
    monitor-exit v2

    return-void

    .line 53
    :cond_1d
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/j/a/a;

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/j/a/a;

    .line 55
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 56
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_1bb

    .line 58
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_11f

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 60
    array-length v5, v0

    .line 62
    move v6, v3

    :goto_39
    if-ge v6, v5, :cond_b7

    .line 63
    aget-object v7, v0, v6

    .line 64
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->b()I

    move-result v9

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->c()I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/bytedance/sdk/openadsdk/j/d;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/sdk/openadsdk/j/a/c;

    .line 67
    if-nez v9, :cond_7d

    .line 68
    new-instance v9, Lcom/bytedance/sdk/openadsdk/j/a/c;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->b()I

    move-result v12

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->c()I

    move-result v13

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->d()J

    move-result-wide v14

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->d()J

    move-result-wide v16

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->e()J

    move-result-wide v18

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->e()J

    move-result-wide v20

    const/16 v22, 0x1

    move-object v10, v9

    invoke-direct/range {v10 .. v22}, Lcom/bytedance/sdk/openadsdk/j/a/c;-><init>(Ljava/lang/String;IIJJJJI)V

    .line 69
    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    goto :goto_b4

    .line 73
    :cond_7d
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->d()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/j/a/c;->c()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_90

    .line 74
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->d()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/j/a/c;->a(J)V

    .line 76
    :cond_90
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->d()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/j/a/c;->b(J)V

    .line 78
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->e()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/j/a/c;->d()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_aa

    .line 79
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->e()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/j/a/c;->c(J)V

    .line 81
    :cond_aa
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/j/a/a;->e()J

    move-result-wide v7

    invoke-virtual {v9, v7, v8}, Lcom/bytedance/sdk/openadsdk/j/a/c;->d(J)V

    .line 82
    invoke-virtual {v9, v4}, Lcom/bytedance/sdk/openadsdk/j/a/c;->a(I)V

    .line 62
    :goto_b4
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 86
    :cond_b7
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/j/a/c;

    .line 87
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/j/a/c;->e()I

    move-result v5

    if-lez v5, :cond_11e

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/j/a/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11e

    .line 88
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/j/a/c;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1c0

    :cond_e7
    goto :goto_fb

    :sswitch_e8
    const-string v7, "aidl"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e7

    move v6, v4

    goto :goto_fb

    :sswitch_f2
    const-string v7, "io"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e7

    move v6, v3

    :goto_fb
    packed-switch v6, :pswitch_data_1ca

    goto :goto_11b

    .line 93
    :pswitch_ff
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/j/a/c;->b(I)V

    goto :goto_11b

    .line 90
    :pswitch_10d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/j/a/c;->b(I)V

    .line 91
    nop

    .line 96
    :goto_11b
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/c;->a(Lcom/bytedance/sdk/openadsdk/j/a/c;)V

    .line 98
    :cond_11e
    goto :goto_bf

    .line 100
    :cond_11f
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 103
    nop

    .line 104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v3

    :goto_132
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    .line 107
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16b

    const-string v7, "tt_pangle_thread_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16b

    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 112
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 113
    if-nez v7, :cond_15f

    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_168

    .line 116
    :cond_15f
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 118
    :goto_168
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_16b
    goto :goto_132

    .line 123
    :cond_16c
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 124
    nop

    .line 125
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ae

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    :try_start_186
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1a6
    .catch Lorg/json/JSONException; {:try_start_186 .. :try_end_1a6} :catch_1a9

    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 132
    goto :goto_1ad

    .line 130
    :catch_1a9
    move-exception v0

    .line 131
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 134
    :goto_1ad
    goto :goto_17a

    .line 135
    :cond_1ae
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v2, Lcom/bytedance/sdk/openadsdk/j/a/b;

    invoke-direct {v2, v5, v0}, Lcom/bytedance/sdk/openadsdk/j/a/b;-><init>(ILjava/lang/String;)V

    .line 138
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/c;->a(Lcom/bytedance/sdk/openadsdk/j/a/b;)V

    goto :goto_1be

    .line 56
    :catchall_1bb
    move-exception v0

    :try_start_1bc
    monitor-exit v2
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1bb

    throw v0

    .line 141
    :cond_1be
    :goto_1be
    return-void

    nop

    :sswitch_data_1c0
    .sparse-switch
        0xd26 -> :sswitch_f2
        0x2daeb0 -> :sswitch_e8
    .end sparse-switch

    :pswitch_data_1ca
    .packed-switch 0x0
        :pswitch_10d
        :pswitch_ff
    .end packed-switch
.end method
