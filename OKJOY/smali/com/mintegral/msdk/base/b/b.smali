.class public Lcom/mintegral/msdk/base/b/b;
.super Lcom/mintegral/msdk/base/b/a;
.source "CDIDtimeDao.java"


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

.field private static c:Lcom/mintegral/msdk/base/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/mintegral/msdk/base/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 21
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/b;
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lcom/mintegral/msdk/base/b/b;->c:Lcom/mintegral/msdk/base/b/b;

    if-nez v0, :cond_13

    .line 25
    const-class v1, Lcom/mintegral/msdk/base/b/b;

    monitor-enter v1

    .line 26
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/b;->c:Lcom/mintegral/msdk/base/b/b;

    if-nez v0, :cond_12

    .line 27
    new-instance v0, Lcom/mintegral/msdk/base/b/b;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/b;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/b;->c:Lcom/mintegral/msdk/base/b/b;

    .line 29
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 31
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/b;->c:Lcom/mintegral/msdk/base/b/b;

    return-object v0

    .line 29
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT d_time FROM c_did_time WHERE did=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2d

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_34

    .line 147
    const/4 v0, 0x1

    .line 152
    :goto_2b
    monitor-exit p0

    return v0

    .line 149
    :cond_2d
    if-eqz v0, :cond_32

    .line 150
    :try_start_2f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_34

    .line 152
    :cond_32
    const/4 v0, 0x0

    goto :goto_2b

    .line 143
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;J)J
    .registers 12

    .prologue
    const-wide/16 v0, -0x1

    .line 112
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/b;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_52
    .catchall {:try_start_3 .. :try_end_6} :catchall_57

    move-result-object v2

    if-nez v2, :cond_b

    .line 130
    :goto_9
    monitor-exit p0

    return-wide v0

    .line 115
    :cond_b
    :try_start_b
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 116
    const-string v3, "did"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "d_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "did = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "c_did_time"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_9

    .line 125
    :cond_46
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "c_did_time"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_50} :catch_52
    .catchall {:try_start_b .. :try_end_50} :catchall_57

    move-result-wide v0

    goto :goto_9

    .line 128
    :catch_52
    move-exception v2

    :try_start_53
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_9

    .line 112
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 165
    monitor-enter p0

    .line 168
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM c_did_time where did = \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' AND d_time > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_3c

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_32} :catch_3e
    .catchall {:try_start_3 .. :try_end_32} :catchall_4b

    move-result v1

    if-lez v1, :cond_3c

    .line 179
    :goto_35
    if-eqz v2, :cond_3a

    .line 180
    :try_start_37
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_48

    .line 183
    :cond_3a
    :goto_3a
    monitor-exit p0

    return v0

    .line 174
    :cond_3c
    const/4 v0, 0x0

    goto :goto_35

    .line 177
    :catch_3e
    move-exception v1

    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4b

    .line 179
    if-eqz v2, :cond_3a

    .line 180
    :try_start_44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_3a

    .line 165
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :catchall_4b
    move-exception v0

    if-eqz v2, :cond_51

    .line 180
    :try_start_4e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_48
.end method

.method public final declared-synchronized c()V
    .registers 5

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "d_time<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 95
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "c_did_time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2a
    .catchall {:try_start_1 .. :try_end_28} :catchall_2f

    .line 101
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    .line 99
    :catch_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_28

    .line 92
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
