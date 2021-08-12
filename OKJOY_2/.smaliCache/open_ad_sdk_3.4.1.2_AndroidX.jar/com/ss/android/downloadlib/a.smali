.class public Lcom/ss/android/downloadlib/a;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Lcom/ss/android/downloadad/a/a;
.implements Lcom/ss/android/socialbase/appdownloader/b$c;
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a$a;,
        Lcom/ss/android/downloadlib/a$c;,
        Lcom/ss/android/downloadlib/a$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile d:Lcom/ss/android/downloadlib/a;


# instance fields
.field private b:J

.field private c:Lcom/ss/android/downloadlib/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    const-class v0, Lcom/ss/android/downloadlib/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/b$c;)V

    .line 108
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 109
    return-void
.end method

.method private a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 10

    .line 752
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    .line 753
    invoke-static {v0, p2}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)I

    move-result v0

    .line 754
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/ss/android/downloadlib/h/k;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 755
    if-lez v0, :cond_1e

    if-lez v1, :cond_1e

    if-eq v0, v1, :cond_1e

    .line 757
    if-le v1, v0, :cond_1b

    const/16 p1, 0xbc3

    goto :goto_1d

    :cond_1b
    const/16 p1, 0xbc2

    :goto_1d
    return p1

    .line 761
    :cond_1e
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "install_finish_check_ttmd5"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_70

    .line 762
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "sp_ttdownloader_md5"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 763
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    if-eqz p2, :cond_57

    .line 765
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 767
    :cond_57
    invoke-static {p3}, Lcom/ss/android/downloadlib/h/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/h/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 771
    :try_start_5f
    const-string p2, "ttmd5_status"

    invoke-virtual {p4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_65

    .line 774
    goto :goto_66

    .line 772
    :catchall_65
    move-exception p2

    .line 776
    :goto_66
    if-nez p1, :cond_6b

    .line 778
    const/16 p1, 0xbb8

    return p1

    .line 781
    :cond_6b
    if-ne p1, v2, :cond_70

    .line 783
    const/16 p1, 0xbba

    return p1

    .line 787
    :cond_70
    const/16 p1, 0xbb9

    return p1
.end method

.method public static a()Lcom/ss/android/downloadlib/a;
    .registers 2

    .line 112
    sget-object v0, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;

    if-nez v0, :cond_17

    .line 113
    const-class v0, Lcom/ss/android/downloadlib/a;

    monitor-enter v0

    .line 114
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;

    if-nez v1, :cond_12

    .line 115
    new-instance v1, Lcom/ss/android/downloadlib/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/a;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;

    .line 117
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 119
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/a;->d:Lcom/ss/android/downloadlib/a;

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;"
        }
    .end annotation

    .line 529
    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3f

    .line 532
    :cond_10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 533
    if-nez v1, :cond_23

    .line 534
    goto :goto_14

    .line 536
    :cond_23
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 537
    return-object v1

    .line 539
    :cond_2e
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, p1}, Lcom/ss/android/downloadlib/h/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 541
    return-object v1

    .line 543
    :cond_3d
    goto :goto_14

    .line 544
    :cond_3e
    return-object v0

    .line 530
    :cond_3f
    :goto_3f
    return-object v0
.end method

