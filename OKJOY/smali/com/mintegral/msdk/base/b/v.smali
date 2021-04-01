.class public Lcom/mintegral/msdk/base/b/v;
.super Lcom/mintegral/msdk/base/b/a;
.source "VideoDao.java"


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
.field private static b:Lcom/mintegral/msdk/base/b/v;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/b/v;->b:Lcom/mintegral/msdk/base/b/v;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 15
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/v;
    .registers 3

    .prologue
    .line 20
    sget-object v0, Lcom/mintegral/msdk/base/b/v;->b:Lcom/mintegral/msdk/base/b/v;

    if-nez v0, :cond_13

    .line 21
    const-class v1, Lcom/mintegral/msdk/base/b/v;

    monitor-enter v1

    .line 22
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/v;->b:Lcom/mintegral/msdk/base/b/v;

    if-nez v0, :cond_12

    .line 23
    new-instance v0, Lcom/mintegral/msdk/base/b/v;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/v;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/v;->b:Lcom/mintegral/msdk/base/b/v;

    .line 25
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 27
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/v;->b:Lcom/mintegral/msdk/base/b/v;

    return-object v0

    .line 25
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
    .line 145
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT id FROM video WHERE video_url = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/v;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2d

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_34

    .line 150
    const/4 v0, 0x1

    .line 155
    :goto_2b
    monitor-exit p0

    return v0

    .line 152
    :cond_2d
    if-eqz v0, :cond_32

    .line 153
    :try_start_2f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_34

    .line 155
    :cond_32
    const/4 v0, 0x0

    goto :goto_2b

    .line 145
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/CampaignEx;J)J
    .registers 14

    .prologue
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    .line 94
    monitor-enter p0

    if-nez p1, :cond_9

    .line 141
    :cond_7
    :goto_7
    monitor-exit p0

    return-wide v0

    .line 97
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/v;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_11

    move-wide v0, v2

    .line 98
    goto :goto_7

    .line 100
    :cond_11
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 101
    const-string v5, "id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "package_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v5, "app_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v5, "app_desc"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v5, "app_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v5, "image_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v5, "icon_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v5, "image_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v5, "impression_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v5, "notice_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v5, "download_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v5, "only_impression"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v5, "ts"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string v5, "template"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTemplate()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v5, "click_mode"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v5, "landing_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v5, "link_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v5, "star"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRating()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 120
    const-string v5, "cti"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickInterval()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v5, "cpti"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPreClickInterval()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v5, "preclick"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isPreClick()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    const-string v5, "level"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCacheLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v5, "adSource"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v5, "ad_call"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v5, "fc_a"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v5, "ad_url_list"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "video_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v5, "total_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v5, "video_state"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v5, "video_download_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v5, "ad_bid_token"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mintegral/msdk/base/b/v;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 137
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/v;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "video"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_171} :catch_174
    .catchall {:try_start_9 .. :try_end_171} :catchall_178

    move-result-wide v0

    goto/16 :goto_7

    .line 141
    :catch_174
    move-exception v0

    move-wide v0, v2

    goto/16 :goto_7

    .line 94
    :catchall_178
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;JI)J
    .registers 13

    .prologue
    .line 160
    const/4 v0, -0x1

    .line 162
    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/v;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_a

    .line 163
    const-wide/16 v0, -0x1

    .line 178
    :goto_9
    return-wide v0

    .line 165
    :cond_a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 166
    const-string v2, "pregeress_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string v2, "video_state"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "video_url = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 171
    monitor-enter v3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_59

    .line 172
    :try_start_42
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/v;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "video"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 173
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_50

    .line 178
    :cond_4e
    :goto_4e
    int-to-long v0, v0

    goto :goto_9

    .line 173
    :catchall_50
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :goto_54
    :try_start_54
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_5b

    :try_start_55
    throw v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_56} :catch_56

    :catch_56
    move-exception v0

    move v0, v1

    goto :goto_4e

    :catch_59
    move-exception v1

    goto :goto_4e

    :catchall_5b
    move-exception v0

    goto :goto_54
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/p;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 31
    monitor-enter p0

    :try_start_2
    new-instance v1, Lcom/mintegral/msdk/base/entity/p;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/p;-><init>()V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " WHERE video_url = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND ad_bid_token = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT * FROM video"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_9f

    move-result-object v2

    .line 37
    :try_start_35
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/v;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3d} :catch_91
    .catchall {:try_start_35 .. :try_end_3d} :catchall_a2

    move-result-object v0

    .line 39
    if-eqz v0, :cond_99

    :try_start_40
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_99

    .line 40
    :goto_46
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 41
    const-string v2, "video_url"

    .line 42
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 41
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/p;->a(Ljava/lang/String;)V

    .line 43
    const-string v2, "video_state"

    .line 44
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 43
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/p;->b(I)V

    .line 45
    const-string v2, "pregeress_size"

    .line 46
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 45
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/entity/p;->b(J)V

    .line 47
    const-string v2, "total_size"

    .line 48
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 47
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/p;->a(I)V

    .line 49
    const-string v2, "video_download_start"

    .line 51
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 50
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/entity/p;->a(J)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_90} :catch_91
    .catchall {:try_start_40 .. :try_end_90} :catchall_ac

    goto :goto_46

    .line 57
    :catch_91
    move-exception v2

    if-eqz v0, :cond_97

    .line 58
    :try_start_94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_9f

    .line 61
    :cond_97
    :goto_97
    monitor-exit p0

    return-object v1

    .line 57
    :cond_99
    if-eqz v0, :cond_97

    .line 58
    :try_start_9b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_9f

    goto :goto_97

    .line 31
    :catchall_9f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 57
    :catchall_a2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_a6
    if-eqz v1, :cond_ab

    .line 58
    :try_start_a8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ab
    throw v0
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_9f

    .line 57
    :catchall_ac
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_a6
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video_url = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/v;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_29
    .catchall {:try_start_1 .. :try_end_19} :catchall_2b

    move-result-object v1

    if-nez v1, :cond_1e

    .line 73
    :goto_1c
    monitor-exit p0

    return-void

    .line 70
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/v;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "video"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29
    .catchall {:try_start_1e .. :try_end_28} :catchall_2b

    goto :goto_1c

    .line 73
    :catch_29
    move-exception v0

    goto :goto_1c

    .line 66
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
