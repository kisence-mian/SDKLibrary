.class public Lcom/umeng/analytics/pro/x;
.super Ljava/lang/Object;
.source "SessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/x$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/umeng/analytics/pro/x;


# instance fields
.field private a:Lcom/umeng/analytics/pro/v;

.field private b:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/pro/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/umeng/analytics/pro/w;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/w;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/x;->a:Lcom/umeng/analytics/pro/v;

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)J
    .registers 6

    .line 253
    nop

    .line 255
    const-wide/16 v0, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    .line 256
    goto :goto_e

    :catch_c
    move-exception p1

    move-wide p1, v0

    .line 257
    :goto_e
    cmp-long v2, p1, v0

    if-gtz v2, :cond_16

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 261
    :cond_16
    return-wide p1
.end method

.method public static a()Lcom/umeng/analytics/pro/x;
    .registers 2

    .line 40
    sget-object v0, Lcom/umeng/analytics/pro/x;->c:Lcom/umeng/analytics/pro/x;

    if-nez v0, :cond_17

    .line 41
    const-class v0, Lcom/umeng/analytics/pro/x;

    monitor-enter v0

    .line 42
    :try_start_7
    sget-object v1, Lcom/umeng/analytics/pro/x;->c:Lcom/umeng/analytics/pro/x;

    if-nez v1, :cond_12

    .line 43
    new-instance v1, Lcom/umeng/analytics/pro/x;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/x;-><init>()V

    sput-object v1, Lcom/umeng/analytics/pro/x;->c:Lcom/umeng/analytics/pro/x;

    .line 45
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 48
    :cond_17
    :goto_17
    sget-object v0, Lcom/umeng/analytics/pro/x;->c:Lcom/umeng/analytics/pro/x;

    return-object v0
.end method

.method private a(JJJLjava/lang/String;Z)V
    .registers 21

    .line 281
    move-object v1, p0

    iget-object v0, v1, Lcom/umeng/analytics/pro/x;->d:Ljava/util/List;

    if-eqz v0, :cond_31

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/umeng/analytics/pro/x$a;

    .line 284
    if-eqz p8, :cond_24

    .line 285
    :try_start_18
    iget-object v5, v1, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    move-object/from16 v4, p7

    move-wide v6, p1

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-interface/range {v3 .. v11}, Lcom/umeng/analytics/pro/x$a;->a(Ljava/lang/String;Ljava/lang/String;JJJ)V

    goto :goto_2f

    .line 287
    :cond_24
    iget-object v4, v1, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    move-wide v5, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-interface/range {v3 .. v10}, Lcom/umeng/analytics/pro/x$a;->a(Ljava/lang/String;JJJ)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_2e

    goto :goto_2f

    .line 289
    :catch_2e
    move-exception v0

    :goto_2f
    nop

    .line 290
    goto :goto_9

    .line 292
    :cond_31
    return-void
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .registers 20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 197
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    const-string v1, "pre_session_id"

    invoke-virtual/range {p0 .. p1}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    goto :goto_1a

    .line 200
    :catch_19
    move-exception v0

    :goto_1a
    nop

    .line 202
    invoke-direct/range {p0 .. p1}, Lcom/umeng/analytics/pro/x;->h(Landroid/content/Context;)J

    move-result-wide v12

    .line 203
    invoke-direct/range {p0 .. p1}, Lcom/umeng/analytics/pro/x;->i(Landroid/content/Context;)J

    move-result-wide v14

    .line 204
    iget-object v0, v10, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    .line 206
    invoke-static/range {p1 .. p1}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;)J

    move-result-wide v1

    .line 207
    const-wide/16 v3, 0x1388

    mul-long v16, v1, v3

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>>*** \u8bfb\u53d6 foreground count \u503c\u5b8c\u6210\uff0ccount\u6b21\u6570\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobclickRT"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "header_foreground_count"

    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 213
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 214
    const-string v1, "--->>>*** \u8bfb\u53d6 foreground count druation\u503c\u5b8c\u6210\uff0c\u7ec8\u6b62checker timer."

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->removeEvent()V

    goto :goto_67

    .line 217
    :cond_5c
    const-string v1, "--->>>*** \u8bfb\u53d6 foreground count druation\u503c\u5b8c\u6210\uff0c\u65e0\u672a\u5904\u7406check timer\u4e8b\u4ef6\u3002"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 220
    :cond_62
    const-string v1, "--->>>*** foreground count druation\u4e91\u63a7\u53c2\u6570\u5173\u95ed\u3002"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_67
    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide v4, v12

    move-wide/from16 v6, v16

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/umeng/analytics/pro/x;->a(JJJLjava/lang/String;Z)V

    .line 227
    iget-object v1, v10, Lcom/umeng/analytics/pro/x;->a:Lcom/umeng/analytics/pro/v;

    invoke-interface {v1, v11}, Lcom/umeng/analytics/pro/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    .line 230
    const/4 v9, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/umeng/analytics/pro/x;->a(JJJLjava/lang/String;Z)V

    .line 234
    iget-object v0, v10, Lcom/umeng/analytics/pro/x;->a:Lcom/umeng/analytics/pro/v;

    iget-object v1, v10, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    invoke-interface {v0, v11, v1}, Lcom/umeng/analytics/pro/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    iget-object v0, v10, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method private g(Landroid/content/Context;)Z
    .registers 8

    .line 241
    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 242
    return v1

    .line 244
    :cond_a
    invoke-static {p1}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 245
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1c

    .line 246
    const/4 p1, 0x1

    return p1

    .line 249
    :cond_1c
    return v1
