.class public Lcom/kwai/filedownloader/d0/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/d0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/d0/d$b;,
        Lcom/kwai/filedownloader/d0/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwai/filedownloader/d0/e;

    invoke-static {}, Lcom/kwai/filedownloader/h0/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/d0/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static synthetic a(Lcom/kwai/filedownloader/d0/d;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic a(Landroid/database/Cursor;)Lcom/kwai/filedownloader/f0/c;
    .registers 2

    invoke-static {p0}, Lcom/kwai/filedownloader/d0/d;->b(Landroid/database/Cursor;)Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroid/content/ContentValues;)V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_14

    const-string v1, "filedownloader"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    :try_start_7
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method private static b(Landroid/database/Cursor;)Lcom/kwai/filedownloader/f0/c;
    .registers 5

    const/4 v0, 0x1

    new-instance v1, Lcom/kwai/filedownloader/f0/c;

    invoke-direct {v1}, Lcom/kwai/filedownloader/f0/c;-><init>()V

    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/f0/c;->b(I)V

    const-string v2, "url"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwai/filedownloader/f0/c;->d(Ljava/lang/String;)V

    const-string v2, "path"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pathAsDirectory"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    if-ne v3, v0, :cond_96

    :goto_36
    invoke-virtual {v1, v2, v0}, Lcom/kwai/filedownloader/f0/c;->a(Ljava/lang/String;Z)V

    const-string v0, "status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/f0/c;->a(B)V

    const-string v0, "sofar"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kwai/filedownloader/f0/c;->b(J)V

    const-string v0, "total"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kwai/filedownloader/f0/c;->c(J)V

    const-string v0, "errMsg"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/f0/c;->b(Ljava/lang/String;)V

    const-string v0, "etag"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/f0/c;->a(Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/f0/c;->c(Ljava/lang/String;)V

    const-string v0, "connectionCount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/f0/c;->a(I)V

    return-object v1

    :cond_96
    const/4 v0, 0x0

    goto :goto_36
.end method


# virtual methods
.method public a()Lcom/kwai/filedownloader/d0/a$a;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/d0/d$a;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/d0/d$a;-><init>(Lcom/kwai/filedownloader/d0/d;)V

    return-object v0
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/kwai/filedownloader/d0/a$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kwai/filedownloader/f0/c;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/f0/a;",
            ">;>;)",
            "Lcom/kwai/filedownloader/d0/a$a;"
        }
    .end annotation

    new-instance v0, Lcom/kwai/filedownloader/d0/d$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/kwai/filedownloader/d0/d$a;-><init>(Lcom/kwai/filedownloader/d0/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(II)V
    .registers 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "connectionCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "filedownloader"

    const-string v4, "_id = ? "

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public a(IIJ)V
    .registers 10

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "currentOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "filedownloaderConnection"

    const-string v4, "id = ? AND connectionIndex = ?"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public a(IJ)V
    .registers 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sofar"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/d0/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "total"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "etag"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "filename"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/d0/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public a(ILjava/lang/String;JJI)V
    .registers 11

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sofar"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "total"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "etag"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "connectionCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/d0/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/d0/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public a(ILjava/lang/Throwable;J)V
    .registers 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sofar"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/d0/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/f0/a;)V
    .registers 6

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/a;->f()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "filedownloaderConnection"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_10
    return-void
.end method

.method public a(Lcom/kwai/filedownloader/f0/c;)V
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_b

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "update but model == null!"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwai/filedownloader/d0/d;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->q()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "filedownloader"

    const-string v4, "_id = ? "

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_a

    :cond_30
    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/d0/d;->b(Lcom/kwai/filedownloader/f0/c;)V

    goto :goto_a
.end method

.method public b(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM filedownloaderConnection WHERE id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method public b(IJ)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/d0/d;->d(I)Z

    return-void
.end method

.method public b(Lcom/kwai/filedownloader/f0/c;)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->q()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "filedownloader"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public c(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/f0/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_6f

    const-string v3, "SELECT * FROM %s WHERE %s = ?"

    const/4 v4, 0x2

    :try_start_b
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "filedownloaderConnection"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "id"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_76

    new-instance v2, Lcom/kwai/filedownloader/f0/a;

    invoke-direct {v2}, Lcom/kwai/filedownloader/f0/a;-><init>()V

    invoke-virtual {v2, p1}, Lcom/kwai/filedownloader/f0/a;->a(I)V

    const-string v3, "connectionIndex"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kwai/filedownloader/f0/a;->b(I)V

    const-string v3, "startOffset"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/kwai/filedownloader/f0/a;->c(J)V

    const-string v3, "currentOffset"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/kwai/filedownloader/f0/a;->a(J)V

    const-string v3, "endOffset"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/kwai/filedownloader/f0/a;->b(J)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_b .. :try_end_6e} :catchall_6f

    goto :goto_29

    :catchall_6f
    move-exception v0

    if-eqz v1, :cond_75

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_75
    throw v0

    :cond_76
    if-eqz v1, :cond_7b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7b
    return-object v0
.end method

.method public c(IJ)V
    .registers 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sofar"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/d0/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filedownloader"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "filedownloaderConnection"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public d(I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "filedownloader"

    const-string v5, "_id = ?"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public e(I)Lcom/kwai/filedownloader/f0/c;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/kwai/filedownloader/d0/d;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    const-string v2, "SELECT * FROM %s WHERE %s = ?"

    const/4 v3, 0x2

    :try_start_6
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "filedownloader"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_3a

    move-result-object v1

    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-static {v1}, Lcom/kwai/filedownloader/d0/d;->b(Landroid/database/Cursor;)Lcom/kwai/filedownloader/f0/c;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_44

    move-result-object v0

    if-eqz v1, :cond_33

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_33
    :goto_33
    return-object v0

    :cond_34
    if-eqz v1, :cond_33

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_33

    :catchall_3a
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3e
    if-eqz v1, :cond_43

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0

    :catchall_44
    move-exception v0

    goto :goto_3e
.end method

.method public f(I)V
    .registers 2

    return-void
.end method
