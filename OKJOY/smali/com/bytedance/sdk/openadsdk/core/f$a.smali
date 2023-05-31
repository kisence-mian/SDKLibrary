.class Lcom/bytedance/sdk/openadsdk/core/f$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/f;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 208
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->b:Lcom/bytedance/sdk/openadsdk/core/f;

    .line 209
    const-string v0, "ttopensdk.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 210
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->a:Landroid/content/Context;

    .line 211
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 294
    const-string v1, "DROP TABLE IF EXISTS %s ;"

    .line 296
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_12

    .line 300
    :cond_2c
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 230
    const-string v0, "DBHelper"

    const-string v1, "initDB........"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/n;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/l;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    :try_start_5
    const-string v1, "select name from sqlite_master where type=\'table\' order by name"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_2e

    .line 309
    :cond_e
    :goto_e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 311
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 316
    const-string v3, "android_metadata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "sqlite_sequence"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 317
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 323
    :catch_2d
    move-exception v1

    .line 327
    :cond_2e
    :goto_2e
    return-object v0

    .line 321
    :cond_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_2d

    goto :goto_2e
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 222
    :goto_5
    return-void

    .line 220
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    .prologue
    .line 247
    :try_start_0
    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade....\u6570\u636e\u5e93\u7248\u672c\u5347\u7ea7.....old:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-le p2, p3, :cond_3b

    .line 250
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->b:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 252
    const-string v0, "DBHelper"

    const-string v1, "onUpgrade...\u9006\u5411\u5b89\u88c5.\u6570\u636e\u5e93\u91cd\u7f6e-\u521b\u5efa\u8868....."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_37
    packed-switch p2, :pswitch_data_6e

    .line 281
    :goto_3a
    return-void

    .line 254
    :cond_3b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->b:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    goto :goto_37

    .line 279
    :catch_45
    move-exception v0

    goto :goto_3a

    .line 261
    :pswitch_47
    const-string v0, "DBHelper"

    const-string v1, "onUpgrade.....\u6267\u884c\u8868\u521b\u5efa....."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 265
    :pswitch_4f
    const-string v0, "DROP TABLE IF EXISTS \'ad_video_info\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3a

    .line 269
    :pswitch_55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/n;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3a

    .line 272
    :pswitch_5d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3a

    .line 275
    :pswitch_65
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/l;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6c} :catch_45

    goto :goto_3a

    .line 258
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_4f
        :pswitch_55
        :pswitch_5d
        :pswitch_65
    .end packed-switch
.end method
