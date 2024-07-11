.class public Lcom/ss/android/downloadlib/e/c;
.super Ljava/lang/Object;
.source "ClickEventHelper.java"


# static fields
.field private static volatile b:Lcom/ss/android/downloadlib/e/c;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/ss/android/downloadlib/e/b;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/e/b;-><init>(Landroid/content/Context;)V

    .line 43
    :try_start_c
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/e/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/e/c;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_13

    .line 46
    goto :goto_17

    .line 44
    :catchall_13
    move-exception v0

    .line 45
    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/Throwable;)V

    .line 47
    :goto_17
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/e/c;
    .registers 2

    .line 30
    sget-object v0, Lcom/ss/android/downloadlib/e/c;->b:Lcom/ss/android/downloadlib/e/c;

    if-nez v0, :cond_17

    .line 31
    const-class v0, Lcom/ss/android/downloadlib/e/c;

    monitor-enter v0

    .line 32
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/e/c;->b:Lcom/ss/android/downloadlib/e/c;

    if-nez v1, :cond_12

    .line 33
    new-instance v1, Lcom/ss/android/downloadlib/e/c;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/e/c;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/e/c;->b:Lcom/ss/android/downloadlib/e/c;

    .line 35
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 37
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/e/c;->b:Lcom/ss/android/downloadlib/e/c;

    return-object v0
.end method

.method private c(JLjava/lang/String;)V
    .registers 11

    .line 144
    iget-object v0, p0, Lcom/ss/android/downloadlib/e/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_56

    .line 148
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_55

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_55

    .line 152
    :cond_18
    :try_start_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    const-string p3, "req_id"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 154
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 155
    return-void

    .line 157
    :cond_2a
    const-string v0, "time < ? AND ad_id = ? AND req_id = ?"

    .line 160
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x48190800

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    .line 162
    iget-object p1, p0, Lcom/ss/android/downloadlib/e/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "click_event"

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4f} :catch_50

    .line 165
    goto :goto_54

    .line 163
    :catch_50
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    :goto_54
    return-void

    .line 149
    :cond_55
    :goto_55
    return-void

    .line 145
    :cond_56
    :goto_56
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .registers 9

    .line 72
    const-string v0, "req_id"

    iget-object v1, p0, Lcom/ss/android/downloadlib/e/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5a

    .line 76
    :cond_d
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_59

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_59

    .line 80
    :cond_1a
    :try_start_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 83
    return-void

    .line 85
    :cond_2a
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 86
    const-string v3, "ad_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    iget-object v0, p0, Lcom/ss/android/downloadlib/e/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "click_event"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_50} :catch_51

    .line 93
    goto :goto_55

    .line 91
    :catch_51
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    :goto_55
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/e/c;->c(JLjava/lang/String;)V

    .line 95
    return-void

    .line 77
    :cond_59
    :goto_59
    return-void

    .line 73
    :cond_5a
    :goto_5a
    return-void
.end method

.method public b()Z
    .registers 4

    .line 53
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "click_event_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public b(JLjava/lang/String;)Z
    .registers 16

    .line 105
    iget-object v0, p0, Lcom/ss/android/downloadlib/e/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_79

    .line 109
    :cond_c
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_78

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_78

    .line 112
    :cond_19
    const/4 v0, 0x0

    .line 114
    :try_start_1a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    const-string p3, "req_id"

    invoke-virtual {v2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 116
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 117
    nop

    .line 130
    nop

    .line 117
    return v1

    .line 119
    :cond_2e
    const-string v6, "time > ? AND ad_id = ? AND req_id = ?"

    .line 122
    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x48190800

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v7, p2

    const/4 p1, 0x2

    aput-object p3, v7, p1

    .line 124
    iget-object v3, p0, Lcom/ss/android/downloadlib/e/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "click_event"

    sget-object v5, Lcom/ss/android/downloadlib/e/b;->a:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_5d} :catch_68
    .catchall {:try_start_1a .. :try_end_5d} :catchall_66

    if-lez p1, :cond_60

    move v1, p2

    .line 130
    :cond_60
    if-eqz v0, :cond_65

    .line 131
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_65
    return v1

    .line 130
    :catchall_66
    move-exception p1

    goto :goto_72

    .line 127
    :catch_68
    move-exception p1

    .line 128
    :try_start_69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_66

    .line 130
    if-eqz v0, :cond_71

    .line 131
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_71
    return v1

    .line 130
    :goto_72
    if-eqz v0, :cond_77

    .line 131
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_77
    throw p1

    .line 110
    :cond_78
    :goto_78
    return v1

    .line 106
    :cond_79
    :goto_79
    return v1
.end method

.method public c()Z
    .registers 4

    .line 60
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "click_event_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method
