.class public Lcom/mintegral/msdk/base/b/o;
.super Lcom/mintegral/msdk/base/b/a;
.source "OfferWallClickDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/base/entity/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/b/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/mintegral/msdk/base/b/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/o;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 30
    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 57
    monitor-enter p0

    .line 60
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "select count(*) from offer_wall_click where host=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_2e

    .line 63
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 64
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2d} :catch_35
    .catchall {:try_start_3 .. :try_end_2d} :catchall_42

    move-result v0

    .line 70
    :cond_2e
    if-eqz v2, :cond_33

    .line 71
    :try_start_30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3f

    .line 75
    :cond_33
    :goto_33
    monitor-exit p0

    return v0

    .line 68
    :catch_35
    move-exception v1

    :try_start_36
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_42

    .line 70
    if-eqz v2, :cond_33

    .line 71
    :try_start_3b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_33

    .line 57
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :catchall_42
    move-exception v0

    if-eqz v2, :cond_48

    .line 71
    :try_start_45
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_3f
.end method

.method public static c()Lcom/mintegral/msdk/base/b/o;
    .registers 3

    .prologue
    .line 34
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/base/b/o;->c:Lcom/mintegral/msdk/base/b/o;

    if-nez v0, :cond_21

    .line 35
    const-class v1, Lcom/mintegral/msdk/base/b/w;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_2f

    .line 36
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/o;->c:Lcom/mintegral/msdk/base/b/o;

    if-nez v0, :cond_20

    .line 37
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_24

    .line 39
    new-instance v2, Lcom/mintegral/msdk/base/b/o;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mintegral/msdk/base/b/o;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v2, Lcom/mintegral/msdk/base/b/o;->c:Lcom/mintegral/msdk/base/b/o;

    .line 44
    :cond_20
    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_2c

    .line 49
    :cond_21
    :goto_21
    sget-object v0, Lcom/mintegral/msdk/base/b/o;->c:Lcom/mintegral/msdk/base/b/o;

    return-object v0

    .line 41
    :cond_24
    :try_start_24
    sget-object v0, Lcom/mintegral/msdk/base/b/o;->b:Ljava/lang/String;

    const-string v2, "OfferWallClickDao get Context is null"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 44
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 47
    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method private declared-synchronized d(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 111
    monitor-enter p0

    .line 113
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "select * from offer_wall_click where clickId = \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_46

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_46

    .line 116
    :cond_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 117
    const-string v0, "clickId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_4d
    .catchall {:try_start_2 .. :try_end_3b} :catchall_5a

    move-result v0

    if-eqz v0, :cond_28

    .line 126
    if-eqz v1, :cond_43

    .line 127
    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_57

    .line 119
    :cond_43
    const/4 v0, 0x1

    .line 130
    :goto_44
    monitor-exit p0

    return v0

    .line 126
    :cond_46
    if-eqz v1, :cond_4b

    .line 127
    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_57

    .line 130
    :cond_4b
    :goto_4b
    const/4 v0, 0x0

    goto :goto_44

    .line 124
    :catch_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5a

    .line 126
    if-eqz v1, :cond_4b

    .line 127
    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_4b

    .line 111
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :catchall_5a
    move-exception v0

    if-eqz v1, :cond_60

    .line 127
    :try_start_5d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_60
    throw v0
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_57
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 135
    monitor-enter p0

    .line 137
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_5c

    move-result v1

    if-nez v1, :cond_53

    .line 139
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM offer_wall_click where unitId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and install_status=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_6a
    .catchall {:try_start_8 .. :try_end_25} :catchall_5f

    move-result-object v2

    .line 142
    if-eqz v2, :cond_56

    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_56

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_6d
    .catchall {:try_start_28 .. :try_end_33} :catchall_68

    .line 144
    :goto_33
    :try_start_33
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 145
    const-string v0, "campaignId"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_47
    .catchall {:try_start_33 .. :try_end_46} :catchall_68

    goto :goto_33

    .line 150
    :catch_47
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_4b
    :try_start_4b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_68

    .line 152
    if-eqz v2, :cond_53

    .line 153
    :try_start_50
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5c

    .line 157
    :cond_53
    :goto_53
    monitor-exit p0

    return-object v0

    :cond_55
    move-object v0, v1

    .line 152
    :cond_56
    if-eqz v2, :cond_53

    .line 153
    :try_start_58
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_53

    .line 135
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :catchall_5f
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_62
    if-eqz v2, :cond_67

    .line 153
    :try_start_64
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_67
    throw v0
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_5c

    .line 152
    :catchall_68
    move-exception v0

    goto :goto_62

    .line 150
    :catch_6a
    move-exception v1

    move-object v2, v0

    goto :goto_4b

    :catch_6d
    move-exception v1

    goto :goto_4b
.end method

.method public final declared-synchronized a(JLjava/lang/String;)V
    .registers 9

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "time<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and unitId=? and install_status=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 92
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 93
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "offer_wall_click"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_40
    .catchall {:try_start_1 .. :try_end_36} :catchall_45

    .line 102
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 96
    :cond_38
    :try_start_38
    sget-object v0, Lcom/mintegral/msdk/base/b/o;->b:Ljava/lang/String;

    const-string v1, "unitId not for null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_40
    .catchall {:try_start_38 .. :try_end_3f} :catchall_45

    goto :goto_36

    .line 100
    :catch_40
    move-exception v0

    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_36

    .line 87
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 225
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_84
    .catchall {:try_start_1 .. :try_end_c} :catchall_89

    move-result v0

    if-eqz v0, :cond_11

    .line 254
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 228
    :cond_11
    :try_start_11
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 229
    const-string v1, "clickId"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    const-string v1, "noticeUrl"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "unitId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "host"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "campaignId"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "install_status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8c

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/b/o;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 237
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 238
    const-string v2, "clickId=?"

    .line 239
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "offer_wall_click"

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_83} :catch_84
    .catchall {:try_start_11 .. :try_end_83} :catchall_89

    goto :goto_f

    .line 251
    :catch_84
    move-exception v0

    :try_start_85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_f

    .line 225
    :catchall_89
    move-exception v0

    monitor-exit p0

    throw v0

    .line 242
    :cond_8c
    :try_start_8c
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/b/o;->c(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x63

    if-le v1, v2, :cond_a1

    .line 243
    const-string v1, "delete from offer_wall_click WHERE id in(select id from offer_wall_click order by time desc limit 1)"

    .line 245
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    :cond_a1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "offer_wall_click"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_ab} :catch_84
    .catchall {:try_start_8c .. :try_end_ab} :catchall_89

    goto/16 :goto_f
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3a

    move-result v0

    if-nez v0, :cond_33

    .line 207
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE offer_wall_click Set install_status==1 WHERE campaignId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND unitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 210
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_33} :catch_35
    .catchall {:try_start_d .. :try_end_33} :catchall_3a

    .line 216
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 213
    :catch_35
    move-exception v0

    :try_start_36
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_33

    .line 205
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/k;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 167
    monitor-enter p0

    .line 169
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9d

    move-result v1

    if-nez v1, :cond_94

    .line 171
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM offer_wall_click where unitId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and install_status=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/o;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_ae
    .catchall {:try_start_8 .. :try_end_25} :catchall_a0

    move-result-object v9

    .line 175
    if-eqz v9, :cond_97

    :try_start_28
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_97

    .line 176
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_b1
    .catchall {:try_start_28 .. :try_end_33} :catchall_a9

    .line 177
    :goto_33
    :try_start_33
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 178
    const-string v0, "unitId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 179
    const-string v0, "clickId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    const-string v0, "noticeUrl"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v0, "time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 182
    const-string v0, "host"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 183
    const-string v0, "campaignId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    const-string v0, "install_status"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 185
    new-instance v0, Lcom/mintegral/msdk/base/entity/k;

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 187
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_87} :catch_88
    .catchall {:try_start_33 .. :try_end_87} :catchall_a9

    goto :goto_33

    .line 191
    :catch_88
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    move-object v0, v10

    :goto_8c
    :try_start_8c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_ab

    .line 193
    if-eqz v2, :cond_94

    .line 194
    :try_start_91
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_9d

    .line 198
    :cond_94
    :goto_94
    monitor-exit p0

    return-object v0

    :cond_96
    move-object v0, v10

    .line 193
    :cond_97
    if-eqz v9, :cond_94

    .line 194
    :try_start_99
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    goto :goto_94

    .line 167
    :catchall_9d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :catchall_a0
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_a3
    if-eqz v9, :cond_a8

    .line 194
    :try_start_a5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a8
    throw v0
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_9d

    .line 193
    :catchall_a9
    move-exception v0

    goto :goto_a3

    :catchall_ab
    move-exception v0

    move-object v9, v2

    goto :goto_a3

    .line 191
    :catch_ae
    move-exception v1

    move-object v2, v0

    goto :goto_8c

    :catch_b1
    move-exception v1

    move-object v2, v9

    goto :goto_8c
.end method
