.class public final Lcom/anythink/basead/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/b/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/anythink/basead/b/c;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/anythink/basead/b/c;->b:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/basead/b/c;
    .registers 2

    .line 31
    sget-object v0, Lcom/anythink/basead/b/c;->a:Lcom/anythink/basead/b/c;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/anythink/basead/b/c;

    invoke-direct {v0, p0}, Lcom/anythink/basead/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/basead/b/c;->a:Lcom/anythink/basead/b/c;

    .line 34
    :cond_b
    sget-object p0, Lcom/anythink/basead/b/c;->a:Lcom/anythink/basead/b/c;

    return-object p0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/anythink/basead/c/d;
    .registers 4

    .line 174
    new-instance v0, Lcom/anythink/basead/c/d;

    invoke-direct {v0}, Lcom/anythink/basead/c/d;-><init>()V

    .line 175
    const-string v1, "offer_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    .line 176
    const-string v1, "show_num"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/d;->d:I

    .line 177
    const-string v1, "show_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/basead/c/d;->e:J

    .line 178
    const-string v1, "record_date"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/d;->f:Ljava/lang/String;

    .line 179
    const-string v1, "offer_cap"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/d;->b:I

    .line 180
    const-string v1, "offer_pacing"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/basead/c/d;->c:J

    .line 181
    return-object v0
.end method

