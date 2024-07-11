.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;
.super Ljava/lang/Object;
.source "TmplDbHelper.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;

.field private d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c$1;

    const/16 v1, 0x7d0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->d:Landroid/util/LruCache;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    .line 67
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;
    .registers 2

    .line 55
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    if-nez v0, :cond_17

    .line 56
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    monitor-enter v0

    .line 57
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    if-nez v1, :cond_12

    .line 58
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    .line 60
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 62
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "template_diff_new"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    const-string v1, "rit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " TEXT UNIQUE,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 346
    const-string v2, "md5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    const-string v2, "version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    const-string v1, "update_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 295
    return-void

    .line 297
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->d:Landroid/util/LruCache;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-gtz v0, :cond_12

    goto :goto_1f

    .line 300
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->d:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p1

    .line 298
    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;
    .registers 13

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 85
    return-object v1

    .line 87
    :cond_8
    nop

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_c
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->d:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/r;

    .line 90
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_d6

    .line 91
    if-eqz v2, :cond_1c

    .line 92
    return-object v2

    .line 95
    :cond_1c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "template_diff_new"

    const/4 v5, 0x0

    const-string v6, "id=?"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 96
    if-eqz p1, :cond_d5

    .line 98
    :try_start_34
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 99
    const-string v0, "rit"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v2, "id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v3, "md5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    const-string v4, "url"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    const-string v5, "data"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    const-string v6, "version"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 105
    const-string v7, "update_time"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 106
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/d/r;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/d/r;-><init>()V

    .line 107
    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/d/r;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    .line 114
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a8
    .catchall {:try_start_34 .. :try_end_a8} :catchall_c3

    .line 115
    :try_start_a8
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->d:Landroid/util/LruCache;

    invoke-virtual {v4, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_ba

    .line 118
    :try_start_ae
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catchall {:try_start_ae .. :try_end_b3} :catchall_c3

    .line 120
    nop

    .line 125
    if-eqz p1, :cond_b9

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_b9
    return-object v0

    .line 116
    :catchall_ba
    move-exception v0

    :try_start_bb
    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    :try_start_bc
    throw v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_c3

    .line 125
    :cond_bd
    if-eqz p1, :cond_d5

    .line 126
    :goto_bf
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_d5

    .line 122
    :catchall_c3
    move-exception v0

    .line 123
    :try_start_c4
    const-string v2, "TmplDbHelper"

    const-string v3, "getTemplate error"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_ce

    .line 125
    if-eqz p1, :cond_d5

    .line 126
    goto :goto_bf

    .line 125
    :catchall_ce
    move-exception v0

    if-eqz p1, :cond_d4

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_d4
    throw v0

    .line 131
    :cond_d5
    :goto_d5
    return-object v1

    .line 90
    :catchall_d6
    move-exception p1

    :try_start_d7
    monitor-exit v0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw p1
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/r;)V
    .registers 12

    .line 210
    if-nez p1, :cond_3

    .line 211
    return-void

    .line 213
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 214
    return-void

    .line 218
    :cond_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "template_diff_new"

    const/4 v3, 0x0

    const-string v4, "id=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_32

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_32

    move v2, v0

    goto :goto_33

    :cond_32
    move v2, v9

    .line 221
    :goto_33
    if-eqz v1, :cond_3b

    .line 222
    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3b

    .line 224
    :catchall_39
    move-exception v1

    goto :goto_3c

    .line 225
    :cond_3b
    :goto_3b
    nop

    .line 227
    :goto_3c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 228
    const-string v3, "rit"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v3, "md5"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "url"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v3, "data"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v3, "version"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "update_time"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    if-eqz v2, :cond_96

    .line 237
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "template_diff_new"

    const-string v4, "id=?"

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v9

    invoke-static {v2, v3, v1, v4, v0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_9f

    .line 239
    :cond_96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "template_diff_new"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 242
    :goto_9f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_a2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->d:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_b6

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    return-void

    .line 244
    :catchall_b6
    move-exception p1

    :try_start_b7
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw p1
.end method

.method a(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 280
    if-eqz p1, :cond_38

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_38

    .line 283
    :cond_9
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 285
    array-length v0, p1

    if-lez v0, :cond_37

    .line 286
    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    array-length v2, p1

    if-ge v1, v2, :cond_37

    .line 287
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aget-object v4, p1, v1

    aput-object v4, v3, v0

    const-string v4, "template_diff_new"

    const-string v5, "id=?"

    invoke-static {v2, v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 291
    :cond_37
    return-void

    .line 281
    :cond_38
    :goto_38
    return-void
.end method

.method b()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/r;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "template_diff_new"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_c0

    .line 170
    :goto_17
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 171
    const-string v2, "rit"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    const-string v3, "id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 173
    const-string v4, "md5"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    const-string v5, "url"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 175
    const-string v6, "data"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 176
    const-string v7, "version"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 177
    const-string v8, "update_time"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 178
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/d/r;

    invoke-direct {v9}, Lcom/bytedance/sdk/openadsdk/core/d/r;-><init>()V

    .line 179
    invoke-virtual {v9, v2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/d/r;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    .line 184
    invoke-virtual {v2, v7}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    .line 185
    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8e
    .catchall {:try_start_17 .. :try_end_8e} :catchall_ae

    .line 187
    :try_start_8e
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->d:Landroid/util/LruCache;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_8e .. :try_end_9e} :catchall_a5

    .line 190
    :try_start_9e
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catchall {:try_start_9e .. :try_end_a3} :catchall_ae

    .line 191
    goto/16 :goto_17

    .line 188
    :catchall_a5
    move-exception v3

    :try_start_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    :try_start_a7
    throw v3
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_ae

    .line 195
    :cond_a8
    if-eqz v1, :cond_c0

    .line 196
    :goto_aa
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_c0

    .line 192
    :catchall_ae
    move-exception v2

    .line 193
    :try_start_af
    const-string v3, "TmplDbHelper"

    const-string v4, "getTemplate error"

    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_b9

    .line 195
    if-eqz v1, :cond_c0

    .line 196
    goto :goto_aa

    .line 195
    :catchall_b9
    move-exception v0

    if-eqz v1, :cond_bf

    .line 196
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_bf
    throw v0

    .line 201
    :cond_c0
    :goto_c0
    return-object v0
.end method

.method b(Ljava/lang/String;)Ljava/util/Set;
    .registers 12
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

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 140
    return-object v1

    .line 142
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "template_diff_new"

    const-string v5, "rit=?"

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 144
    if-eqz p1, :cond_47

    .line 146
    :goto_25
    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 147
    const-string v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_40

    .line 149
    goto :goto_25

    .line 150
    :cond_39
    nop

    .line 152
    if-eqz p1, :cond_3f

    .line 153
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_3f
    return-object v0

    .line 152
    :catchall_40
    move-exception v0

    if-eqz p1, :cond_46

    .line 153
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_46
    throw v0

    .line 157
    :cond_47
    return-object v1
.end method
