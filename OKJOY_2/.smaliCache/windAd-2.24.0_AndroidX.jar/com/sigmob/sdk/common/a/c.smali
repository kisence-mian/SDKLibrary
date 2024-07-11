.class public Lcom/sigmob/sdk/common/a/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/a/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Lcom/sigmob/sdk/common/a/c;

.field private static h:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "CREATE TABLE ads ( endcard_md5 text  ,video_md5 text  ,ad blob  ,ad_source_channel text  ,ad_type integer  ,create_time integer  ,crid text  ,load_id text  ,adTrackersMap blob  ,adslot_id text  ,camp_id text  ,request_id text  , primary key ( crid ,adslot_id ) ); \n"

    sput-object v0, Lcom/sigmob/sdk/common/a/c;->a:Ljava/lang/String;

    const-string v0, "CREATE TRIGGER trigger_insert after insert on ads begin insert or replace into file_reference (crid,adslot_id,video_md5,endcard_md5) values(new.crid,new.adslot_id,new.video_md5,new.endcard_md5) ; end; \n"

    sput-object v0, Lcom/sigmob/sdk/common/a/c;->b:Ljava/lang/String;

    const-string v0, "CREATE TRIGGER trigger_delete after delete on ads begin delete from file_reference where crid = old.crid  and adslot_id == old.adslot_id; end;\n"

    sput-object v0, Lcom/sigmob/sdk/common/a/c;->c:Ljava/lang/String;

    const-string v0, "CREATE TABLE file_reference ( endcard_md5 blob  ,video_md5 blob  ,crid text  ,adslot_id text  , primary key ( crid ,adslot_id ) );\n"

    sput-object v0, Lcom/sigmob/sdk/common/a/c;->d:Ljava/lang/String;

    const-string v0, "CREATE TABLE point ( point_id integer  primary key  ,item text   );\n"

    sput-object v0, Lcom/sigmob/sdk/common/a/c;->e:Ljava/lang/String;

    const-string v0, "CREATE TABLE tracks ( id integer primary key AUTOINCREMENT ,retryNum integer   ,source text   ,event text   ,request_id text   ,url text   ,timestamp integer   );\n"

    sput-object v0, Lcom/sigmob/sdk/common/a/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/common/a/c;->g:Lcom/sigmob/sdk/common/a/c;

    sput-object v0, Lcom/sigmob/sdk/common/a/c;->h:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "sigmob.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/common/a/c;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/a/c;->g:Lcom/sigmob/sdk/common/a/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/common/a/c;->g:Lcom/sigmob/sdk/common/a/c;

    if-nez v0, :cond_17

    const-class v0, Lcom/sigmob/sdk/common/a/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/sdk/common/a/c;->g:Lcom/sigmob/sdk/common/a/c;

    if-nez v1, :cond_12

    new-instance v1, Lcom/sigmob/sdk/common/a/c;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/common/a/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sigmob/sdk/common/a/c;->g:Lcom/sigmob/sdk/common/a/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "DROP TABLE IF EXISTS ads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS file_reference"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS point"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS tracks"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS trigger_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS trigger_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->e()V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/a/c;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/sigmob/sdk/common/a/b$b;Lcom/sigmob/sdk/common/a/c$a;)V
    .registers 9

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x1

    :try_start_4
    iget-object v1, p2, Lcom/sigmob/sdk/common/a/b$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    move v2, v0

    :goto_b
    iget-object v3, p2, Lcom/sigmob/sdk/common/a/b$b;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v2, v3, :cond_5d

    iget-object v3, p2, Lcom/sigmob/sdk/common/a/b$b;->d:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p2, Lcom/sigmob/sdk/common/a/b$b;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_29

    :cond_25
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5a

    :cond_29
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_33

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_5a

    :cond_33
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_41

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_5a

    :cond_41
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_4f

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_5a

    :cond_4f
    instance-of v4, v3, [B

    if-eqz v4, :cond_25

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_5d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_63
    .catchall {:try_start_4 .. :try_end_63} :catchall_75

    :try_start_63
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_94

    :catchall_67
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_94

    invoke-interface {p3, p1}, Lcom/sigmob/sdk/common/a/c$a;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_94

    :catchall_75
    move-exception p2

    :try_start_76
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_82

    invoke-interface {p3, p2}, Lcom/sigmob/sdk/common/a/c$a;->onFailed(Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_9c

    :cond_82
    :try_start_82
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_93

    :catchall_86
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_93

    invoke-interface {p3, p1}, Lcom/sigmob/sdk/common/a/c$a;->onFailed(Ljava/lang/Throwable;)V

    :cond_93
    :goto_93
    const/4 v0, 0x0

    :cond_94
    :goto_94
    if-eqz v0, :cond_9b

    if-eqz p3, :cond_9b

    invoke-interface {p3}, Lcom/sigmob/sdk/common/a/c$a;->onSuccess()V

    :cond_9b
    return-void

    :catchall_9c
    move-exception p2

    :try_start_9d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_ae

    :catchall_a1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_ae

    invoke-interface {p3, p1}, Lcom/sigmob/sdk/common/a/c$a;->onFailed(Ljava/lang/Throwable;)V

    :cond_ae
    :goto_ae
    throw p2
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/common/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/common/a/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/a/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/a/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/a/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const-class v0, Lcom/sigmob/sdk/common/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", which will destroy all old data"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const-class v0, Lcom/sigmob/sdk/common/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", which will destroy all old data"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
