.class Lcom/kwad/sdk/core/videocache/t/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/videocache/t/b;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

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

    sput-object v0, Lcom/kwad/sdk/core/videocache/t/a;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "AndroidVideoCache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/kwad/sdk/core/videocache/o;)Landroid/content/ContentValues;
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lcom/kwad/sdk/core/videocache/o;->a:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/kwad/sdk/core/videocache/o;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/videocache/o;->c:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)Lcom/kwad/sdk/core/videocache/o;
    .registers 7

    new-instance v0, Lcom/kwad/sdk/core/videocache/o;

    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "mime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/core/videocache/o;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/o;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/k;->a([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/videocache/t/a;->get(Ljava/lang/String;)Lcom/kwad/sdk/core/videocache/o;

    move-result-object v0

    if-eqz v0, :cond_29

    move v0, v1

    :goto_13
    invoke-direct {p0, p2}, Lcom/kwad/sdk/core/videocache/t/a;->a(Lcom/kwad/sdk/core/videocache/o;)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    const-string v2, "SourceInfo"

    const-string v4, "url=?"

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_28
    return-void

    :cond_29
    move v0, v2

    goto :goto_13

    :cond_2b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SourceInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_28
.end method

.method public get(Ljava/lang/String;)Lcom/kwad/sdk/core/videocache/o;
    .registers 11

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2e

    move-result-object v0

    const-string v1, "SourceInfo"

    :try_start_a
    sget-object v2, Lcom/kwad/sdk/core/videocache/t/a;->a:[Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_2e

    const-string v3, "url=?"

    const/4 v4, 0x1

    :try_start_f
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_2e

    move-result-object v1

    if-eqz v1, :cond_23

    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_36

    move-result v0

    if-nez v0, :cond_29

    :cond_23
    :goto_23
    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_28
    return-object v8

    :cond_29
    :try_start_29
    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/videocache/t/a;->a(Landroid/database/Cursor;)Lcom/kwad/sdk/core/videocache/o;
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_36

    move-result-object v8

    goto :goto_23

    :catchall_2e
    move-exception v0

    move-object v1, v8

    :goto_30
    if-eqz v1, :cond_35

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0

    :catchall_36
    move-exception v0

    goto :goto_30
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be called. There is no any migration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
