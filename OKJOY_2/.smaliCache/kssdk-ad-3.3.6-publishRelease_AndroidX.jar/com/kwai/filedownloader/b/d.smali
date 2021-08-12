.class public Lcom/kwai/filedownloader/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/b/d$b;,
        Lcom/kwai/filedownloader/b/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwai/filedownloader/b/e;

    invoke-static {}, Lcom/kwai/filedownloader/f/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/b/e;-><init>(Landroid/content/Context;)V

    :try_start_c
    invoke-virtual {v0}, Lcom/kwai/filedownloader/b/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    :goto_17
    return-void
.end method

.method static synthetic a(Lcom/kwai/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    iget-object p0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method static synthetic a(Landroid/database/Cursor;)Lcom/kwai/filedownloader/d/c;
    .registers 1

    invoke-static {p0}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/Cursor;)Lcom/kwai/filedownloader/d/c;

    move-result-object p0

    return-object p0
.end method

.method private a(ILandroid/content/ContentValues;)V
    .registers 8

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1f

    :try_start_4
    const-string v1, "ksad_file_download"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_15} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_1f

    :catch_16
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    goto :goto_1f

    :catch_1b
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteException;)V
    .registers 1

    invoke-static {p0}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .registers 1

    invoke-static {p0}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Landroid/database/Cursor;)Lcom/kwai/filedownloader/d/c;
    .registers 5

    new-instance v0, Lcom/kwai/filedownloader/d/c;

    invoke-direct {v0}, Lcom/kwai/filedownloader/d/c;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/d/c;->a(I)V

    const-string v1, "url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/d/c;->a(Ljava/lang/String;)V

    const-string v1, "path"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pathAsDirectory"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    :goto_3b
    invoke-virtual {v0, v1, v3}, Lcom/kwai/filedownloader/d/c;->a(Ljava/lang/String;Z)V

    const-string v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/d/c;->a(B)V

    const-string v1, "sofar"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kwai/filedownloader/d/c;->a(J)V

    const-string v1, "total"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kwai/filedownloader/d/c;->c(J)V

    const-string v1, "errMsg"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/d/c;->c(Ljava/lang/String;)V

    const-string v1, "etag"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/d/c;->b(Ljava/lang/String;)V

    const-string v1, "filename"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/d/c;->d(Ljava/lang/String;)V

    const-string v1, "connectionCount"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/kwai/filedownloader/d/c;->b(I)V

    return-object v0
.end method

.method private static b(Landroid/database/sqlite/SQLiteException;)V
    .registers 1

    invoke-static {p0}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    instance-of p0, p0, Landroid/database/sqlite/SQLiteFullException;

    return-void
.end method

.method private static b(Ljava/lang/Throwable;)V
    .registers 1

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/kwad/sdk/core/a/a;->a(Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/kwai/filedownloader/b/a$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/kwai/filedownloader/d/c;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/d/a;",
            ">;>;)",
            "Lcom/kwai/filedownloader/b/a$a;"
        }
    .end annotation

    new-instance v0, Lcom/kwai/filedownloader/b/d$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/kwai/filedownloader/b/d$a;-><init>(Lcom/kwai/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    :try_start_5
    const-string v2, "ksad_file_download"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    :goto_f
    :try_start_f
    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ksad_file_download_connection"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(II)V
    .registers 8

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "connectionCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_13
    iget-object p2, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ksad_file_download"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_26} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_26} :catch_27

    goto :goto_30

    :catch_27
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    goto :goto_30

    :catch_2c
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    :goto_30
    return-void
.end method

.method public a(IIJ)V
    .registers 9

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "currentOffset"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_13
    iget-object p3, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string p4, "ksad_file_download_connection"

    const-string v1, "id = ? AND connectionIndex = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_2d} :catch_33
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2d} :catch_2e

    goto :goto_37

    :catch_2e
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    goto :goto_37

    :catch_33
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    :goto_37
    return-void
.end method

.method public a(IJ)V
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "sofar"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "total"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "etag"

    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "filename"

    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public a(ILjava/lang/String;JJI)V
    .registers 9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "sofar"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "total"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "etag"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "connectionCount"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public a(ILjava/lang/Throwable;J)V
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "sofar"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/d/a;)V
    .registers 5

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1a

    :try_start_6
    const-string v1, "ksad_file_download_connection"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/a;->f()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    goto :goto_1a

    :catch_11
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    goto :goto_1a

    :catch_16
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public a(Lcom/kwai/filedownloader/d/c;)V
    .registers 8

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    if-nez p1, :cond_10

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "update but model == null!"

    invoke-static {p0, v0, p1}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_10
    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kwai/filedownloader/b/d;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->p()Landroid/content/ContentValues;

    move-result-object v1

    :try_start_1e
    iget-object v2, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ksad_file_download"

    const-string v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_34} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_35

    goto :goto_42

    :catch_35
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    goto :goto_42

    :catch_3a
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    goto :goto_42

    :cond_3f
    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/b/d;->b(Lcom/kwai/filedownloader/d/c;)V

    :goto_42
    return-void
