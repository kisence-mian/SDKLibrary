.class final Lcom/mintegral/msdk/f/c/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseSourceInfoStorage.java"

# interfaces
.implements Lcom/mintegral/msdk/f/c/c;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "length"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mintegral/msdk/f/c/a;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 31
    const-string v0, "AndroidVideoCache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    invoke-static {p1}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/mintegral/msdk/f/q;
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 48
    invoke-static {p1}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :try_start_4
    invoke-virtual {p0}, Lcom/mintegral/msdk/f/c/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SourceInfo"

    sget-object v2, Lcom/mintegral/msdk/f/c/a;->a:[Ljava/lang/String;

    const-string v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_56

    move-result-object v1

    .line 52
    if-eqz v1, :cond_23

    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_4e

    move-result v0

    if-nez v0, :cond_2a

    :cond_23
    move-object v0, v8

    .line 54
    :goto_24
    if-eqz v1, :cond_29

    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_29
    return-object v0

    .line 1079
    :cond_2a
    :try_start_2a
    new-instance v0, Lcom/mintegral/msdk/f/q;

    const-string v2, "url"

    .line 1080
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "length"

    .line 1081
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v3, "mime"

    .line 1082
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/mintegral/msdk/f/q;-><init>(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_2a .. :try_end_4d} :catchall_4e

    goto :goto_24

    .line 54
    :catchall_4e
    move-exception v0

    move-object v8, v1

    :goto_50
    if-eqz v8, :cond_55

    .line 55
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_55
    throw v0

    .line 54
    :catchall_56
    move-exception v0

    goto :goto_50
.end method

.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/f/q;)V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/mintegral/msdk/f/l;->a([Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/f/c/a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/f/q;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_43

    move v0, v1

    .line 1087
    :goto_13
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1088
    const-string v4, "url"

    iget-object v5, p2, Lcom/mintegral/msdk/f/q;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string v4, "length"

    iget-wide v6, p2, Lcom/mintegral/msdk/f/q;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1090
    const-string v4, "mime"

    iget-object v5, p2, Lcom/mintegral/msdk/f/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz v0, :cond_45

    .line 67
    invoke-virtual {p0}, Lcom/mintegral/msdk/f/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "SourceInfo"

    const-string v5, "url=?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v4, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    :goto_42
    return-void

    :cond_43
    move v0, v2

    .line 64
    goto :goto_13

    .line 69
    :cond_45
    invoke-virtual {p0}, Lcom/mintegral/msdk/f/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SourceInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_42
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 37
    invoke-static {p1}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    .prologue
    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be called. There is no any migration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
