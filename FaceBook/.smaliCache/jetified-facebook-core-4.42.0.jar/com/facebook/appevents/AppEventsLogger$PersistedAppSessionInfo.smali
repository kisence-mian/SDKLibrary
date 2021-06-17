.class Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PersistedAppSessionInfo"
.end annotation


# static fields
.field private static final PERSISTED_SESSION_INFO_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedsessioninfo"

.field private static final appSessionInfoFlushRunnable:Ljava/lang/Runnable;

.field private static appSessionInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            "Lcom/facebook/appevents/FacebookTimeSpentData;",
            ">;"
        }
    .end annotation
.end field

.field private static hasChanges:Z

.field private static isLoaded:Z

.field private static final staticLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1479
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    .line 1480
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1481
    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1484
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo$1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoFlushRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTimeSpentData(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/FacebookTimeSpentData;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 1592
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->restoreAppSessionInformation(Landroid/content/Context;)V

    .line 1593
    const/4 v0, 0x0

    .line 1595
    .local v0, "result":Lcom/facebook/appevents/FacebookTimeSpentData;
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/appevents/FacebookTimeSpentData;

    .line 1596
    if-nez v0, :cond_1a

    .line 1597
    new-instance v1, Lcom/facebook/appevents/FacebookTimeSpentData;

    invoke-direct {v1}, Lcom/facebook/appevents/FacebookTimeSpentData;-><init>()V

    move-object v0, v1

    .line 1598
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    :cond_1a
    return-object v0
.end method

.method static onResume(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p2, "logger"    # Lcom/facebook/appevents/AppEventsLogger;
    .param p3, "eventTime"    # J
    .param p5, "sourceApplicationInfo"    # Ljava/lang/String;

    .line 1568
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_3
    invoke-static {p0, p1}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->getTimeSpentData(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/FacebookTimeSpentData;

    move-result-object v1

    .line 1570
    .local v1, "timeSpentData":Lcom/facebook/appevents/FacebookTimeSpentData;
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/facebook/appevents/FacebookTimeSpentData;->onResume(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    .line 1571
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onTimeSpentDataUpdate()V

    .line 1572
    .end local v1    # "timeSpentData":Lcom/facebook/appevents/FacebookTimeSpentData;
    monitor-exit v0

    .line 1573
    return-void

    .line 1572
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method static onSuspend(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;J)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p2, "logger"    # Lcom/facebook/appevents/AppEventsLogger;
    .param p3, "eventTime"    # J

    .line 1581
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1582
    :try_start_3
    invoke-static {p0, p1}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->getTimeSpentData(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/FacebookTimeSpentData;

    move-result-object v1

    .line 1583
    .local v1, "timeSpentData":Lcom/facebook/appevents/FacebookTimeSpentData;
    invoke-virtual {v1, p2, p3, p4}, Lcom/facebook/appevents/FacebookTimeSpentData;->onSuspend(Lcom/facebook/appevents/AppEventsLogger;J)V

    .line 1584
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onTimeSpentDataUpdate()V

    .line 1585
    .end local v1    # "timeSpentData":Lcom/facebook/appevents/FacebookTimeSpentData;
    monitor-exit v0

    .line 1586
    return-void

    .line 1585
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private static onTimeSpentDataUpdate()V
    .registers 5

    .line 1605
    sget-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    if-nez v0, :cond_14

    .line 1606
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1607
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$300()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoFlushRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1612
    :cond_14
    return-void
.end method

.method private static restoreAppSessionInformation(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 1494
    const/4 v0, 0x0

    .line 1496
    .local v0, "ois":Ljava/io/ObjectInputStream;
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1497
    :try_start_4
    sget-boolean v2, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_a9

    if-nez v2, :cond_a7

    .line 1499
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_a
    new-instance v4, Ljava/io/ObjectInputStream;

    const-string v5, "AppEventsLogger.persistedsessioninfo"

    .line 1500
    invoke-virtual {p0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v4

    .line 1501
    nop

    .line 1502
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    sput-object v4, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1503
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v5, "AppEvents"

    const-string v6, "App session info loaded"

    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_28} :catch_90
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_40
    .catchall {:try_start_a .. :try_end_28} :catchall_3e

    .line 1514
    :try_start_28
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1515
    const-string v4, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1516
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez v4, :cond_3b

    .line 1517
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1523
    :cond_3b
    sput-boolean v3, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_a9

    goto :goto_74

    .line 1514
    :catchall_3e
    move-exception v4

    goto :goto_77

    .line 1508
    :catch_40
    move-exception v4

    .line 1510
    .local v4, "e":Ljava/lang/Exception;
    :try_start_41
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got unexpected exception restoring app session info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1512
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1509
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_3e

    .line 1514
    .end local v4    # "e":Ljava/lang/Exception;
    :try_start_5f
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1515
    const-string v4, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1516
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez v4, :cond_72

    .line 1517
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1523
    :cond_72
    sput-boolean v3, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1524
    :goto_74
    sput-boolean v2, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    goto :goto_a7

    .line 1514
    :goto_77
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1515
    const-string v5, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1516
    sget-object v5, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez v5, :cond_8a

    .line 1517
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1523
    :cond_8a
    sput-boolean v3, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    .line 1524
    sput-boolean v2, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1525
    nop

    .end local v0    # "ois":Ljava/io/ObjectInputStream;
    .end local p0    # "context":Landroid/content/Context;
    throw v4

    .line 1507
    .restart local v0    # "ois":Ljava/io/ObjectInputStream;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_90
    move-exception v4

    .line 1514
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1515
    const-string v4, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1516
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    if-nez v4, :cond_a4

    .line 1517
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    .line 1523
    :cond_a4
    sput-boolean v3, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->isLoaded:Z

    goto :goto_74

    .line 1527
    :cond_a7
    :goto_a7
    monitor-exit v1

    .line 1528
    return-void

    .line 1527
    :catchall_a9
    move-exception v2

    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_5f .. :try_end_ab} :catchall_a9

    goto :goto_ad

    :goto_ac
    throw v2

    :goto_ad
    goto :goto_ac
.end method

.method static saveAppSessionInformation(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 1531
    const/4 v0, 0x0

    .line 1533
    .local v0, "oos":Ljava/io/ObjectOutputStream;
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1534
    :try_start_4
    sget-boolean v2, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_57

    if-eqz v2, :cond_55

    .line 1536
    :try_start_8
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    const-string v4, "AppEventsLogger.persistedsessioninfo"

    .line 1538
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 1543
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->appSessionInfoMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1544
    sput-boolean v5, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->hasChanges:Z

    .line 1545
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v3, "AppEvents"

    const-string v4, "App session info saved"

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2d
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2b

    goto :goto_4c

    .line 1555
    :catchall_2b
    move-exception v2

    goto :goto_50

    .line 1549
    :catch_2d
    move-exception v2

    .line 1551
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2e
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected exception while writing app session info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1553
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1550
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_2b

    .line 1555
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4c
    :try_start_4c
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1556
    goto :goto_55

    .line 1555
    :goto_50
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1556
    nop

    .end local v0    # "oos":Ljava/io/ObjectOutputStream;
    .end local p0    # "context":Landroid/content/Context;
    throw v2

    .line 1558
    .restart local v0    # "oos":Ljava/io/ObjectOutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_55
    :goto_55
    monitor-exit v1

    .line 1559
    return-void

    .line 1558
    :catchall_57
    move-exception v2

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_57

    throw v2
.end method