.end method

.method public b()Lcom/kwai/filedownloader/b/a$a;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/b/d$a;

    invoke-direct {v0, p0}, Lcom/kwai/filedownloader/b/d$a;-><init>(Lcom/kwai/filedownloader/b/d;)V

    return-object v0
.end method

.method public b(I)Lcom/kwai/filedownloader/d/c;
    .registers 9

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    const-string v2, "SELECT * FROM %s WHERE %s = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ksad_file_download"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "_id"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_25} :catch_46
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_3e
    .catchall {:try_start_6 .. :try_end_25} :catchall_3c

    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/Cursor;)Lcom/kwai/filedownloader/d/c;

    move-result-object v0
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_2f} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_38
    .catchall {:try_start_25 .. :try_end_2f} :catchall_51

    if-eqz p1, :cond_34

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_34
    return-object v0

    :cond_35
    if-eqz p1, :cond_50

    goto :goto_4d

    :catch_38
    move-exception v0

    goto :goto_40

    :catch_3a
    move-exception v0

    goto :goto_48

    :catchall_3c
    move-exception v0

    goto :goto_53

    :catch_3e
    move-exception v0

    move-object p1, v1

    :goto_40
    :try_start_40
    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_50

    goto :goto_4d

    :catch_46
    move-exception v0

    move-object p1, v1

    :goto_48
    invoke-static {v0}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_51

    if-eqz p1, :cond_50

    :goto_4d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_50
    return-object v1

    :catchall_51
    move-exception v0

    move-object v1, p1

    :goto_53
    if-eqz v1, :cond_58

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v0
.end method

.method public b(IJ)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/b/d;->e(I)Z

    return-void
.end method

.method public b(Lcom/kwai/filedownloader/d/c;)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_18

    :try_start_4
    const-string v1, "ksad_file_download"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->p()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_e} :catch_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_18

    :catch_f
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    goto :goto_18

    :catch_14
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public c(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/d/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    const/4 v2, 0x0

    :try_start_b
    const-string v3, "SELECT * FROM %s WHERE %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ksad_file_download_connection"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "id"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_70

    new-instance v1, Lcom/kwai/filedownloader/d/a;

    invoke-direct {v1}, Lcom/kwai/filedownloader/d/a;-><init>()V

    invoke-virtual {v1, p1}, Lcom/kwai/filedownloader/d/a;->a(I)V

    const-string v3, "connectionIndex"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/kwai/filedownloader/d/a;->b(I)V

    const-string v3, "startOffset"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/kwai/filedownloader/d/a;->a(J)V

    const-string v3, "currentOffset"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/kwai/filedownloader/d/a;->b(J)V

    const-string v3, "endOffset"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/kwai/filedownloader/d/a;->c(J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_6f} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6f} :catch_75
    .catchall {:try_start_b .. :try_end_6f} :catchall_73

    goto :goto_2a

    :cond_70
    if-eqz v2, :cond_85

    goto :goto_82

    :catchall_73
    move-exception p1

    goto :goto_86

    :catch_75
    move-exception p1

    :try_start_76
    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_85

    goto :goto_82

    :catch_7c
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_73

    if-eqz v2, :cond_85

    :goto_82
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_85
    return-object v0

    :goto_86
    if-eqz v2, :cond_8b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8b
    throw p1
.end method

.method public c(IJ)V
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "sofar"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1, v0}, Lcom/kwai/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public d(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM ksad_file_download_connection WHERE id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_1b} :catch_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_25

    :catch_1c
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    goto :goto_25

    :catch_21
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    :goto_25
    return-void
.end method

.method public e(I)Z
    .registers 8

    iget-object v0, p0, Lcom/kwai/filedownloader/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v2, "ksad_file_download"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_17} :catch_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_1b

    if-eqz p1, :cond_24

    move v1, v4

    goto :goto_24

    :catch_1b
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Ljava/lang/Throwable;)V

    goto :goto_24

    :catch_20
    move-exception p1

    invoke-static {p1}, Lcom/kwai/filedownloader/b/d;->b(Landroid/database/sqlite/SQLiteException;)V

    :cond_24
    :goto_24
    return v1
.end method

.method public f(I)V
    .registers 2

    return-void
.end method
