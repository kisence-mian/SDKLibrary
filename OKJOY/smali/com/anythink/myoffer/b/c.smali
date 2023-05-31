.class public final Lcom/anythink/myoffer/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/b/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/anythink/myoffer/b/c;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/anythink/myoffer/b/c;->b:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/myoffer/b/c;
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lcom/anythink/myoffer/b/c;->a:Lcom/anythink/myoffer/b/c;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcom/anythink/myoffer/b/c;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/myoffer/b/c;->a:Lcom/anythink/myoffer/b/c;

    .line 27
    :cond_b
    sget-object v0, Lcom/anythink/myoffer/b/c;->a:Lcom/anythink/myoffer/b/c;

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/anythink/myoffer/c/b;
    .registers 5

    .prologue
    .line 167
    new-instance v0, Lcom/anythink/myoffer/c/b;

    invoke-direct {v0}, Lcom/anythink/myoffer/c/b;-><init>()V

    .line 168
    const-string v1, "offer_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/myoffer/c/b;->a:Ljava/lang/String;

    .line 169
    const-string v1, "show_num"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/anythink/myoffer/c/b;->d:I

    .line 170
    const-string v1, "show_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/myoffer/c/b;->e:J

    .line 171
    const-string v1, "record_date"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/myoffer/c/b;->f:Ljava/lang/String;

    .line 172
    const-string v1, "offer_cap"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/anythink/myoffer/c/b;->b:I

    .line 173
    const-string v1, "offer_pacing"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/myoffer/c/b;->c:J

    .line 174
    return-object v0
.end method

