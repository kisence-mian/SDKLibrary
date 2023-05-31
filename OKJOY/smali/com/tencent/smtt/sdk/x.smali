.class public Lcom/tencent/smtt/sdk/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field static b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/CookieManager;->LOGTAG:Ljava/lang/String;

    sput-object v0, Lcom/tencent/smtt/sdk/x;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    sget-object v0, Lcom/tencent/smtt/sdk/x;->b:Ljava/io/File;

    if-nez v0, :cond_16

    if-eqz p0, :cond_16

    new-instance v0, Ljava/io/File;

    const-string v1, "webview"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "Cookies"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/smtt/sdk/x;->b:Ljava/io/File;

    :cond_16
    sget-object v0, Lcom/tencent/smtt/sdk/x;->b:Ljava/io/File;

    if-nez v0, :cond_4c

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "app_webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cookies"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/smtt/sdk/x;->b:Ljava/io/File;

    :cond_4c
    sget-object v0, Lcom/tencent/smtt/sdk/x;->b:Ljava/io/File;

    return-object v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "raws:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",columns:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_6e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_4b
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_51
    if-ge v0, v2, :cond_63

    :try_start_53
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_73

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_63
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_6e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_73
    move-exception v4

    goto :goto_60
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
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

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "select * from sqlite_master where type=\'table\'"

    const/4 v3, 0x0

    :try_start_c
    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_3d
    .catchall {:try_start_c .. :try_end_f} :catchall_4f

    move-result-object v0

    :try_start_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_16
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/x;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_28} :catch_3d
    .catchall {:try_start_10 .. :try_end_28} :catchall_64

    move-result v2

    if-nez v2, :cond_16

    :cond_2b
    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_30
    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3b
    :goto_3b
    move-object v0, v1

    goto :goto_3

    :catch_3d
    move-exception v2

    if-eqz v0, :cond_43

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_43
    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3b

    :catchall_4f
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_53
    if-eqz v1, :cond_58

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_58
    if-eqz p0, :cond_63

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_63
    throw v0

    :catchall_64
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_53
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/smtt/sdk/CookieManager$a;Ljava/lang/String;ZZ)V
    .registers 15

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    sget-object v0, Lcom/tencent/smtt/sdk/CookieManager$a;->b:Lcom/tencent/smtt/sdk/CookieManager$a;

    if-ne p1, v0, :cond_10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_10
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v0, v4

    if-lez v0, :cond_5

    invoke-static {p0}, Lcom/tencent/smtt/sdk/x;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :try_start_26
    const-string v0, "select * from cookies"

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_ae

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ae

    :cond_39
    const-string v0, "host_key"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/tencent/smtt/sdk/CookieManager$a;->b:Lcom/tencent/smtt/sdk/CookieManager$a;

    if-ne p1, v0, :cond_56

    array-length v8, v4

    move v0, v3

    :goto_49
    if-ge v0, v8, :cond_15c

    aget-object v9, v4, v0

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ef

    move v0, v2

    :goto_54
    if-eqz v0, :cond_a8

    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "name"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "expires_utc"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "priority"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_ab} :catch_f3
    .catchall {:try_start_26 .. :try_end_ab} :catchall_11d

    move-result v0

    if-nez v0, :cond_39

    :cond_ae
    if-eqz v1, :cond_b3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b3
    if-eqz v5, :cond_be

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_be
    :goto_be
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/tencent/smtt/sdk/x;->b(Landroid/content/Context;)Z

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_cf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lcom/tencent/smtt/sdk/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_cf

    :cond_ef
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_49

    :catch_f3
    move-exception v0

    :try_start_f4
    sget-object v3, Lcom/tencent/smtt/sdk/x;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "getCookieDBVersion exception:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_f4 .. :try_end_10c} :catchall_11d

    if-eqz v1, :cond_111

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_111
    if-eqz v5, :cond_be

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_be

    :catchall_11d
    move-exception v0

    if-eqz v1, :cond_123

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_123
    if-eqz v5, :cond_12e

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_12e

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12e
    throw v0

    :cond_12f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_154

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieManager;->flush()V

    :goto_13c
    if-eqz p3, :cond_5

    invoke-static {p0}, Lcom/tencent/smtt/sdk/x;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/x;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/x;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/CookieManager;->setROMCookieDBVersion(Landroid/content/Context;I)V

    goto/16 :goto_5

    :cond_154
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    goto :goto_13c

    :cond_15c
    move v0, v3

    goto/16 :goto_54
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/tencent/smtt/sdk/x;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/tencent/smtt/sdk/x;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_1e

    move-result-object v0

    :goto_14
    if-nez v0, :cond_3

    sget-object v1, Lcom/tencent/smtt/sdk/x;->a:Ljava/lang/String;

    const-string v2, "dbPath is not exist!"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1e
    move-exception v1

    goto :goto_14
.end method

.method public static d(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_5
    invoke-static {p0}, Lcom/tencent/smtt/sdk/x;->c(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_5c
    .catchall {:try_start_5 .. :try_end_8} :catchall_6f

    move-result-object v2

    if-nez v2, :cond_18

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_16
    const/4 v0, -0x1

    :cond_17
    :goto_17
    return v0

    :cond_18
    :try_start_18
    const-string v3, "select * from meta"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    if-lez v3, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_44

    :cond_2e
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_43} :catch_84
    .catchall {:try_start_18 .. :try_end_43} :catchall_82

    move-result v0

    :cond_44
    :goto_44
    if-eqz v1, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_49
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_17

    :cond_55
    :try_start_55
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_84
    .catchall {:try_start_55 .. :try_end_58} :catchall_82

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_44

    :catch_5c
    move-exception v2

    move-object v2, v1

    :goto_5e
    if-eqz v1, :cond_63

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_63
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_17

    :catchall_6f
    move-exception v0

    move-object v2, v1

    :goto_71
    if-eqz v1, :cond_76

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_76
    if-eqz v2, :cond_81

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_81
    throw v0

    :catchall_82
    move-exception v0

    goto :goto_71

    :catch_84
    move-exception v3

    goto :goto_5e
.end method