.method private a(Lcom/ss/android/downloadad/a/b/b;Ljava/lang/String;I)Lorg/json/JSONObject;
    .registers 13

    .line 1067
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1070
    :try_start_5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v1

    .line 1072
    const-string v2, "scene"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1074
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result p3

    invoke-static {v0, p3}, Lcom/ss/android/downloadlib/h/f;->a(Lorg/json/JSONObject;I)V

    .line 1075
    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/h/f;->a(Lcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;)V

    .line 1077
    const-string p3, "is_update_download"

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->U()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_34

    move v2, v3

    goto :goto_35

    :cond_34
    move v2, v4

    :goto_35
    invoke-virtual {v0, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1078
    const-string p3, "install_after_back_app"

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->aa()Z

    move-result v2

    if-eqz v2, :cond_42

    move v2, v3

    goto :goto_43

    :cond_42
    move v2, v4

    :goto_43
    invoke-virtual {v0, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1080
    const-string p3, "clean_space_install_params"

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->Q()Z

    move-result v2

    if-eqz v2, :cond_51

    const-string v2, "1"

    goto :goto_53

    :cond_51
    const-string v2, "2"

    :goto_53
    invoke-virtual {v0, p3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1082
    if-eqz v1, :cond_9c

    .line 1083
    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_bc

    .line 1085
    :try_start_5b
    const-string p3, "uninstall_resume_count"

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUninstallResumeCount()I

    move-result v2

    invoke-virtual {v0, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1086
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->B()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p3, v5, v7

    if-lez p3, :cond_7c

    .line 1087
    const-string p3, "install_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->B()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v0, p3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_7c
    .catchall {:try_start_5b .. :try_end_7c} :catchall_7d

    .line 1091
    :cond_7c
    goto :goto_7e

    .line 1089
    :catchall_7d
    move-exception p3

    .line 1092
    :goto_7e
    :try_start_7e
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    const-string v2, "ah_attempt"

    invoke-virtual {p3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 v2, 0x0

    invoke-static {p3, v2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1093
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 1094
    invoke-static {p3}, Lcom/ss/android/socialbase/appdownloader/a;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object p3

    .line 1095
    if-eqz p3, :cond_9c

    .line 1096
    invoke-virtual {p3, v0}, Lcom/ss/android/socialbase/appdownloader/a;->a(Lorg/json/JSONObject;)V

    .line 1101
    :cond_9c
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result p1

    .line 1102
    const-string p2, "fail_status"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a5
    .catchall {:try_start_7e .. :try_end_a5} :catchall_bc

    .line 1105
    const/16 p2, 0xbb8

    const-string p3, "hijack"

    if-ne p1, p2, :cond_af

    .line 1106
    :try_start_ab
    invoke-virtual {v0, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_bb

    .line 1107
    :cond_af
    const/16 p2, 0xbb9

    if-ne p1, p2, :cond_b8

    .line 1108
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_bb

    .line 1110
    :cond_b8
    invoke-virtual {v0, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_bb
    .catchall {:try_start_ab .. :try_end_bb} :catchall_bc

    .line 1115
    :goto_bb
    goto :goto_c0

    .line 1113
    :catchall_bc
    move-exception p1

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1116
    :goto_c0
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;
    .registers 11

    .line 548
    if-eqz p0, :cond_231

    if-nez p1, :cond_6

    goto/16 :goto_231

    .line 552
    :cond_6
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 553
    const-string v1, "download_event_opt"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_18

    .line 554
    return-object p0

    .line 558
    :cond_18
    :try_start_18
    const-string v0, "download_id"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 559
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    const-string v0, "cur_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 561
    const-string v0, "total_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 562
    const-string v0, "network_quality"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getNetworkQuality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/k;->a()Lcom/ss/android/socialbase/downloader/network/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/k;->b()Lcom/ss/android/socialbase/downloader/network/l;

    move-result-object v0

    .line 564
    const-string v1, "current_network_quality"

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/l;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v0, "only_wifi"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_61

    move v1, v2

    goto :goto_62

    :cond_61
    move v1, v3

    :goto_62
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 566
    const-string v0, "need_https_degrade"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedHttpsToHttpRetry()Z

    move-result v1

    if-eqz v1, :cond_6f

    move v1, v2

    goto :goto_70

    :cond_6f
    move v1, v3

    :goto_70
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 567
    const-string v0, "https_degrade_retry_used"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isHttpsToHttpRetryUsed()Z

    move-result v1

    if-eqz v1, :cond_7d

    move v1, v2

    goto :goto_7e

    :cond_7d
    move v1, v3

    :goto_7e
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 568
    const-string v0, "chunk_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 569
    const-string v0, "retry_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 570
    const-string v0, "cur_retry_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTime()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 571
    const-string v0, "need_retry_delay"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedRetryDelay()Z

    move-result v1

    if-eqz v1, :cond_a6

    move v1, v2

    goto :goto_a7

    :cond_a6
    move v1, v3

    :goto_a7
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 572
    const-string v0, "backup_url_used"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isBackUpUrlUsed()Z

    move-result v1

    if-eqz v1, :cond_b4

    move v1, v2

    goto :goto_b5

    :cond_b4
    move v1, v3

    :goto_b5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 573
    const-string v0, "head_connection_error_msg"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getHeadConnectionException()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c5

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getHeadConnectionException()Ljava/lang/String;

    move-result-object v1

    goto :goto_c7

    :cond_c5
    const-string v1, ""

    :goto_c7
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    const-string v0, "need_independent_process"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedIndependentProcess()Z

    move-result v1

    if-eqz v1, :cond_d4

    move v1, v2

    goto :goto_d5

    :cond_d4
    move v1, v3

    :goto_d5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    const-string v0, "total_retry_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalRetryCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 577
    const-string v0, "cur_retry_time_in_total"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTimeInTotal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 579
    const-string v0, "real_download_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealDownloadTime()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 580
    const-string v0, "first_speed_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFirstSpeedTime()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 581
    const-string v0, "all_connect_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAllConnectTime()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 582
    const-string v0, "download_prepare_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadPrepareTime()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 583
    const-string v0, "download_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealDownloadTime()J

    move-result-wide v4

    .line 584
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAllConnectTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadPrepareTime()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 583
    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 586
    const-string v0, "chunk_downgrade_retry_used"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkDowngradeRetryUsed()Z

    move-result v1

    if-eqz v1, :cond_12b

    move v1, v2

    goto :goto_12c

    :cond_12b
    move v1, v3

    :goto_12c
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 587
    const-string v0, "need_chunk_downgrade_retry"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedChunkDowngradeRetry()Z

    move-result v1

    if-eqz v1, :cond_139

    move v1, v2

    goto :goto_13a

    :cond_139
    move v1, v3

    :goto_13a
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 588
    const-string v0, "failed_resume_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getFailedResumeCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 589
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPreconnectLevel()I

    move-result v0

    .line 590
    const-string v1, "preconnect_level"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 592
    const-string v0, "md5"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    const-string v0, "expect_file_length"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 595
    const-string v0, "retry_schedule_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryScheduleCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 596
    const-string v0, "rw_concurrent"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isRwConcurrent()Z

    move-result v1

    if-eqz v1, :cond_174

    move v1, v2

    goto :goto_175

    :cond_174
    move v1, v3

    :goto_175
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 598
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v4

    .line 599
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealDownloadTime()J

    move-result-wide v4
    :try_end_184
    .catchall {:try_start_18 .. :try_end_184} :catchall_22c

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 600
    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v6

    if-lez v8, :cond_1bb

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1bb

    .line 601
    div-double/2addr v0, v4

    .line 603
    :try_start_196
    const-string v4, "download_speed"

    invoke-virtual {p0, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_19b} :catch_19c
    .catchall {:try_start_196 .. :try_end_19b} :catchall_22c

    .line 606
    goto :goto_19d

    .line 604
    :catch_19c
    move-exception v4

    .line 607
    :goto_19d
    :try_start_19d
    sget-object v4, Lcom/ss/android/downloadlib/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download speed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bb
    .catchall {:try_start_19d .. :try_end_1bb} :catchall_22c

    .line 611
    :cond_1bb
    :try_start_1bb
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    .line 612
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->isDownloadServiceForeground(I)Z

    move-result v0

    .line 613
    const-string v1, "is_download_service_foreground"

    if-eqz v0, :cond_1d0

    move v3, v2

    :cond_1d0
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1d3} :catch_1d4
    .catchall {:try_start_1bb .. :try_end_1d3} :catchall_22c

    .line 616
    goto :goto_1d8

    .line 614
    :catch_1d4
    move-exception v0

    .line 615
    :try_start_1d5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    :goto_1d8
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f4

    .line 619
    const-string v0, "backup_url_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 620
    const-string v0, "cur_backup_url_index"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBackUpUrlIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 622
    :cond_1f4
    const-string v0, "clear_space_restart_times"

    .line 623
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/d;->a()Lcom/ss/android/downloadlib/addownload/c/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ss/android/downloadlib/addownload/c/d;->b(Ljava/lang/String;)I

    move-result v1

    .line 622
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 624
    const-string v0, "mime_type"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    const-string v0, "network_available"

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/e;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21b

    goto :goto_21c

    :cond_21b
    const/4 v2, 0x2

    :goto_21c
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 626
    const-string v0, "status_code"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getHttpStatusCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 627
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/a;->b(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;
    :try_end_22b
    .catchall {:try_start_1d5 .. :try_end_22b} :catchall_22c

    .line 630
    goto :goto_230

    .line 628
    :catchall_22c
    move-exception p1

    .line 629
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 631
    :goto_230
    return-object p0

    .line 549
    :cond_231
    :goto_231
    return-object p0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/b/b;)V
    .registers 2

    .line 80
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a;->c(Lcom/ss/android/downloadad/a/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a;Ljava/util/concurrent/ConcurrentHashMap;I)V
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/a;->a(Ljava/util/concurrent/ConcurrentHashMap;I)V

    return-void
.end method

.method public static declared-synchronized a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;)V
    .registers 15

    const-class v0, Lcom/ss/android/downloadlib/a;

    monitor-enter v0

    .line 124
    if-eqz p0, :cond_b0

    if-nez p1, :cond_9

    goto/16 :goto_b0

    .line 128
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->F()I

    move-result v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_b5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    .line 129
    monitor-exit v0

    return-void

    .line 131
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/ss/android/downloadlib/d/g;->a()Lcom/ss/android/downloadlib/d/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/downloadlib/d/g;->d(Lcom/ss/android/downloadad/a/b/b;)V

    .line 133
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/a;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/ss/android/downloadad/a/b/b;->f(J)V

    .line 137
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/ss/android/downloadad/a/b/b;->e(I)V

    .line 138
    invoke-virtual {p1, v1}, Lcom/ss/android/downloadad/a/b/b;->b(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Ljava/util/Collection;)V

    .line 143
    invoke-static {p1}, Lcom/ss/android/downloadlib/a;->b(Lcom/ss/android/downloadad/a/b/b;)V

    .line 145
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/ss/android/downloadlib/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    .line 147
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 148
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 150
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/ss/android/downloadlib/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;)V

    .line 152
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->K()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 153
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/a/a;->a()Lcom/ss/android/downloadlib/addownload/a/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->l()J

    move-result-wide v7

    .line 154
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v12

    .line 153
    move-object v9, v1

    invoke-virtual/range {v2 .. v12}, Lcom/ss/android/downloadlib/addownload/a/a;->a(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_a3
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, v3, p1, v1}, Lcom/ss/android/downloadlib/addownload/e/a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_12 .. :try_end_ae} :catchall_b5

    .line 159
    :cond_ae
    monitor-exit v0

    return-void

    .line 125
    :cond_b0
    :goto_b0
    :try_start_b0
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b5

    .line 126
    monitor-exit v0

    return-void

    .line 123
    :catchall_b5
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/util/concurrent/ConcurrentHashMap;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/ss/android/downloadad/a/b/b;",
            ">;I)V"
        }
    .end annotation

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 869
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_116

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/downloadad/a/b/b;

    .line 870
    iget-object v4, v3, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const-string v5, "start_event_expire_hours"

    const/16 v6, 0xa8

    if-eqz v4, :cond_53

    .line 871
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->G()J

    move-result-wide v7

    sub-long v7, v1, v7

    .line 872
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v4, v7, v4

    if-ltz v4, :cond_114

    .line 873
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_114

    .line 875
    :cond_53
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->F()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_8a

    .line 876
    invoke-direct {p0, v3}, Lcom/ss/android/downloadlib/a;->d(Lcom/ss/android/downloadad/a/b/b;)I

    move-result v4

    if-gtz v4, :cond_114

    .line 878
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->G()J

    move-result-wide v7

    sub-long v7, v1, v7

    .line 879
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v4, v7, v4

    if-ltz v4, :cond_114

    .line 881
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_114

    .line 884
    :cond_8a
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->F()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_109

    .line 885
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->X()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 886
    goto/16 :goto_11

    .line 888
    :cond_99
    invoke-static {v3}, Lcom/ss/android/downloadlib/h/k;->b(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 890
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->J()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_aa

    .line 891
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->J()I

    move-result p2

    .line 893
    :cond_aa
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/b/b;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 894
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/ss/android/downloadlib/e/a;->a(Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 895
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-static {v3}, Lcom/ss/android/downloadlib/addownload/c/d;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 897
    goto :goto_114

    :cond_c8
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->G()J

    move-result-wide v4

    sub-long v4, v1, v4

    .line 898
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v7

    invoke-static {v7}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v7

    const-string v8, "finish_event_expire_hours"

    invoke-virtual {v7, v8, v6}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_f3

    .line 900
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_114

    .line 901
    :cond_f3
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 902
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_114

    .line 905
    :cond_109
    invoke-virtual {v3}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_114
    :goto_114
    goto/16 :goto_11

    .line 908
    :cond_116
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Ljava/util/List;)V

    .line 909
    return-void
.end method

.method public static b(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;
    .registers 15

    .line 635
    if-eqz p0, :cond_47

    if-nez p1, :cond_5

    goto :goto_47

    .line 638
    :cond_5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 639
    const/4 v1, 0x1

    const-string v2, "download_event_opt"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_17

    .line 640
    return-object p0

    .line 644
    :cond_17
    const-wide/16 v0, 0x0

    :try_start_19
    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/h/k;->a(J)J

    move-result-wide v2

    .line 645
    const-string v4, "available_space"

    long-to-double v5, v2

    const-wide/high16 v7, 0x4130000000000000L    # 1048576.0

    div-double v9, v5, v7

    invoke-virtual {p0, v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 647
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v9

    .line 648
    const-string p1, "apk_size"

    long-to-double v11, v9

    div-double v7, v11, v7

    invoke-virtual {p0, p1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 649
    cmp-long p1, v2, v0

    if-lez p1, :cond_41

    cmp-long p1, v9, v0

    if-lez p1, :cond_41

    .line 650
    const-string p1, "available_space_ratio"

    div-double/2addr v5, v11

    invoke-virtual {p0, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_42

    .line 656
    :cond_41
    goto :goto_46

    .line 654
    :catchall_42
    move-exception p1

    .line 655
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 657
    :goto_46
    return-object p0

    .line 636
    :cond_47
    :goto_47
    return-object p0
.end method

.method private static b(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 10

    .line 685
    if-nez p0, :cond_3

    .line 686
    return-void

    .line 688
    :cond_3
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_11

    move-object v0, v1

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->O()Ljava/lang/String;

    move-result-object v0

    .line 689
    :goto_15
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v2

    .line 690
    invoke-virtual {p0, v1}, Lcom/ss/android/downloadad/a/b/b;->l(Ljava/lang/String;)V

    .line 691
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 693
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;

    move-result-object v1

    .line 695
    const/4 v3, 0x1

    :try_start_39
    const-string v4, "finish_reason"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    const-string v0, "finish_from_reserve_wifi"

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadFromReserveWifi()Z

    move-result v4

    if-eqz v4, :cond_48

    move v4, v3

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_50} :catch_51

    .line 699
    goto :goto_55

    .line 697
    :catch_51
    move-exception v0

    .line 698
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 700
    :goto_55
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 701
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v4

    invoke-static {v1, v4}, Lcom/ss/android/downloadlib/h/f;->a(Lorg/json/JSONObject;I)V

    .line 703
    :try_start_64
    const-string v4, "download_failed_times"

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->w()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 704
    const-string v4, "can_show_notification"

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/d;->a()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_78

    move v5, v3

    goto :goto_79

    :cond_78
    move v5, v6

    :goto_79
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 706
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-lez v4, :cond_9c

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-lez v4, :cond_9c

    .line 707
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExpectFileLength()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v7

    sub-long/2addr v4, v7

    .line 708
    const-string v7, "file_length_gap"

    invoke-virtual {v1, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 710
    :cond_9c
    const-string v4, "ttmd5_status"

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTTMd5CheckStatus()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 711
    const-string v2, "has_send_download_failed_finally"

    iget-object v4, v0, Lcom/ss/android/downloadad/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_b1

    move v4, v3

    goto :goto_b2

    :cond_b1
    move v4, v6

    :goto_b2
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 713
    const-string v2, "is_update_download"

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->U()Z

    move-result v4

    if-eqz v4, :cond_be

    goto :goto_bf

    :cond_be
    move v3, v6

    :goto_bf
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 715
    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/h/f;->a(Lcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;)V
    :try_end_c5
    .catchall {:try_start_64 .. :try_end_c5} :catchall_c6

    .line 718
    goto :goto_ca

    .line 716
    :catchall_c6
    move-exception v0

    .line 717
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 719
    :goto_ca
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    const-string v2, "download_finish"

    invoke-virtual {v0, v2, v1, p0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 720
    return-void
.end method

.method private b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/a;)V
    .registers 6

    .line 983
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 984
    if-nez v0, :cond_b

    .line 985
    return-void

    .line 987
    :cond_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 988
    invoke-virtual {p2, v1}, Lcom/ss/android/socialbase/appdownloader/a;->a(Lorg/json/JSONObject;)V

    .line 990
    :try_start_13
    const-string p2, "download_id"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 991
    const-string p2, "name"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    .line 994
    goto :goto_2a

    .line 992
    :catchall_26
    move-exception p2

    .line 993
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1005
    :goto_2a
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {v1, p1}, Lcom/ss/android/downloadlib/h/f;->a(Lorg/json/JSONObject;I)V

    .line 1006
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    const-string p2, "embeded_ad"

    const-string v2, "ah_result"

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 1007
    return-void
.end method

.method public static c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;)Ljava/lang/String;
    .registers 6

    .line 795
    nop

    .line 796
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 799
    :try_start_15
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 800
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 801
    if-eqz v0, :cond_2e

    .line 802
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_2f

    move-object v2, v0

    .line 806
    :cond_2e
    goto :goto_33

    .line 804
    :catch_2f
    move-exception v0

    .line 805
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 808
    :cond_33
    :goto_33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 809
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 811
    :try_start_48
    const-string v1, "real_package_name"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    const-string v1, "input_package_name"

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_56} :catch_57

    .line 815
    goto :goto_5b

    .line 813
    :catch_57
    move-exception p0

    .line 814
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 816
    :goto_5b
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p0

    const-string v1, "embeded_ad"

    const-string v3, "package_name_error"

    invoke-virtual {p0, v1, v3, v0, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 818
    return-object v2

    .line 820
    :cond_67
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 6

    .line 729
    nop

    .line 730
    const-wide/16 v0, 0x4e20

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const/16 v2, 0xf

    .line 731
    :goto_8
    if-lez v2, :cond_21

    .line 733
    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->b(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 734
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;)V

    .line 735
    goto :goto_21

    .line 737
    :cond_18
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_1d

    .line 738
    goto :goto_21

    .line 740
    :cond_1d
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_8

    .line 742
    :cond_21
    :goto_21
    return-void
.end method

.method private d(Lcom/ss/android/downloadad/a/b/b;)I
    .registers 11

    .line 932
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "download_failed_finally_hours"

    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;D)D

    move-result-wide v0

    .line 933
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    const/4 v3, -0x1

    if-gtz v2, :cond_18

    .line 934
    return v3

    .line 936
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 937
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->G()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v6

    mul-double/2addr v0, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v6

    cmpg-double v0, v4, v0

    const/4 v1, 0x1

    if-gez v0, :cond_32

    .line 938
    return v1

    .line 940
    :cond_32
    iget-object v0, p1, Lcom/ss/android/downloadad/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    .line 941
    return v2

    .line 943
    :cond_3c
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 944
    if-nez v0, :cond_4f

    .line 945
    return v3

    .line 947
    :cond_4f
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v4

    .line 950
    const/4 v5, -0x3

    if-eq v4, v5, :cond_dc

    const/4 v5, -0x4

    if-ne v4, v5, :cond_5b

    goto/16 :goto_dc

    .line 955
    :cond_5b
    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 956
    return v1

    .line 959
    :cond_62
    iget-object v3, p1, Lcom/ss/android/downloadad/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 961
    :try_start_6a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 962
    invoke-static {v3, v0}, Lcom/ss/android/downloadlib/a;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lorg/json/JSONObject;

    .line 963
    const-string v5, "download_status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 964
    const-string v4, "fail_status"

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->D()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 965
    const-string v4, "fail_msg"

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->E()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 966
    const-string v4, "download_failed_times"

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->w()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 967
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_b4

    .line 968
    const-string v4, "download_percent"

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 970
    :cond_b4
    const-string v0, "is_update_download"

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->U()Z

    move-result v4

    if-eqz v4, :cond_be

    move v4, v1

    goto :goto_bf

    :cond_be
    const/4 v4, 0x2

    :goto_bf
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 972
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->j()Ljava/lang/String;

    move-result-object v4

    const-string v5, "download_failed_finally"

    invoke-virtual {v0, v4, v5, v3, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 973
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V
    :try_end_d6
    .catchall {:try_start_6a .. :try_end_d6} :catchall_d7

    .line 974
    return v2

    .line 975
    :catchall_d7
    move-exception p1

    .line 976
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 979
    :cond_db
    return v1

    .line 952
    :cond_dc
    :goto_dc
    return v3
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    .line 80
    sget-object v0, Lcom/ss/android/downloadlib/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 10

    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 856
    iget-wide v2, p0, Lcom/ss/android/downloadlib/a;->b:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    .line 857
    return-void

    .line 860
    :cond_10
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v2

    new-instance v3, Lcom/ss/android/downloadlib/a$a;

    invoke-direct {v3, p0, p1}, Lcom/ss/android/downloadlib/a$a;-><init>(Lcom/ss/android/downloadlib/a;I)V

    iget-wide v4, p0, Lcom/ss/android/downloadlib/a;->b:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_24

    const-wide/16 v4, 0x7d0

    goto :goto_26

    :cond_24
    const-wide/16 v4, 0x1f40

    :goto_26
    invoke-virtual {v2, v3, v4, v5}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 862
    iput-wide v0, p0, Lcom/ss/android/downloadlib/a;->b:J

    .line 863
    return-void
.end method

.method public a(J)V
    .registers 8

    .line 455
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p1

    .line 456
    if-eqz p1, :cond_7c

    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->b(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result p2

    if-nez p2, :cond_7c

    iget-object p2, p1, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_19

    goto :goto_7c

    .line 461
    :cond_19
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/d;->a()Lcom/ss/android/downloadlib/addownload/b/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/downloadlib/addownload/b/d;->b(Lcom/ss/android/downloadad/a/b/b;)Landroid/util/Pair;

    move-result-object p2

    .line 463
    nop

    .line 464
    const/4 v0, -0x1

    if-eqz p2, :cond_32

    .line 465
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/ss/android/downloadlib/addownload/b/d$a;

    .line 466
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3b

    .line 470
    :cond_32
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/d;->a()Lcom/ss/android/downloadlib/addownload/b/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/downloadlib/addownload/b/d;->a(Lcom/ss/android/downloadad/a/b/b;)Lcom/ss/android/downloadlib/addownload/b/d$a;

    move-result-object v1

    move p2, v0

    .line 473
    :goto_3b
    if-nez v1, :cond_3e

    .line 474
    return-void

    .line 478
    :cond_3e
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/d;->a()Lcom/ss/android/downloadlib/addownload/b/d;

    move-result-object v2

    iget-object v3, v1, Lcom/ss/android/downloadlib/addownload/b/d$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadlib/addownload/b/d;->b(Ljava/lang/String;)V

    .line 480
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 481
    const-string v3, "installed_app_name"

    iget-object v4, v1, Lcom/ss/android/downloadlib/addownload/b/d$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v3, "installed_pkg_name"

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/b/d$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    if-eq p2, v0, :cond_72

    .line 484
    const-string v0, "error_code"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 486
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result p2

    invoke-static {v2, p2}, Lcom/ss/android/downloadlib/h/f;->a(Lorg/json/JSONObject;I)V

    .line 488
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p2

    const-string v0, "install_finish_hijack"

    invoke-virtual {p2, v0, v2, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_7b

    .line 490
    :cond_72
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p2

    const-string v0, "install_finish_may_hijack"

    invoke-virtual {p2, v0, v2, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V
    :try_end_7b
    .catchall {:try_start_0 .. :try_end_7b} :catchall_7d

    .line 494
    :goto_7b
    goto :goto_81

    .line 458
    :cond_7c
    :goto_7c
    return-void

    .line 492
    :catchall_7d
    move-exception p1

    .line 493
    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/Throwable;)V

    .line 495
    :goto_81
    return-void
.end method

.method public a(JI)V
    .registers 8

    .line 424
    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p3

    .line 425
    const-string v0, "check_install_finish_hijack_delay_time"

    const-wide/32 v1, 0xdbba0

    invoke-virtual {p3, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 426
    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-gez p3, :cond_14

    .line 428
    return-void

    .line 430
    :cond_14
    const-wide/32 v2, 0x493e0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 431
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object p3

    new-instance v2, Lcom/ss/android/downloadlib/a$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/downloadlib/a$2;-><init>(Lcom/ss/android/downloadlib/a;J)V

    invoke-virtual {p3, v2, v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 437
    return-void
.end method

.method public a(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 4

    .line 1013
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a$c;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/a$c;-><init>(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/b/b;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    .line 1014
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JJJJJZ)V
    .registers 23

    .line 1133
    move-object v0, p1

    move-wide v1, p2

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v3

    .line 1134
    if-nez v3, :cond_10

    .line 1135
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 1136
    return-void

    .line 1139
    :cond_10
    :try_start_10
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1140
    const-string v5, "space_before"

    long-to-double v6, v1

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1141
    const-string v5, "space_cleaned"

    sub-long v1, p4, v1

    long-to-double v1, v1

    div-double/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1142
    const-string v1, "clean_up_time_cost"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1143
    const-string v1, "is_download_restarted"

    if-eqz p12, :cond_3e

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1144
    const-string v1, "byte_required"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1145
    const-string v1, "byte_required_after"

    sub-long v5, p6, p4

    long-to-double v5, v5

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1146
    const-string v1, "clear_sleep_time"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1147
    invoke-static {p1, v4}, Lcom/ss/android/downloadlib/h/f;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lorg/json/JSONObject;)V

    .line 1148
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    const-string v1, "cleanup"

    invoke-virtual {v0, v1, v4, v3}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_71} :catch_72

    .line 1151
    goto :goto_76

    .line 1149
    :catch_72
    move-exception v0

    .line 1150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1152
    :goto_76
    return-void
.end method

.method a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;I)V
    .registers 15

    .line 251
    if-eqz p1, :cond_64

    if-nez p2, :cond_5

    goto :goto_64

    .line 254
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a;->d()V

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 256
    invoke-virtual {p2, v4, v5}, Lcom/ss/android/downloadad/a/b/b;->b(J)V

    .line 257
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/io/File;J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/downloadad/a/b/b;->g(J)V

    .line 260
    const/16 v0, 0x7d0

    if-eq p3, v0, :cond_24

    .line 262
    const-wide/16 v0, 0x7d0

    move-wide v8, v0

    goto :goto_43

    .line 265
    :cond_24
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    const-string v3, "check_install_failed_delay_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 266
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3c

    .line 268
    return-void

    .line 271
    :cond_3c
    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v8, v0

    .line 273
    :goto_43
    new-instance v10, Lcom/ss/android/downloadlib/a$b;

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v3

    const/4 v7, 0x0

    move-object v0, v10

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/downloadlib/a$b;-><init>(JIJILcom/ss/android/downloadlib/a$1;)V

    .line 274
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object p1

    invoke-virtual {p1, v10, v8, v9}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 275
    iput-object v10, p0, Lcom/ss/android/downloadlib/a;->c:Lcom/ss/android/downloadlib/a$b;

    .line 277
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 278
    return-void

    .line 252
    :cond_64
    :goto_64
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/a;)V
    .registers 5

    .line 913
    if-eqz p1, :cond_19

    if-nez p2, :cond_5

    goto :goto_19

    .line 916
    :cond_5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 917
    const-string v1, "ah_report_config"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 918
    if-eqz v0, :cond_18

    .line 919
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/appdownloader/a;)V

    .line 921
    :cond_18
    return-void

    .line 914
    :cond_19
    :goto_19
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    .line 163
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_ce

    if-eqz v0, :cond_9

    .line 164
    monitor-exit p0

    return-void

    .line 166
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->a()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 169
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 170
    if-nez v0, :cond_22

    .line 172
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/d;->a()Lcom/ss/android/downloadlib/addownload/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/d;->a(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_ce

    .line 173
    monitor-exit p0

    return-void

    .line 177
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/f;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_33

    .line 179
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/f;->e()V

    .line 182
    :cond_33
    iget-object v1, v0, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_ce

    if-eqz v1, :cond_3d

    .line 183
    monitor-exit p0

    return-void

    .line 186
    :cond_3d
    :try_start_3d
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v2, "notification_opt_2"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    .line 187
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 190
    :cond_59
    new-instance v1, Lcom/ss/android/downloadlib/b/b;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/b/b;-><init>()V

    .line 193
    invoke-static {v0}, Lcom/ss/android/downloadlib/h/e;->a(Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v3

    const-string v4, "try_applink_delay_after_installed"

    const/4 v5, 0x0

    .line 194
    invoke-virtual {v3, v4, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v3

    .line 196
    new-instance v4, Lcom/ss/android/downloadlib/a$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/ss/android/downloadlib/a$1;-><init>(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/b/b;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4, v3}, Lcom/ss/android/downloadlib/b/b;->a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/b/g;I)V

    .line 230
    invoke-static {}, Lcom/ss/android/downloadlib/d/g;->a()Lcom/ss/android/downloadlib/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/d/g;->f(Lcom/ss/android/downloadad/a/b/b;)V

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)V

    .line 235
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/a/a;->a()Lcom/ss/android/downloadlib/addownload/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/a/a;->b(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getSuccessedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 238
    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_bc

    .line 240
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    const-string v3, "no_hide_notification"

    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_b1

    .line 241
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    .line 243
    :cond_b1
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/ss/android/downloadlib/f;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V

    .line 244
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/c/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_c4

    .line 246
    :cond_bc
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/downloadlib/f;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_3d .. :try_end_c4} :catchall_ce

    .line 248
    :goto_c4
    monitor-exit p0

    return-void

    .line 167
    :cond_c6
    :try_start_c6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "handleAppInstalled in main thread."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_ce
    .catchall {:try_start_c6 .. :try_end_ce} :catchall_ce

    .line 162
    :catchall_ce
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)V
    .registers 6

    .line 504
    if-nez p2, :cond_3

    .line 505
    return-void

    .line 508
    :cond_3
    invoke-static {p2}, Lcom/ss/android/downloadlib/h/k;->b(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 509
    return-void

    .line 511
    :cond_a
    iget-object v0, p2, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 513
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->J()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    .line 514
    goto :goto_1d

    .line 516
    :cond_1c
    const/4 v1, 0x3

    .line 518
    :goto_1d
    invoke-direct {p0, p2, p1, v1}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/b/b;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 520
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/b;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "install_finish"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 521
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 523
    :cond_35
    return-void
.end method

.method public b()V
    .registers 3

    .line 825
    sget-object v0, Lcom/ss/android/downloadlib/a;->a:Ljava/lang/String;

    const-string v1, "onAppForeground()"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a;->d()V

    .line 827
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/a;->a(I)V

    .line 828
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/downloadad/a/b/b;)V
    .registers 6

    .line 661
    if-eqz p1, :cond_2f

    if-nez p2, :cond_5

    goto :goto_2f

    .line 664
    :cond_5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "install_finish_check_ttmd5"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_17

    .line 665
    return-void

    .line 667
    :cond_17
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    .line 668
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 669
    return-void

    .line 671
    :cond_22
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/a$3;-><init>(Lcom/ss/android/downloadlib/a;Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->b(Ljava/lang/Runnable;)V

    .line 682
    return-void

    .line 662
    :cond_2f
    :goto_2f
    return-void
.end method

.method public c()V
    .registers 3

    .line 832
    sget-object v0, Lcom/ss/android/downloadlib/a;->a:Ljava/lang/String;

    const-string v1, "onAppBackground()"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/a;->a(I)V

    .line 834
    return-void
.end method

.method declared-synchronized d()V
    .registers 2

    monitor-enter p0

    .line 837
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a;->c:Lcom/ss/android/downloadlib/a$b;

    .line 838
    if-eqz v0, :cond_b

    .line 839
    invoke-static {v0}, Lcom/ss/android/downloadlib/a$b;->a(Lcom/ss/android/downloadlib/a$b;)V

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a;->c:Lcom/ss/android/downloadlib/a$b;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 842
    :cond_b
    monitor-exit p0

    return-void

    .line 836
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
