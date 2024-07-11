.class Lcom/bytedance/sdk/openadsdk/core/g$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/g;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g;Landroid/content/Context;)V
    .registers 5

    .line 208
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g$a;->b:Lcom/bytedance/sdk/openadsdk/core/g;

    .line 209
    const-string p1, "ttopensdk.db"

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 210
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g$a;->a:Landroid/content/Context;

    .line 211
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .line 290
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g$a;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    .line 294
    nop

    .line 296
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "DROP TABLE IF EXISTS %s ;"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    goto :goto_11

    .line 300
    :cond_2d
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .registers 4

    .line 230
    const-string p2, "DBHelper"

    const-string v0, "initDB........"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/f;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/n;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/l;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/g;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    :try_start_5
    const-string v1, "select name from sqlite_master where type=\'table\' order by name"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 308
    if-eqz p1, :cond_30

    .line 309
    :goto_e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 311
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    const-string v2, "android_metadata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "sqlite_sequence"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 317
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_2c
    goto :goto_e

    .line 321
    :cond_2d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_31

    .line 325
    :cond_30
    goto :goto_32

    .line 323
    :catch_31
    move-exception p1

    .line 327
    :goto_32
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g$a;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/g$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 221
    goto :goto_7

    .line 220
    :catchall_6
    move-exception p1

    .line 222
    :goto_7
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    .line 247
    const-string v0, "DBHelper"

    :try_start_2
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

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-le p2, p3, :cond_36

    .line 250
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 251
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/g$a;->b:Lcom/bytedance/sdk/openadsdk/core/g;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/g;->b(Lcom/bytedance/sdk/openadsdk/core/g;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/g$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 252
    const-string p3, "onUpgrade...\u9006\u5411\u5b89\u88c5.\u6570\u636e\u5e93\u91cd\u7f6e-\u521b\u5efa\u8868....."

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 254
    :cond_36
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/g$a;->b:Lcom/bytedance/sdk/openadsdk/core/g;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/g;->b(Lcom/bytedance/sdk/openadsdk/core/g;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/g$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 258
    :goto_3f
    packed-switch p2, :pswitch_data_6a

    goto :goto_67

    .line 275
    :pswitch_43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/l;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_67

    .line 272
    :pswitch_4b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    goto :goto_67

    .line 269
    :pswitch_53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/n;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    goto :goto_67

    .line 265
    :pswitch_5b
    const-string p2, "DROP TABLE IF EXISTS \'ad_video_info\';"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    goto :goto_67

    .line 261
    :pswitch_61
    const-string p1, "onUpgrade.....\u6267\u884c\u8868\u521b\u5efa....."

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_2 .. :try_end_66} :catchall_68

    .line 262
    nop

    .line 280
    :goto_67
    goto :goto_69

    .line 279
    :catchall_68
    move-exception p1

    .line 281
    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5b
        :pswitch_53
        :pswitch_4b
        :pswitch_43
    .end packed-switch
.end method
