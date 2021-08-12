.class public Lcom/kwai/filedownloader/b/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "ksad_file_download.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS ksad_file_download( _id INTEGER PRIMARY KEY, url VARCHAR, path VARCHAR, status TINYINT(7), sofar INTEGER, total INTEGER, errMsg VARCHAR, etag VARCHAR, pathAsDirectory TINYINT(1) DEFAULT 0, filename VARCHAR, connectionCount INTEGER DEFAULT 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS ksad_file_download_connection( id INTEGER, connectionIndex INTEGER, startOffset INTEGER, currentOffset INTEGER, endOffset INTEGER, PRIMARY KEY ( id, connectionIndex ))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p2, "ksad_file_download"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p2, "ksad_file_download_connection"

    invoke-virtual {p1, p2, p3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/b/e;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const/4 p3, 0x2

    if-ge p2, p3, :cond_d

    const-string p3, "ALTER TABLE ksad_file_download ADD COLUMN pathAsDirectory TINYINT(1) DEFAULT 0"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE ksad_file_download ADD COLUMN filename VARCHAR"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d
    const/4 p3, 0x3

    if-ge p2, p3, :cond_1a

    const-string p2, "ALTER TABLE ksad_file_download ADD COLUMN connectionCount INTEGER DEFAULT 1"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE IF NOT EXISTS ksad_file_download_connection( id INTEGER, connectionIndex INTEGER, startOffset INTEGER, currentOffset INTEGER, endOffset INTEGER, PRIMARY KEY ( id, connectionIndex ))"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method
