.class public Lcom/mintegral/msdk/base/b/s;
.super Lcom/mintegral/msdk/base/b/a;
.source "SCDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/out/Campaign;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/b/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/mintegral/msdk/base/b/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/s;->b:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/b/s;->c:Lcom/mintegral/msdk/base/b/s;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 20
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/s;
    .registers 3

    .prologue
    .line 23
    sget-object v0, Lcom/mintegral/msdk/base/b/s;->c:Lcom/mintegral/msdk/base/b/s;

    if-nez v0, :cond_13

    .line 24
    const-class v1, Lcom/mintegral/msdk/base/b/s;

    monitor-enter v1

    .line 25
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/s;->c:Lcom/mintegral/msdk/base/b/s;

    if-nez v0, :cond_12

    .line 26
    new-instance v0, Lcom/mintegral/msdk/base/b/s;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/s;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/s;->c:Lcom/mintegral/msdk/base/b/s;

    .line 28
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 30
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/s;->c:Lcom/mintegral/msdk/base/b/s;

    return-object v0

    .line 28
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT get_time FROM sc WHERE package_name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/s;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2d

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_34

    .line 172
    const/4 v0, 0x1

    .line 177
    :goto_2b
    monitor-exit p0

    return v0

    .line 174
    :cond_2d
    if-eqz v0, :cond_32

    .line 175
    :try_start_2f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_34

    .line 177
    :cond_32
    const/4 v0, 0x0

    goto :goto_2b

    .line 168
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/CampaignEx;)J
    .registers 9

    .prologue
    const-wide/16 v0, -0x1

    .line 109
    monitor-enter p0

    if-nez p1, :cond_9

    .line 110
    const-wide/16 v0, 0x0

    .line 133
    :cond_7
    :goto_7
    monitor-exit p0

    return-wide v0

    .line 112
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/s;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 115
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 116
    const-string v3, "package_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "download_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "click_mode"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "ttc"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isPreClick()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    const-string v3, "get_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mintegral/msdk/base/b/s;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/s;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "sc"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_7

    .line 128
    :cond_79
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/s;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "sc"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_83} :catch_85
    .catchall {:try_start_9 .. :try_end_83} :catchall_8b

    move-result-wide v0

    goto :goto_7

    .line 131
    :catch_85
    move-exception v2

    :try_start_86
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8b

    goto/16 :goto_7

    .line 109
    :catchall_8b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Long;)V
    .registers 8

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get_time<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/s;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 93
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/s;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2e
    .catchall {:try_start_1 .. :try_end_2c} :catchall_33

    .line 99
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 97
    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_2c

    .line 90
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17

    move-result v0

    if-nez v0, :cond_9

    .line 159
    :goto_7
    monitor-exit p0

    return-void

    .line 147
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/b/s$1;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/base/b/s$1;-><init>(Lcom/mintegral/msdk/base/b/s;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 143
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