.method private declared-synchronized d(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 153
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT offer_id FROM my_offer_cap_pacing WHERE offer_id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/anythink/basead/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 155
    if-eqz p1, :cond_33

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_33

    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_3b

    .line 157
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 159
    :cond_33
    if-eqz p1, :cond_38

    .line 160
    :try_start_35
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3b

    .line 162
    :cond_38
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 152
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/basead/c/d;)J
    .registers 8

    monitor-enter p0

    .line 119
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_ab

    .line 121
    if-nez p1, :cond_9

    .line 122
    const-wide/16 v0, 0x0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_a0

    monitor-exit p0

    return-wide v0

    .line 124
    :cond_9
    const-wide/16 v0, -0x1

    :try_start_b
    iget-object v2, p0, Lcom/anythink/basead/b/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/basead/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/basead/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_a2
    .catchall {:try_start_b .. :try_end_15} :catchall_a0

    if-nez v2, :cond_1a

    .line 125
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_a0

    monitor-exit p0

    return-wide v0

    .line 128
    :cond_1a
    :try_start_1a
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 129
    const-string v3, "offer_id"

    iget-object v4, p1, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "show_num"

    iget v4, p1, Lcom/anythink/basead/c/d;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v3, "show_time"

    iget-wide v4, p1, Lcom/anythink/basead/c/d;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v3, "record_date"

    iget-object v4, p1, Lcom/anythink/basead/c/d;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "offer_cap"

    iget v4, p1, Lcom/anythink/basead/c/d;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v3, "offer_pacing"

    iget-wide v4, p1, Lcom/anythink/basead/c/d;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    iget-object v3, p1, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/anythink/basead/b/c;->d(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8d

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "offer_id = \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "\'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v3, p0, Lcom/anythink/basead/b/c;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/basead/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/basead/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v5, "my_offer_cap_pacing"

    invoke-virtual {v3, v5, v2, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_89} :catch_a2
    .catchall {:try_start_1a .. :try_end_89} :catchall_a0

    int-to-long v0, p1

    :try_start_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_a0

    monitor-exit p0

    return-wide v0

    .line 142
    :cond_8d
    :try_start_8d
    iget-object p1, p0, Lcom/anythink/basead/b/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/basead/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/basead/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "my_offer_cap_pacing"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9d} :catch_a2
    .catchall {:try_start_8d .. :try_end_9d} :catchall_a0

    :try_start_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_a0

    monitor-exit p0

    return-wide v0

    .line 149
    :catchall_a0
    move-exception p1

    goto :goto_a9

    .line 145
    :catch_a2
    move-exception p1

    :try_start_a3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_a0

    monitor-exit p0

    return-wide v0

    .line 149
    :goto_a9
    :try_start_a9
    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a0

    :try_start_aa
    throw p1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    .line 118
    :catchall_ab
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/anythink/basead/c/d;
    .registers 4

    monitor-enter p0

    .line 39
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WHERE offer_id = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 40
    const-string v0, "SELECT * FROM my_offer_cap_pacing"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_70

    .line 41
    nop

    .line 43
    const/4 v0, 0x0

    :try_start_22
    iget-object v1, p0, Lcom/anythink/basead/b/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/basead/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/basead/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_30} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_30} :catch_5a
    .catchall {:try_start_22 .. :try_end_30} :catchall_52

    .line 45
    if-eqz p1, :cond_4f

    :try_start_32
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4f

    .line 46
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 47
    invoke-static {p1}, Lcom/anythink/basead/b/c;->a(Landroid/database/Cursor;)Lcom/anythink/basead/c/d;

    move-result-object v1

    .line 48
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_42} :catch_4d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_42} :catch_4b
    .catchall {:try_start_32 .. :try_end_42} :catchall_49

    .line 57
    if-eqz p1, :cond_47

    .line 58
    :try_start_44
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_70

    .line 49
    :cond_47
    monitor-exit p0

    return-object v1

    .line 54
    :catchall_49
    move-exception v1

    goto :goto_54

    .line 52
    :catch_4b
    move-exception v1

    goto :goto_5c

    .line 51
    :catch_4d
    move-exception v1

    goto :goto_6b

    .line 57
    :cond_4f
    if-eqz p1, :cond_6e

    .line 58
    goto :goto_6d

    .line 54
    :catchall_52
    move-exception p1

    move-object p1, v0

    .line 57
    :goto_54
    if-eqz p1, :cond_6e

    .line 58
    :goto_56
    :try_start_56
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_70

    goto :goto_6e

    .line 52
    :catch_5a
    move-exception p1

    move-object p1, v0

    .line 53
    :goto_5c
    :try_start_5c
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_62

    .line 57
    if-eqz p1, :cond_6e

    .line 58
    goto :goto_6d

    .line 57
    :catchall_62
    move-exception v0

    if-eqz p1, :cond_68

    .line 58
    :try_start_65
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_68
    throw v0
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_70

    .line 51
    :catch_69
    move-exception p1

    move-object p1, v0

    .line 57
    :goto_6b
    if-eqz p1, :cond_6e

    .line 58
    :goto_6d
    goto :goto_56

    .line 61
    :cond_6e
    :goto_6e
    monitor-exit p0

    return-object v0

    .line 38
    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/basead/c/d;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WHERE offer_cap <= show_num AND record_date=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' AND offer_cap != -1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    const-string v0, "SELECT * FROM my_offer_cap_pacing"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_7d

    .line 74
    nop

    .line 76
    const/4 v0, 0x0

    :try_start_22
    iget-object v1, p0, Lcom/anythink/basead/b/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/basead/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/basead/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_30} :catch_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_30} :catch_67
    .catchall {:try_start_22 .. :try_end_30} :catchall_5f

    .line 77
    if-eqz p1, :cond_5c

    :try_start_32
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5c

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :goto_3d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 80
    invoke-static {p1}, Lcom/anythink/basead/b/c;->a(Landroid/database/Cursor;)Lcom/anythink/basead/c/d;

    move-result-object v2

    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_3d

    .line 84
    :cond_4b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4e} :catch_5a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_4e} :catch_58
    .catchall {:try_start_32 .. :try_end_4e} :catchall_56

    .line 85
    nop

    .line 93
    if-eqz p1, :cond_54

    .line 94
    :try_start_51
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_7d

    .line 85
    :cond_54
    monitor-exit p0

    return-object v1

    .line 90
    :catchall_56
    move-exception v1

    goto :goto_61

    .line 88
    :catch_58
    move-exception v1

    goto :goto_69

    .line 87
    :catch_5a
    move-exception v1

    goto :goto_78

    .line 93
    :cond_5c
    if-eqz p1, :cond_7b

    .line 94
    goto :goto_7a

    .line 90
    :catchall_5f
    move-exception p1

    move-object p1, v0

    .line 93
    :goto_61
    if-eqz p1, :cond_7b

    .line 94
    :goto_63
    :try_start_63
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_7d

    goto :goto_7b

    .line 88
    :catch_67
    move-exception p1

    move-object p1, v0

    .line 89
    :goto_69
    :try_start_69
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6f

    .line 93
    if-eqz p1, :cond_7b

    .line 94
    goto :goto_7a

    .line 93
    :catchall_6f
    move-exception v0

    if-eqz p1, :cond_75

    .line 94
    :try_start_72
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_75
    throw v0
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_7d

    .line 87
    :catch_76
    move-exception p1

    move-object p1, v0

    .line 93
    :goto_78
    if-eqz p1, :cond_7b

    .line 94
    :goto_7a
    goto :goto_63

    .line 97
    :cond_7b
    :goto_7b
    monitor-exit p0

    return-object v0

    .line 71
    :catchall_7d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 106
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_3f

    .line 108
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "record_date != \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/anythink/basead/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_39
    .catchall {:try_start_2 .. :try_end_21} :catchall_37

    if-nez v0, :cond_26

    .line 110
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_37

    monitor-exit p0

    return-void

    .line 112
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/anythink/basead/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/b/b;->a(Landroid/content/Context;)Lcom/anythink/basead/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "my_offer_cap_pacing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_39
    .catchall {:try_start_26 .. :try_end_36} :catchall_37

    .line 114
    goto :goto_3a

    .line 115
    :catchall_37
    move-exception p1

    goto :goto_3d

    .line 113
    :catch_39
    move-exception p1

    .line 115
    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_37

    monitor-exit p0

    return-void

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_37

    :try_start_3e
    throw p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    .line 105
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
