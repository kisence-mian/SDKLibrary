.class public Lcom/sigmob/sdk/base/a/l;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final a:Ljava/lang/String; = "ads"

.field public static final b:Ljava/lang/String; = "file_reference"

.field public static final c:Ljava/lang/String; = "trigger_insert"

.field public static final d:Ljava/lang/String; = "trigger_delete"

.field public static final e:Ljava/lang/String; = "point"

.field public static final f:Ljava/lang/String; = "tracks"

.field public static final g:Ljava/lang/String; = "sigmob.db"

.field public static final h:J = -0x2L

.field public static final i:J = -0x1L

.field private static final j:I = 0x8

.field private static final k:J = -0x6L

.field private static final l:J = -0x5L

.field private static final m:J = -0x4L

.field private static final n:J

.field private static o:Lcom/sigmob/sdk/base/a/l;

.field private static p:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/a/l;->o:Lcom/sigmob/sdk/base/a/l;

    sput-object v0, Lcom/sigmob/sdk/base/a/l;->p:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "sigmob.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/a/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, -0x6

    :goto_4
    return-wide v0

    :cond_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/16 v0, -0x5

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_17

    const-wide/16 v0, -0x4

    goto :goto_4

    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_4
.end method

.method public static a()Lcom/sigmob/sdk/base/a/l;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/a/l;->o:Lcom/sigmob/sdk/base/a/l;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/a/l;->o:Lcom/sigmob/sdk/base/a/l;

    if-nez v0, :cond_13

    const-class v1, Lcom/sigmob/sdk/base/a/l;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/a/l;->o:Lcom/sigmob/sdk/base/a/l;

    if-nez v0, :cond_12

    new-instance v0, Lcom/sigmob/sdk/base/a/l;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/a/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sigmob/sdk/base/a/l;->o:Lcom/sigmob/sdk/base/a/l;

    :cond_12
    monitor-exit v1

    :cond_13
    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alter table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " drop column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alter table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
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

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->g()V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/a/l;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/sigmob/sdk/base/a/j;Lcom/sigmob/sdk/base/a/m;)V
    .registers 12

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x0

    :try_start_5
    iget-object v0, p2, Lcom/sigmob/sdk/base/a/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move v3, v1

    :goto_c
    iget-object v0, p2, Lcom/sigmob/sdk/base/a/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v3, v0, :cond_7d

    iget-object v0, p2, Lcom/sigmob/sdk/base/a/j;->d:Ljava/util/List;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p2, Lcom/sigmob/sdk/base/a/j;->c:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2d

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_29
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_2d
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_4c

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_36} :catch_37
    .catchall {:try_start_5 .. :try_end_36} :catchall_5a

    goto :goto_29

    :catch_37
    move-exception v0

    :try_start_38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_40

    invoke-interface {p3, v0}, Lcom/sigmob/sdk/base/a/m;->onFailed(Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_5a

    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_93

    move v0, v2

    :goto_44
    if-eqz v0, :cond_4b

    if-eqz p3, :cond_4b

    invoke-interface {p3}, Lcom/sigmob/sdk/base/a/m;->onSuccess()V

    :cond_4b
    return-void

    :cond_4c
    :try_start_4c
    instance-of v5, v0, Ljava/lang/Double;

    if-eqz v5, :cond_5f

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_59} :catch_37
    .catchall {:try_start_4c .. :try_end_59} :catchall_5a

    goto :goto_29

    :catchall_5a
    move-exception v0

    :try_start_5b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_9e

    :cond_5e
    :goto_5e
    throw v0

    :cond_5f
    :try_start_5f
    instance-of v5, v0, Ljava/lang/Number;

    if-eqz v5, :cond_6d

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_29

    :cond_6d
    instance-of v5, v0, [B

    if-eqz v5, :cond_79

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v4, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_29

    :cond_79
    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_29

    :cond_7d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_83} :catch_37
    .catchall {:try_start_5f .. :try_end_83} :catchall_5a

    :try_start_83
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_88

    move v0, v1

    goto :goto_44

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_91

    invoke-interface {p3, v0}, Lcom/sigmob/sdk/base/a/m;->onFailed(Ljava/lang/Throwable;)V

    :cond_91
    move v0, v1

    goto :goto_44

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_9c

    invoke-interface {p3, v0}, Lcom/sigmob/sdk/base/a/m;->onFailed(Ljava/lang/Throwable;)V

    :cond_9c
    move v0, v2

    goto :goto_44

    :catch_9e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_5e

    invoke-interface {p3, v1}, Lcom/sigmob/sdk/base/a/m;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_5e
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/sigmob/sdk/base/a/m;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_5
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_d} :catch_19
    .catchall {:try_start_5 .. :try_end_d} :catchall_27

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_11
    if-eqz v0, :cond_18

    if-eqz p3, :cond_18

    invoke-interface {p3}, Lcom/sigmob/sdk/base/a/m;->onSuccess()V

    :cond_18
    return-void

    :catch_19
    move-exception v0

    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_22

    invoke-interface {p3, v0}, Lcom/sigmob/sdk/base/a/m;->onFailed(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_27

    :cond_22
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_11

    :catchall_27
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/a/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/a/l;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->createTable()Lcom/sigmob/sdk/base/a/g;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/sigmob/sdk/base/a/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->createFileRefTable()Lcom/sigmob/sdk/base/a/g;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/sigmob/sdk/base/a/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_16
    invoke-static {}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->createTriggerInsert()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1f
    invoke-static {}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->createTriggerDelete()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_28
    invoke-static {}, Lcom/sigmob/sdk/base/models/PointEntity;->createTable()Lcom/sigmob/sdk/base/a/g;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, v0, Lcom/sigmob/sdk/base/a/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_33
    invoke-static {}, Lcom/sigmob/sdk/base/common/j;->a()Lcom/sigmob/sdk/base/a/g;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, v0, Lcom/sigmob/sdk/base/a/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const-class v0, Lcom/sigmob/sdk/base/a/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/a/l;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const-class v0, Lcom/sigmob/sdk/base/a/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/a/l;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
