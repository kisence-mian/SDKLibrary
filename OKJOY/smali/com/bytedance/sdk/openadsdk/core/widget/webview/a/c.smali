.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;
.super Ljava/lang/Object;
.source "TmplDbHelper.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c$1;

    const/high16 v1, 0x80000

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    .line 101
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;
    .registers 2

    .prologue
    .line 89
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    if-nez v0, :cond_13

    .line 90
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    monitor-enter v1

    .line 91
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    if-nez v0, :cond_12

    .line 92
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    .line 94
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 96
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    return-object v0

    .line 94
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "template_diff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rit"

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT UNIQUE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "md5"

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "url"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "version"

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    return-object v0
.end method

.method private d()Z
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 271
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 272
    const-string v0, "sp_template_delete"

    const-string v1, "delete_time"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 277
    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 278
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v0, v4

    if-gez v0, :cond_36

    .line 280
    const/4 v0, 0x0

    .line 288
    :goto_26
    return v0

    .line 274
    :cond_27
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    const-string v1, "delete_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_14

    .line 282
    :cond_36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 283
    const-string v0, "sp_template_delete"

    const-string v1, "delete_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    :goto_47
    const/4 v0, 0x1

    goto :goto_26

    .line 285
    :cond_49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    const-string v1, "delete_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_47
.end method

.method private e()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 292
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_template_delete"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    :cond_7
    :goto_7
    return-object v2

    .line 122
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/p;

    .line 123
    if-eqz v0, :cond_18

    move-object v2, v0

    .line 124
    goto :goto_7

    .line 127
    :cond_18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "template_diff"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_7

    .line 130
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 131
    const-string v0, "rit"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    const-string v2, "md5"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v4, "url"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    const-string v5, "data"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 136
    const-string v6, "version"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 138
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/d/p;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>()V

    .line 139
    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/d/p;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/d/p;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v2

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    invoke-virtual {v0, v3, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_98
    .catchall {:try_start_2f .. :try_end_98} :catchall_a6

    .line 152
    if-eqz v1, :cond_7

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    .line 152
    :cond_9f
    if-eqz v1, :cond_7

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    .line 152
    :catchall_a6
    move-exception v0

    if-eqz v1, :cond_ac

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ac
    throw v0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 235
    :goto_d
    return-void

    .line 210
    :cond_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "template_diff"

    const-string v3, "id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_97

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_97

    move v0, v8

    .line 213
    :goto_2e
    if-eqz v1, :cond_33

    .line 214
    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_a3

    .line 219
    :cond_33
    :goto_33
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 220
    const-string v2, "rit"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "md5"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v2, "url"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v2, "data"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "version"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz v0, :cond_99

    .line 228
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "template_diff"

    const-string v3, "id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    :goto_83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_97
    move v0, v9

    .line 211
    goto :goto_2e

    .line 230
    :cond_99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "template_diff"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_83

    .line 216
    :catch_a3
    move-exception v1

    goto :goto_33
.end method

.method a(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->d()Z

    move-result v0

    if-nez v0, :cond_f

    .line 258
    :cond_e
    :goto_e
    return-void

    .line 246
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 248
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 249
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 251
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 254
    :cond_30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 255
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 256
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "template_diff"

    const-string v4, "id=?"

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_e
.end method

.method b()Ljava/util/List;
    .registers 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/p;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 166
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "template_diff"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/multipro/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_9a

    .line 170
    :goto_17
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 171
    const-string v0, "rit"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    const-string v3, "md5"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    const-string v4, "url"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    const-string v5, "data"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    const-string v6, "version"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 178
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/d/p;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>()V

    .line 179
    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 181
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/d/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/d/p;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/d/p;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    .line 178
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c:Landroid/util/LruCache;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catchall {:try_start_17 .. :try_end_8d} :catchall_8e

    goto :goto_17

    .line 190
    :catchall_8e
    move-exception v0

    if-eqz v1, :cond_94

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_94
    throw v0

    .line 190
    :cond_95
    if-eqz v1, :cond_9a

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_9a
    return-object v8
.end method