.method private declared-synchronized d(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT offer_id FROM my_offer_cap_pacing WHERE offer_id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/anythink/myoffer/b/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_33

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_33

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_3a

    .line 150
    const/4 v0, 0x1

    .line 155
    :goto_31
    monitor-exit p0

    return v0

    .line 152
    :cond_33
    if-eqz v0, :cond_38

    .line 153
    :try_start_35
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3a

    .line 155
    :cond_38
    const/4 v0, 0x0

    goto :goto_31

    .line 146
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/myoffer/c/b;)J
    .registers 9

    .prologue
    const-wide/16 v0, -0x1

    .line 112
    monitor-enter p0

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1c

    .line 114
    if-nez p1, :cond_b

    .line 115
    const-wide/16 v0, 0x0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_19

    .line 141
    :goto_9
    monitor-exit p0

    return-wide v0

    .line 117
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/anythink/myoffer/b/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_a6
    .catchall {:try_start_b .. :try_end_14} :catchall_19

    move-result-object v2

    if-nez v2, :cond_1f

    .line 118
    :try_start_17
    monitor-exit p0

    goto :goto_9

    .line 142
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    .line 112
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_1f
    :try_start_1f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 122
    const-string v3, "offer_id"

    iget-object v4, p1, Lcom/anythink/myoffer/c/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v3, "show_num"

    iget v4, p1, Lcom/anythink/myoffer/c/b;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v3, "show_time"

    iget-wide v4, p1, Lcom/anythink/myoffer/c/b;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    const-string v3, "record_date"

    iget-object v4, p1, Lcom/anythink/myoffer/c/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "offer_cap"

    iget v4, p1, Lcom/anythink/myoffer/c/b;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v3, "offer_pacing"

    iget-wide v4, p1, Lcom/anythink/myoffer/c/b;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    iget-object v3, p1, Lcom/anythink/myoffer/c/b;->a:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/anythink/myoffer/b/c;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "offer_id = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/anythink/myoffer/c/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    iget-object v4, p0, Lcom/anythink/myoffer/b/c;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "my_offer_cap_pacing"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_8d} :catch_a6
    .catchall {:try_start_1f .. :try_end_8d} :catchall_19

    move-result v0

    int-to-long v0, v0

    :try_start_8f
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_19

    goto/16 :goto_9

    .line 135
    :cond_92
    :try_start_92
    iget-object v3, p0, Lcom/anythink/myoffer/b/c;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "my_offer_cap_pacing"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a2} :catch_a6
    .catchall {:try_start_92 .. :try_end_a2} :catchall_19

    move-result-wide v0

    :try_start_a3
    monitor-exit p0

    goto/16 :goto_9

    .line 138
    :catch_a6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_19

    goto/16 :goto_9
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/anythink/myoffer/c/b;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 32
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " WHERE offer_id = \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v2, "SELECT * FROM my_offer_cap_pacing"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_58

    move-result-object v0

    .line 36
    :try_start_21
    iget-object v2, p0, Lcom/anythink/myoffer/b/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_2f} :catch_5b
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2f} :catch_66
    .catchall {:try_start_21 .. :try_end_2f} :catchall_6e

    move-result-object v2

    .line 38
    if-eqz v2, :cond_49

    :try_start_32
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_49

    .line 39
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 40
    invoke-static {v2}, Lcom/anythink/myoffer/b/c;->a(Landroid/database/Cursor;)Lcom/anythink/myoffer/c/b;

    move-result-object v0

    .line 41
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_42} :catch_7c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_42} :catch_7a
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_42} :catch_78
    .catchall {:try_start_32 .. :try_end_42} :catchall_76

    .line 50
    if-eqz v2, :cond_47

    .line 51
    :try_start_44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_58

    .line 54
    :cond_47
    :goto_47
    monitor-exit p0

    return-object v0

    .line 50
    :cond_49
    if-eqz v2, :cond_4e

    .line 51
    :try_start_4b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4e
    :goto_4e
    move-object v0, v1

    .line 54
    goto :goto_47

    .line 50
    :catch_50
    move-exception v0

    move-object v0, v1

    :goto_52
    if-eqz v0, :cond_4e

    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_58

    goto :goto_4e

    .line 32
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    .line 46
    :catch_5b
    move-exception v0

    move-object v2, v1

    :goto_5d
    :try_start_5d
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_76

    .line 50
    if-eqz v2, :cond_4e

    .line 51
    :try_start_62
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4e

    .line 50
    :catch_66
    move-exception v0

    move-object v2, v1

    :goto_68
    if-eqz v2, :cond_4e

    .line 51
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4e

    .line 50
    :catchall_6e
    move-exception v0

    move-object v2, v1

    :goto_70
    if-eqz v2, :cond_75

    .line 51
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_75
    throw v0
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_58

    .line 50
    :catchall_76
    move-exception v0

    goto :goto_70

    :catch_78
    move-exception v0

    goto :goto_68

    .line 46
    :catch_7a
    move-exception v0

    goto :goto_5d

    .line 50
    :catch_7c
    move-exception v0

    move-object v0, v2

    goto :goto_52
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/myoffer/c/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " WHERE offer_cap <= show_num AND record_date=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND offer_cap != -1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v2, "SELECT * FROM my_offer_cap_pacing"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_5e

    move-result-object v0

    .line 69
    :try_start_21
    iget-object v2, p0, Lcom/anythink/myoffer/b/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_88
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_2f} :catch_67
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2f} :catch_72
    .catchall {:try_start_21 .. :try_end_2f} :catchall_7a

    move-result-object v2

    .line 70
    if-eqz v2, :cond_61

    :try_start_32
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_61

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :goto_3d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 73
    invoke-static {v2}, Lcom/anythink/myoffer/b/c;->a(Landroid/database/Cursor;)Lcom/anythink/myoffer/c/b;

    move-result-object v3

    .line 74
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_4a} :catch_86
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4a} :catch_84
    .catchall {:try_start_32 .. :try_end_4a} :catchall_82

    goto :goto_3d

    .line 86
    :catch_4b
    move-exception v0

    move-object v0, v2

    :goto_4d
    if-eqz v0, :cond_52

    .line 87
    :try_start_4f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5e

    :cond_52
    :goto_52
    move-object v0, v1

    .line 90
    :cond_53
    :goto_53
    monitor-exit p0

    return-object v0

    .line 77
    :cond_55
    :try_start_55
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_4b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_55 .. :try_end_58} :catch_86
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_84
    .catchall {:try_start_55 .. :try_end_58} :catchall_82

    .line 86
    if-eqz v2, :cond_53

    .line 87
    :try_start_5a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_53

    .line 65
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_61
    if-eqz v2, :cond_52

    .line 87
    :try_start_63
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_5e

    goto :goto_52

    .line 82
    :catch_67
    move-exception v0

    move-object v2, v1

    :goto_69
    :try_start_69
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_82

    .line 86
    if-eqz v2, :cond_52

    .line 87
    :try_start_6e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_52

    .line 86
    :catch_72
    move-exception v0

    move-object v2, v1

    :goto_74
    if-eqz v2, :cond_52

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_52

    .line 86
    :catchall_7a
    move-exception v0

    move-object v2, v1

    :goto_7c
    if-eqz v2, :cond_81

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_81
    throw v0
    :try_end_82
    .catchall {:try_start_6e .. :try_end_82} :catchall_5e

    .line 86
    :catchall_82
    move-exception v0

    goto :goto_7c

    :catch_84
    move-exception v0

    goto :goto_74

    .line 82
    :catch_86
    move-exception v0

    goto :goto_69

    .line 86
    :catch_88
    move-exception v0

    move-object v0, v1

    goto :goto_4d
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_3b

    .line 101
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "record_date != \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/anythink/myoffer/b/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_3e
    .catchall {:try_start_2 .. :try_end_20} :catchall_38

    move-result-object v1

    if-nez v1, :cond_26

    .line 103
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_38

    .line 108
    :goto_24
    monitor-exit p0

    return-void

    .line 105
    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/anythink/myoffer/b/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "my_offer_cap_pacing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_3e
    .catchall {:try_start_26 .. :try_end_36} :catchall_38

    .line 108
    :goto_36
    :try_start_36
    monitor-exit p0

    goto :goto_24

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 99
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3e
    move-exception v0

    goto :goto_36
.end method