.end method

.method private h(Landroid/content/Context;)J
    .registers 4

    .line 265
    const-string v0, "a_end_time"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/x;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private i(Landroid/content/Context;)J
    .registers 4

    .line 269
    const-string v0, "session_start_time"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/x;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private j(Landroid/content/Context;)Z
    .registers 12

    .line 300
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 302
    :try_start_4
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 304
    const-string v1, "a_start_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 305
    const-string v1, "a_end_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 307
    const-string v6, "header_foreground_count"

    invoke-static {v6}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v6
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_5a

    const-string v7, "MobclickRT"

    if-eqz v6, :cond_3b

    .line 310
    cmp-long v6, v4, v2

    if-lez v6, :cond_3b

    cmp-long v6, v0, v2

    if-nez v6, :cond_3b

    .line 311
    :try_start_28
    invoke-static {p1}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;)J

    move-result-wide v8

    .line 312
    cmp-long p1, v8, v2

    if-lez p1, :cond_3b

    .line 313
    const-wide/16 v0, 0x1388

    mul-long v8, v8, v0

    .line 314
    const-string p1, "--->>> last session end time stamp = 0, reconstruct it by foreground count value."

    invoke-static {v7, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    add-long v0, v4, v8

    .line 320
    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> interval of last session is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-long v2, v0, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/umeng/analytics/pro/x;->a:Lcom/umeng/analytics/pro/v;

    invoke-interface {p1, v4, v5, v0, v1}, Lcom/umeng/analytics/pro/v;->a(JJ)Z

    move-result p1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_59} :catch_5a

    return p1

    .line 322
    :catch_5a
    move-exception p1

    .line 324
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 68
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 70
    if-nez p1, :cond_9

    .line 71
    const-string p1, ""

    return-object p1

    .line 74
    :cond_9
    const-string v0, ""

    .line 76
    :try_start_b
    const-class v1, Lcom/umeng/analytics/pro/x;

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_1f

    .line 77
    :try_start_e
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "pre_session_id"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    monitor-exit v1

    goto :goto_20

    :catchall_1c
    move-exception p1

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 79
    :catch_1f
    move-exception p1

    :goto_20
    nop

    .line 81
    return-object v0
.end method

.method public a(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6

    .line 156
    iget-object p1, p0, Lcom/umeng/analytics/pro/x;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SUB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "%0"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "d"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/x;->e:Ljava/lang/String;

    .line 160
    :cond_5b
    iget-object p1, p0, Lcom/umeng/analytics/pro/x;->e:Ljava/lang/String;

    return-object p1
.end method

.method public a(J)V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->a:Lcom/umeng/analytics/pro/v;

    invoke-interface {v0, p1, p2}, Lcom/umeng/analytics/pro/v;->a(J)V

    .line 57
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/x$a;)V
    .registers 3

    .line 353
    if-nez p1, :cond_3

    .line 354
    return-void

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/x;->d:Ljava/util/List;

    .line 359
    :cond_e
    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 360
    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1b
    return-void
.end method

.method public b()J
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->a:Lcom/umeng/analytics/pro/v;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/v;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 95
    :try_start_1
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 97
    if-nez p1, :cond_b

    .line 98
    const-string p1, ""
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_23

    monitor-exit p0

    return-object p1

    .line 100
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/x;->e(Landroid/content/Context;)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_23

    if-eqz v0, :cond_1f

    .line 105
    :try_start_17
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/x;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_1e
    .catchall {:try_start_17 .. :try_end_1d} :catchall_23

    goto :goto_1f

    .line 106
    :catch_1e
    move-exception p1

    .line 109
    :cond_1f
    :goto_1f
    :try_start_1f
    iget-object p1, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object p1

    .line 94
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lcom/umeng/analytics/pro/x$a;)V
    .registers 3

    .line 369
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->d:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    .line 372
    :cond_d
    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 373
    return-void

    .line 370
    :cond_13
    :goto_13
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 118
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 120
    if-nez p1, :cond_9

    .line 121
    const-string p1, ""

    return-object p1

    .line 124
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/x;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_11

    .line 125
    :catch_10
    move-exception p1

    :goto_11
    nop

    .line 127
    iget-object p1, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    return-object p1
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 142
    :try_start_8
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_17

    .line 143
    :catch_16
    move-exception p1

    .line 146
    :cond_17
    :goto_17
    iget-object p1, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    return-object p1
.end method

.method public e(Landroid/content/Context;)Z
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 171
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    .line 173
    :cond_e
    iget-object v0, p0, Lcom/umeng/analytics/pro/x;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 174
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/x;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 175
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/x;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x1

    :goto_26
    return p1
.end method
