.class public Lcom/JoyFramework/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "DBManager"

.field private static d:Lcom/JoyFramework/d/a/a;


# instance fields
.field private final b:Lcom/JoyFramework/d/a/c;

.field private final c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/JoyFramework/d/a/c;

    invoke-direct {v0, p1}, Lcom/JoyFramework/d/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    .line 42
    iget-object v0, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    invoke-virtual {v0}, Lcom/JoyFramework/d/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/JoyFramework/d/a/a;
    .registers 4

    .prologue
    .line 24
    if-nez p0, :cond_e

    .line 25
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    .line 26
    if-nez p0, :cond_e

    .line 27
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object p0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    .line 30
    :cond_e
    sget-object v0, Lcom/JoyFramework/d/a/a;->d:Lcom/JoyFramework/d/a/a;

    if-nez v0, :cond_25

    .line 31
    const-class v1, Lcom/JoyFramework/d/a/a;

    monitor-enter v1

    .line 32
    :try_start_15
    sget-object v0, Lcom/JoyFramework/d/a/a;->d:Lcom/JoyFramework/d/a/a;

    if-nez v0, :cond_24

    .line 33
    new-instance v0, Lcom/JoyFramework/d/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/JoyFramework/d/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/JoyFramework/d/a/a;->d:Lcom/JoyFramework/d/a/a;

    .line 35
    :cond_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_28

    .line 37
    :cond_25
    sget-object v0, Lcom/JoyFramework/d/a/a;->d:Lcom/JoyFramework/d/a/a;

    return-object v0

    .line 35
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/d/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :try_start_5
    iget-object v1, p0, Lcom/JoyFramework/d/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    const-string v3, "orderReport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 70
    :goto_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 71
    new-instance v2, Lcom/JoyFramework/d/a/b;

    invoke-direct {v2}, Lcom/JoyFramework/d/a/b;-><init>()V

    .line 72
    iget-object v3, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    sget-object v3, Lcom/JoyFramework/d/a/c;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/JoyFramework/d/a/b;->b(Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    sget-object v3, Lcom/JoyFramework/d/a/c;->c:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/JoyFramework/d/a/b;->a(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    sget-object v3, Lcom/JoyFramework/d/a/c;->d:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/JoyFramework/d/a/b;->c(Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    sget-object v3, Lcom/JoyFramework/d/a/c;->e:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/JoyFramework/d/a/b;->d(Ljava/lang/String;)V

    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6d} :catch_6e
    .catchall {:try_start_5 .. :try_end_6d} :catchall_73

    goto :goto_23

    .line 78
    :catch_6e
    move-exception v1

    .line 79
    :try_start_6f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    .line 81
    :cond_72
    :goto_72
    return-object v0

    :catchall_73
    move-exception v1

    goto :goto_72
.end method

.method public a(Lcom/JoyFramework/d/a/b;)V
    .registers 6

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/d/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 48
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    sget-object v1, Lcom/JoyFramework/d/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/JoyFramework/d/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    sget-object v1, Lcom/JoyFramework/d/a/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/JoyFramework/d/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    sget-object v1, Lcom/JoyFramework/d/a/c;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/JoyFramework/d/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    sget-object v1, Lcom/JoyFramework/d/a/c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/JoyFramework/d/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/JoyFramework/d/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    const-string v2, "orderReport"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 54
    iget-object v0, p0, Lcom/JoyFramework/d/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 55
    const-string v0, "DBManager"

    const-string v1, "insert orderInfo success !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_53

    .line 57
    iget-object v0, p0, Lcom/JoyFramework/d/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 59
    return-void

    .line 57
    :catchall_53
    move-exception v0

    iget-object v1, p0, Lcom/JoyFramework/d/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 92
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    :goto_6
    return-void

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/JoyFramework/d/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    const-string v2, "orderReport"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    sget-object v2, Lcom/JoyFramework/d/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const-string v0, "DBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOrderInfoByOrderId orderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,success !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_6

    .line 96
    :catch_5c
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public b()V
    .registers 4

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/d/a/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    const-string v2, "orderReport"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 104
    :goto_1e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 105
    iget-object v1, p0, Lcom/JoyFramework/d/a/a;->b:Lcom/JoyFramework/d/a/c;

    sget-object v1, Lcom/JoyFramework/d/a/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p0, v1}, Lcom/JoyFramework/d/a/a;->a(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_1e

    .line 108
    :catch_34
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :cond_38
    return-void
.end method
