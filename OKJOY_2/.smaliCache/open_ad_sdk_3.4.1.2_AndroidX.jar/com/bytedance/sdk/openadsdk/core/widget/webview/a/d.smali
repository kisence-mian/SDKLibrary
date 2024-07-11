.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;
.super Ljava/lang/Object;
.source "TmplDiffManager.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;
    .registers 2

    .line 46
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    if-nez v0, :cond_17

    .line 47
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    monitor-enter v0

    .line 48
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    if-nez v1, :cond_12

    .line 49
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    .line 51
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 53
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 264
    return-void

    .line 266
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_78

    .line 269
    const-string v1, "md5"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 273
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_77

    .line 277
    :cond_32
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/r;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/d/r;-><init>()V

    .line 278
    invoke-virtual {v3, p2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p2

    .line 279
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p2

    .line 280
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p2

    .line 281
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 282
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 283
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/r;)V

    .line 288
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b()V

    .line 290
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 291
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    .line 292
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V

    goto :goto_78

    .line 275
    :cond_77
    :goto_77
    return-void

    .line 295
    :cond_78
    :goto_78
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    monitor-enter p0

    .line 218
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_21

    .line 221
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1f

    .line 224
    :cond_14
    move-object v0, p0

    move-object v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_55

    goto :goto_3f

    .line 222
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 228
    :cond_21
    :try_start_21
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 229
    invoke-direct {p0, p2, p6, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 232
    :cond_2b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 234
    invoke-direct {p0, p2, p6, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 237
    :cond_35
    move-object v0, p0

    move-object v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_3f
    invoke-static {p5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result p1

    .line 242
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->e()Z

    move-result p2

    if-eqz p2, :cond_4b

    if-eqz p1, :cond_53

    .line 244
    :cond_4b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V
    :try_end_53
    .catchall {:try_start_21 .. :try_end_53} :catchall_55

    .line 246
    :cond_53
    monitor-exit p0

    return-void

    .line 217
    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()V
    .registers 8

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    if-nez v0, :cond_7

    .line 77
    return-void

    .line 80
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->E()I

    move-result v0

    .line 81
    if-gtz v0, :cond_13

    .line 82
    const/16 v0, 0x64

    .line 84
    :cond_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b()Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_97

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_29

    goto/16 :goto_97

    .line 90
    :cond_29
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/d/r;

    .line 92
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    goto :goto_32

    .line 94
    :cond_46
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v0, v4

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 97
    nop

    .line 98
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 99
    if-nez v5, :cond_70

    .line 100
    goto :goto_61

    .line 102
    :cond_70
    if-ge v4, v0, :cond_8d

    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 104
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 105
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/d/r;

    .line 106
    if-nez v5, :cond_86

    .line 107
    goto :goto_61

    .line 109
    :cond_86
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_8d
    goto :goto_61

    .line 112
    :cond_8e
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/util/Set;)V

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    return-void

    .line 86
    :cond_97
    :goto_97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end doCheckAndDeleteTask maxTplCnt,local size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \u76ee\u524d\u5b58\u50a8\u7684\u6a21\u7248\u7684\u4e2a\u6570 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmplDiffManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 250
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/r;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;-><init>()V

    .line 251
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 252
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 253
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 254
    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/d/r;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 255
    invoke-virtual {p1, p5}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 256
    invoke-virtual {p1, p6}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    .line 258
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/r;)V

    .line 259
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b()V

    .line 260
    return-void
.end method

.method private c(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .line 136
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/bytedance/sdk/adnet/b/j;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v0}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 138
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/adnet/b/j;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 139
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 141
    nop

    .line 144
    :try_start_1e
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    .line 145
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_38

    .line 146
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_39

    return-object v0

    .line 150
    :cond_38
    goto :goto_3d

    .line 148
    :catch_39
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    :goto_3d
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;
    .registers 3

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 8

    .line 155
    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_80

    .line 158
    :cond_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->d()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->c()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->e()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p1

    .line 164
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a()Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v5

    .line 165
    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/i;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/i;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/i;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/i;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4ece\u7269\u6599\u4e2d\u83b7\u53d6\u6a21\u7248\u4fe1\u606f\u8fdb\u884c\u4fdd\u5b58 rit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TmplDiffManager"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/h/i;Ljava/lang/String;)V

    .line 172
    return-void

    .line 156
    :cond_80
    :goto_80
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/h/i;Ljava/lang/String;)V
    .registers 12

    .line 194
    const-string v0, "TmplDiffManager"

    if-nez p1, :cond_a

    .line 195
    const-string p1, "saveTemplate error: tplInfo == null"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    .line 198
    :cond_a
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/h/i;->a:Ljava/lang/String;

    .line 199
    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/core/h/i;->c:Ljava/lang/String;

    .line 200
    iget-object v5, p1, Lcom/bytedance/sdk/openadsdk/core/h/i;->b:Ljava/lang/String;

    .line 201
    iget-object v6, p1, Lcom/bytedance/sdk/openadsdk/core/h/i;->d:Ljava/lang/String;

    .line 202
    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/core/h/i;->e:Ljava/lang/String;

    .line 203
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object p2

    :cond_22
    move-object v8, p2

    .line 204
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 205
    const-string p1, "saveTemplate error:tmpId is empty"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 209
    :cond_2f
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 215
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 316
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Ljava/util/Set;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 319
    goto :goto_12

    .line 317
    :catchall_8
    move-exception p1

    .line 318
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TmplDiffManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_12
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 70
    const/4 p1, 0x0

    return-object p1

    .line 72
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 8

    .line 175
    if-eqz p1, :cond_68

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_68

    .line 178
    :cond_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->d()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->c()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->e()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p1

    .line 184
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a()Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v5

    .line 185
    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/h/i;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/i;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/i;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/i;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/i;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/i;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/h/i;Ljava/lang/String;)V

    .line 191
    return-void

    .line 176
    :cond_68
    :goto_68
    return-void
.end method
