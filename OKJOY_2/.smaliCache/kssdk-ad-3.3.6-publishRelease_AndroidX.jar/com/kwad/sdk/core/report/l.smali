.class public Lcom/kwad/sdk/core/report/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/report/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/report/i<",
        "Lcom/kwad/sdk/core/report/ReportAction;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Lcom/kwad/sdk/core/report/l;


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/report/k;

    sget v1, Lcom/kwad/sdk/core/report/k;->a:I

    invoke-direct {v0, p1, v1}, Lcom/kwad/sdk/core/report/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/kwad/sdk/core/report/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/report/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private declared-synchronized a(Landroid/database/Cursor;)Lcom/kwad/sdk/core/report/ReportAction;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "aLog"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/kwad/sdk/core/report/ReportAction;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/report/ReportAction;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Landroid/content/Context;)Lcom/kwad/sdk/core/report/l;
    .registers 3

    sget-object v0, Lcom/kwad/sdk/core/report/l;->a:Lcom/kwad/sdk/core/report/l;

    if-nez v0, :cond_17

    const-class v0, Lcom/kwad/sdk/core/report/l;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwad/sdk/core/report/l;->a:Lcom/kwad/sdk/core/report/l;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwad/sdk/core/report/l;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/report/l;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/kwad/sdk/core/report/l;->a:Lcom/kwad/sdk/core/report/l;

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
    sget-object p0, Lcom/kwad/sdk/core/report/l;->a:Lcom/kwad/sdk/core/report/l;

    return-object p0
.end method

.method private declared-synchronized b(Lcom/kwad/sdk/core/report/ReportAction;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "ReportActionDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAction action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_31

    :try_start_19
    iget-object v0, p0, Lcom/kwad/sdk/core/report/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ksad_actions"

    const-string v2, "actionId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/kwad/sdk/core/report/ReportAction;->a:Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2a} :catch_2b
    .catchall {:try_start_19 .. :try_end_2a} :catchall_31

    goto :goto_2f

    :catch_2b
    move-exception p1

    :try_start_2c
    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_31

    :goto_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a()J
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/kwad/sdk/core/report/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select count(*) from ksad_actions"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_18
    .catchall {:try_start_2 .. :try_end_12} :catchall_16

    :try_start_12
    invoke-static {v0}, Lcom/kwad/sdk/utils/s;->a(Landroid/database/Cursor;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_23

    goto :goto_21

    :catchall_16
    move-exception v1

    goto :goto_25

    :catch_18
    move-exception v1

    :try_start_19
    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_16

    :try_start_1c
    invoke-static {v0}, Lcom/kwad/sdk/utils/s;->a(Landroid/database/Cursor;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    const-wide/16 v1, 0x0

    :goto_21
    monitor-exit p0

    return-wide v1

    :catchall_23
    move-exception v0

    goto :goto_29

    :goto_25
    :try_start_25
    invoke-static {v0}, Lcom/kwad/sdk/utils/s;->a(Landroid/database/Cursor;)V

    throw v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_23

    :goto_29
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/kwad/sdk/core/report/ReportAction;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "ReportActionDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_46

    :try_start_19
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "actionId"

    iget-object v2, p1, Lcom/kwad/sdk/core/report/ReportAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kwad/sdk/core/report/ReportAction;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "aLog"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_32} :catch_40
    .catchall {:try_start_19 .. :try_end_32} :catchall_46

    :try_start_32
    iget-object p1, p0, Lcom/kwad/sdk/core/report/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ksad_actions"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3a} :catch_3b
    .catchall {:try_start_32 .. :try_end_3a} :catchall_46

    goto :goto_44

    :catch_3b
    move-exception p1

    :try_start_3c
    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_46

    goto :goto_44

    :catch_40
    move-exception p1

    :try_start_41
    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_46

    :goto_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/report/ReportAction;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/report/l;->a(Lcom/kwad/sdk/core/report/ReportAction;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/report/ReportAction;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "ReportActionDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_47

    :try_start_1d
    iget-object v0, p0, Lcom/kwad/sdk/core/report/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/report/ReportAction;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/report/l;->b(Lcom/kwad/sdk/core/report/ReportAction;)V

    goto :goto_26

    :cond_36
    iget-object p1, p0, Lcom/kwad/sdk/core/report/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object p1, p0, Lcom/kwad/sdk/core/report/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_40} :catch_41
    .catchall {:try_start_1d .. :try_end_40} :catchall_47

    goto :goto_45

    :catch_41
    move-exception p1

    :try_start_42
    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_47

    :goto_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/report/ReportAction;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/kwad/sdk/core/report/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select  * from ksad_actions"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_74
    .catchall {:try_start_2 .. :try_end_15} :catchall_72

    if-eqz v2, :cond_24

    :try_start_17
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/report/l;->a(Landroid/database/Cursor;)Lcom/kwad/sdk/core/report/ReportAction;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f
    .catchall {:try_start_17 .. :try_end_1e} :catchall_72

    goto :goto_11

    :catch_1f
    move-exception v2

    :try_start_20
    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_24
    const-string v2, "ReportActionDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/core/report/ReportAction;

    const-string v4, "ReportActionDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_68} :catch_74
    .catchall {:try_start_20 .. :try_end_68} :catchall_72

    goto :goto_44

    :cond_69
    :try_start_69
    invoke-static {v0}, Lcom/kwad/sdk/utils/s;->a(Landroid/database/Cursor;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_80

    monitor-exit p0

    return-object v1

    :cond_6e
    :goto_6e
    :try_start_6e
    invoke-static {v0}, Lcom/kwad/sdk/utils/s;->a(Landroid/database/Cursor;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_80

    goto :goto_79

    :catchall_72
    move-exception v1

    goto :goto_82

    :catch_74
    move-exception v1

    :try_start_75
    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_72

    goto :goto_6e

    :goto_79
    :try_start_79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_80

    monitor-exit p0

    return-object v0

    :catchall_80
    move-exception v0

    goto :goto_86

    :goto_82
    :try_start_82
    invoke-static {v0}, Lcom/kwad/sdk/utils/s;->a(Landroid/database/Cursor;)V

    throw v1
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_80

    :goto_86
    monitor-exit p0

    throw v0
.end method
