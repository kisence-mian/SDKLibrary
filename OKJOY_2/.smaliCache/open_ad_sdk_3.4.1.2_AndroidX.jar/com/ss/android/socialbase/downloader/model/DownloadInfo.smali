.class public Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAX_PROCESS_POST_COUNT:I = 0x64

.field private static final DEFAULT_MIN_BYTES_INTERVAL:J = 0x100000L

.field private static final RESERVE_STATUS_NEVER:I = 0x0

.field private static final RESERVE_STATUS_NOW:I = 0x2

.field private static final RESERVE_STATUS_ONCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DownloadInfo"


# instance fields
.field private addListenerToSameTask:Z

.field private allConnectTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private appVersionCode:I

.field private asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

.field private autoResumed:Z

.field private backUpUrlRetryCount:I

.field private backUpUrlUsed:Z

.field private backUpUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private backUpUrlsStr:Ljava/lang/String;

.field private bindValueCount:I

.field private byteInvalidRetryStatus:Lcom/ss/android/socialbase/downloader/constants/b;

.field private chunkCount:I

.field private chunkDowngradeRetryUsed:Z

.field private curBackUpUrlIndex:I

.field private curBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private curRetryTime:I

.field private dbJsonData:Lorg/json/JSONObject;

.field private dbJsonDataString:Ljava/lang/String;

.field private deleteCacheIfCheckFailed:Z

.field private downloadTime:J

.field private eTag:Ljava/lang/String;

.field private enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

.field private errorBytesLog:Ljava/lang/StringBuffer;

.field private expiredRedownload:Z

.field private extra:Ljava/lang/String;

.field private extraHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private extraMonitorStatus:[I

.field private failedException:Lcom/ss/android/socialbase/downloader/exception/BaseException;

.field private filePackageName:Ljava/lang/String;

.field private forbiddenBackupUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private force:Z

.field private forceIgnoreRecommendSize:Z

.field private headConnectionAvailable:Z

.field private headConnectionException:Ljava/lang/String;

.field private httpStatusCode:I

.field private httpStatusMessage:Ljava/lang/String;

.field private httpsToHttpRetryUsed:Z

.field private iconUrl:Ljava/lang/String;

.field private id:I

.field private ignoreDataVerify:Z

.field private isAutoInstallWithoutNotification:Ljava/lang/Boolean;

.field private isFirstDownload:Z

.field private isFirstSuccess:Z

.field private isForbiddenRetryed:Z

.field private volatile isSaveTempFile:Z

.field private lastNotifyProgressTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mDownloadFromReserveWifi:Z

.field private maxBytes:I

.field private maxProgressCount:I

.field private md5:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private minProgressTimeMsInterval:I

.field private monitorScene:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private needChunkDowngradeRetry:Z

.field private needDefaultHttpServiceBackUp:Z

.field private needHttpsToHttpRetry:Z

.field private needIndependentProcess:Z

.field private needPostProgress:Z

.field private needRetryDelay:Z

.field private needReuseChunkRunnable:Z

.field private needReuseFirstConnection:Z

.field private needSDKMonitor:Z

.field private networkQuality:Ljava/lang/String;

.field private newSaveTempFileEnable:Z

.field private notificationVisibility:I

.field private onlyWifi:Z

.field private openLimitSpeed:Z

.field private outIp:[Ljava/lang/String;

.field private outSize:[I

.field private packageInfoRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private realDownloadTime:J

.field private realStartDownloadTime:J

.field private retryCount:I

.field private retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

.field private retryDelayTimeArray:Ljava/lang/String;

.field private retryScheduleMinutes:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private savePath:Ljava/lang/String;

.field private showNotification:Z

.field private showNotificationForAutoResumed:Z

.field private showNotificationForNetworkResumed:Z

.field private spData:Lorg/json/JSONObject;

.field private startDownloadTime:J

.field private status:Ljava/util/concurrent/atomic/AtomicInteger;

.field private statusAtDbInit:I

.field private successByCache:Z

.field private supportPartial:Z

.field private tempCacheData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile tempFileSaveCompleteCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/aj;",
            ">;"
        }
    .end annotation
.end field

.field private tempPath:Ljava/lang/String;

.field private throttleNetSpeed:J

.field private title:Ljava/lang/String;

.field private totalBytes:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 523
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$1;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$1;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    .line 108
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/h;->a:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseFirstConnection:Z

    .line 110
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/a;->a:Lcom/ss/android/socialbase/downloader/constants/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    .line 114
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->supportPartial:Z

    .line 122
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needSDKMonitor:Z

    .line 134
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->expiredRedownload:Z

    .line 141
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->deleteCacheIfCheckFailed:Z

    .line 143
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->successByCache:Z

    .line 152
    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    .line 156
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    .line 157
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    .line 170
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/b;->a:Lcom/ss/android/socialbase/downloader/constants/b;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->byteInvalidRetryStatus:Lcom/ss/android/socialbase/downloader/constants/b;

    .line 171
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 175
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->lastNotifyProgressTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 185
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->newSaveTempFileEnable:Z

    .line 1596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification:Ljava/lang/Boolean;

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 10

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    .line 108
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/h;->a:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseFirstConnection:Z

    .line 110
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/a;->a:Lcom/ss/android/socialbase/downloader/constants/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    .line 114
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->supportPartial:Z

    .line 122
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needSDKMonitor:Z

    .line 134
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->expiredRedownload:Z

    .line 141
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->deleteCacheIfCheckFailed:Z

    .line 143
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->successByCache:Z

    .line 152
    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    .line 156
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    .line 157
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    .line 170
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/b;->a:Lcom/ss/android/socialbase/downloader/constants/b;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->byteInvalidRetryStatus:Lcom/ss/android/socialbase/downloader/constants/b;

    .line 171
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 175
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->lastNotifyProgressTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 185
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->newSaveTempFileEnable:Z

    .line 1596
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification:Ljava/lang/Boolean;

    .line 565
    if-nez p1, :cond_3a

    .line 566
    return-void

    .line 569
    :cond_3a
    :try_start_3a
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 570
    const/4 v5, -0x1

    if-eq v2, v5, :cond_49

    .line 571
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->id:I

    .line 573
    :cond_49
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 574
    if-eq v2, v5, :cond_57

    .line 575
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    .line 577
    :cond_57
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 578
    if-eq v2, v5, :cond_65

    .line 579
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->title:Ljava/lang/String;

    .line 581
    :cond_65
    const-string v2, "url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 582
    if-eq v2, v5, :cond_73

    .line 583
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    .line 585
    :cond_73
    const-string v2, "savePath"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 586
    if-eq v2, v5, :cond_81

    .line 587
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    .line 589
    :cond_81
    const-string v2, "tempPath"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 590
    if-eq v2, v5, :cond_8f

    .line 591
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempPath:Ljava/lang/String;

    .line 593
    :cond_8f
    const-string v2, "chunkCount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 594
    if-eq v2, v5, :cond_9d

    .line 595
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    .line 597
    :cond_9d
    const-string v2, "status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 598
    if-eq v2, v5, :cond_b1

    .line 599
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_b8

    .line 601
    :cond_b1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 603
    :goto_b8
    const-string v2, "curBytes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 604
    if-eq v2, v5, :cond_cc

    .line 605
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBytes:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_d3

    .line 607
    :cond_cc
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 609
    :goto_d3
    const-string v2, "totalBytes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 610
    if-eq v2, v5, :cond_e1

    .line 611
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    .line 613
    :cond_e1
    const-string v2, "eTag"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 614
    if-eq v2, v5, :cond_ef

    .line 615
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->eTag:Ljava/lang/String;

    .line 617
    :cond_ef
    const-string v2, "onlyWifi"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 618
    if-eq v2, v5, :cond_102

    .line 619
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v0

    goto :goto_100

    :cond_ff
    move v2, v1

    :goto_100
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->onlyWifi:Z

    .line 621
    :cond_102
    const-string v2, "force"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 622
    if-eq v2, v5, :cond_115

    .line 623
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_112

    move v2, v0

    goto :goto_113

    :cond_112
    move v2, v1

    :goto_113
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->force:Z

    .line 625
    :cond_115
    const-string v2, "retryCount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 626
    if-eq v2, v5, :cond_123

    .line 627
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryCount:I

    .line 629
    :cond_123
    const-string v2, "extra"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 630
    if-eq v2, v5, :cond_131

    .line 631
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extra:Ljava/lang/String;

    .line 633
    :cond_131
    const-string v2, "mimeType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 634
    if-eq v2, v5, :cond_13f

    .line 635
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mimeType:Ljava/lang/String;

    .line 637
    :cond_13f
    const-string v2, "notificationEnable"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 638
    if-eq v2, v5, :cond_152

    .line 639
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_14f

    move v2, v0

    goto :goto_150

    :cond_14f
    move v2, v1

    :goto_150
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotification:Z

    .line 641
    :cond_152
    const-string v2, "notificationVisibility"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 642
    if-eq v2, v5, :cond_160

    .line 643
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->notificationVisibility:I

    .line 645
    :cond_160
    const-string v2, "isFirstDownload"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 646
    if-eq v2, v5, :cond_173

    .line 647
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_170

    move v2, v0

    goto :goto_171

    :cond_170
    move v2, v1

    :goto_171
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    .line 649
    :cond_173
    const-string v2, "isFirstSuccess"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 650
    if-eq v2, v5, :cond_186

    .line 651
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_183

    move v2, v0

    goto :goto_184

    :cond_183
    move v2, v1

    :goto_184
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    .line 653
    :cond_186
    const-string v2, "needHttpsToHttpRetry"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 654
    if-eq v2, v5, :cond_199

    .line 655
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_196

    move v2, v0

    goto :goto_197

    :cond_196
    move v2, v1

    :goto_197
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needHttpsToHttpRetry:Z

    .line 657
    :cond_199
    const-string v2, "downloadTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 658
    if-eq v2, v5, :cond_1a7

    .line 659
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    .line 661
    :cond_1a7
    const-string v2, "packageName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 662
    if-eq v2, v5, :cond_1b5

    .line 663
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageName:Ljava/lang/String;

    .line 665
    :cond_1b5
    const-string v2, "md5"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 666
    if-eq v2, v5, :cond_1c3

    .line 667
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->md5:Ljava/lang/String;

    .line 669
    :cond_1c3
    const-string v2, "retryDelay"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 670
    if-eq v2, v5, :cond_1d6

    .line 671
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1d3

    move v2, v0

    goto :goto_1d4

    :cond_1d3
    move v2, v1

    :goto_1d4
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needRetryDelay:Z

    .line 673
    :cond_1d6
    const-string v2, "curRetryTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 674
    if-eq v2, v5, :cond_1e4

    .line 675
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    .line 677
    :cond_1e4
    const-string v2, "retryDelayStatus"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 678
    if-eq v2, v5, :cond_21b

    .line 679
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 680
    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/h;->b:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/constants/h;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1fd

    .line 681
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->b:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    goto :goto_21b

    .line 682
    :cond_1fd
    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/h;->c:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/constants/h;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_20a

    .line 683
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->c:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    goto :goto_21b

    .line 684
    :cond_20a
    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/h;->d:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/constants/h;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_217

    .line 685
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->d:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    goto :goto_21b

    .line 687
    :cond_217
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->a:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 690
    :cond_21b
    :goto_21b
    const-string v2, "defaultHttpServiceBackUp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 691
    if-eq v2, v5, :cond_22e

    .line 692
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_22b

    move v2, v0

    goto :goto_22c

    :cond_22b
    move v2, v1

    :goto_22c
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    .line 694
    :cond_22e
    const-string v2, "chunkRunnableReuse"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 695
    if-eq v2, v5, :cond_241

    .line 696
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_23e

    move v2, v0

    goto :goto_23f

    :cond_23e
    move v2, v1

    :goto_23f
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseChunkRunnable:Z

    .line 698
    :cond_241
    const-string v2, "retryDelayTimeArray"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 699
    if-eq v2, v5, :cond_24f

    .line 700
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayTimeArray:Ljava/lang/String;

    .line 703
    :cond_24f
    const-string v2, "chunkDowngradeRetry"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 704
    if-eq v2, v5, :cond_262

    .line 705
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_25f

    move v2, v0

    goto :goto_260

    :cond_25f
    move v2, v1

    :goto_260
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needChunkDowngradeRetry:Z

    .line 708
    :cond_262
    const-string v2, "backUpUrlsStr"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 709
    if-eq v2, v5, :cond_271

    .line 710
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setBackUpUrlsStr(Ljava/lang/String;)V

    .line 713
    :cond_271
    const-string v2, "backUpUrlRetryCount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 714
    if-eq v2, v5, :cond_27f

    .line 715
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlRetryCount:I

    .line 718
    :cond_27f
    const-string v2, "realDownloadTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 719
    if-eq v2, v5, :cond_28d

    .line 720
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    .line 723
    :cond_28d
    const-string v2, "retryScheduleMinutes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 724
    if-eq v2, v5, :cond_29b

    .line 725
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryScheduleMinutes:I

    .line 728
    :cond_29b
    const-string v2, "independentProcess"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 729
    if-eq v2, v5, :cond_2ad

    .line 730
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2aa

    goto :goto_2ab

    :cond_2aa
    move v0, v1

    :goto_2ab
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needIndependentProcess:Z

    .line 733
    :cond_2ad
    const-string v0, "auxiliaryJsonobjectString"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 734
    if-eq v0, v5, :cond_2bb

    .line 735
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonDataString:Ljava/lang/String;

    .line 738
    :cond_2bb
    const-string v0, "iconUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 739
    if-eq v0, v5, :cond_2c9

    .line 740
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->iconUrl:Ljava/lang/String;

    .line 743
    :cond_2c9
    const-string v0, "appVersionCode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 744
    if-eq v0, v5, :cond_2d7

    .line 745
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->appVersionCode:I

    .line 748
    :cond_2d7
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->parseMonitorSetting()V
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_2da} :catch_2db

    .line 752
    goto :goto_2df

    .line 750
    :catch_2db
    move-exception p1

    .line 751
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 753
    :goto_2df
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    .line 108
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/h;->a:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseFirstConnection:Z

    .line 110
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/a;->a:Lcom/ss/android/socialbase/downloader/constants/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    .line 114
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->supportPartial:Z

    .line 122
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needSDKMonitor:Z

    .line 134
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->expiredRedownload:Z

    .line 141
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->deleteCacheIfCheckFailed:Z

    .line 143
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->successByCache:Z

    .line 152
    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    .line 156
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    .line 157
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    .line 170
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/b;->a:Lcom/ss/android/socialbase/downloader/constants/b;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->byteInvalidRetryStatus:Lcom/ss/android/socialbase/downloader/constants/b;

    .line 171
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 175
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->lastNotifyProgressTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 185
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->newSaveTempFileEnable:Z

    .line 1596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification:Ljava/lang/Boolean;

    .line 500
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 501
    return-void
.end method

.method private constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)V
    .registers 7

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    .line 108
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/h;->a:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseFirstConnection:Z

    .line 110
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/a;->a:Lcom/ss/android/socialbase/downloader/constants/a;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    .line 114
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->supportPartial:Z

    .line 122
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needSDKMonitor:Z

    .line 134
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->expiredRedownload:Z

    .line 141
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->deleteCacheIfCheckFailed:Z

    .line 143
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->successByCache:Z

    .line 152
    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    .line 156
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    .line 157
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    .line 170
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/b;->a:Lcom/ss/android/socialbase/downloader/constants/b;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->byteInvalidRetryStatus:Lcom/ss/android/socialbase/downloader/constants/b;

    .line 171
    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 175
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->lastNotifyProgressTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 185
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->newSaveTempFileEnable:Z

    .line 1596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification:Ljava/lang/Boolean;

    .line 244
    if-nez p1, :cond_3a

    .line 245
    return-void

    .line 246
    :cond_3a
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    .line 247
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->title:Ljava/lang/String;

    .line 248
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    .line 249
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 252
    :try_start_56
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/e;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5b

    .line 255
    goto :goto_5f

    .line 253
    :catchall_5b
    move-exception v2

    .line 254
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    :cond_5f
    :goto_5f
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    .line 258
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempPath:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 260
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 261
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->f(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extra:Ljava/lang/String;

    .line 262
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->g(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->onlyWifi:Z

    .line 263
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->h(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extraHeaders:Ljava/util/List;

    .line 264
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->i(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->maxBytes:I

    .line 265
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->j(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryCount:I

    .line 266
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->k(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlRetryCount:I

    .line 267
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->l(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->force:Z

    .line 268
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->m(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->outIp:[Ljava/lang/String;

    .line 269
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->n(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->outSize:[I

    .line 270
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->o(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needPostProgress:Z

    .line 271
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->p(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->maxProgressCount:I

    .line 272
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->q(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->minProgressTimeMsInterval:I

    .line 273
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->r(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    .line 274
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->s(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotification:Z

    .line 275
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->t(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mimeType:Ljava/lang/String;

    .line 276
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->u(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needHttpsToHttpRetry:Z

    .line 277
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->v(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needRetryDelay:Z

    .line 278
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->w(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayTimeArray:Ljava/lang/String;

    .line 279
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->x(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->autoResumed:Z

    .line 280
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->y(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForAutoResumed:Z

    .line 281
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->z(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    .line 282
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->A(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseChunkRunnable:Z

    .line 283
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->B(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageName:Ljava/lang/String;

    .line 284
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->C(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->md5:Ljava/lang/String;

    .line 285
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->D(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseFirstConnection:Z

    .line 286
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->E(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needIndependentProcess:Z

    .line 287
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->F(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Lcom/ss/android/socialbase/downloader/constants/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 288
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->G(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->headConnectionAvailable:Z

    .line 289
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->H(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ignoreDataVerify:Z

    .line 290
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->I(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->newSaveTempFileEnable:Z

    .line 291
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->J(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->addListenerToSameTask:Z

    .line 292
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->K(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needChunkDowngradeRetry:Z

    .line 293
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->L(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->iconUrl:Ljava/lang/String;

    .line 294
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->M(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->throttleNetSpeed:J

    .line 295
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->N(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->openLimitSpeed:Z

    .line 296
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->O(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_156

    .line 298
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download_setting"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    :cond_156
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->P(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dbjson_key_expect_file_length"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->Q(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "executor_group"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->R(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needSDKMonitor:Z

    .line 303
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->S(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->monitorScene:Ljava/lang/String;

    .line 304
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->T(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extraMonitorStatus:[I

    .line 305
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->U(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->expiredRedownload:Z

    .line 306
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->V(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->deleteCacheIfCheckFailed:Z

    .line 307
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->putMonitorSetting()V

    .line 308
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo$1;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)V

    return-void
.end method

.method private convertEnqueueType(I)V
    .registers 3

    .line 504
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/constants/f;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 505
    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

    goto :goto_1e

    .line 506
    :cond_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/constants/f;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1a

    .line 507
    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

    goto :goto_1e

    .line 509
    :cond_1a
    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 510
    :goto_1e
    return-void
.end method

.method private convertRetryDelayStatus(I)V
    .registers 3

    .line 513
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->b:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/constants/h;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 514
    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/h;->b:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    goto :goto_2b

    .line 515
    :cond_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->c:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/constants/h;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1a

    .line 516
    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/h;->c:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    goto :goto_2b

    .line 517
    :cond_1a
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/h;->d:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/constants/h;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_27

    .line 518
    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/h;->d:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    goto :goto_2b

    .line 520
    :cond_27
    sget-object p1, Lcom/ss/android/socialbase/downloader/constants/h;->a:Lcom/ss/android/socialbase/downloader/constants/h;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 521
    :goto_2b
    return-void
.end method

.method private convertStrToJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 422
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 423
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_d

    return-object v0

    .line 427
    :cond_c
    goto :goto_11

    .line 425
    :catchall_d
    move-exception p1

    .line 426
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 428
    :goto_11
    const/4 p1, 0x0

    return-object p1
.end method

.method private ensureDBJsonData()V
    .registers 3

    .line 1760
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    if-nez v0, :cond_30

    .line 1761
    monitor-enter p0

    .line 1762
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_2d

    if-nez v0, :cond_2b

    .line 1764
    :try_start_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonDataString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1765
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonDataString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    goto :goto_22

    .line 1767
    :cond_1b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_23

    .line 1771
    :goto_22
    goto :goto_2b

    .line 1769
    :catchall_23
    move-exception v0

    .line 1770
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    .line 1773
    :cond_2b
    :goto_2b
    monitor-exit p0

    goto :goto_30

    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw v0

    .line 1775
    :cond_30
    :goto_30
    return-void
.end method

.method private ensureSpData()V
    .registers 4

    .line 2225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    if-nez v0, :cond_3d

    .line 2226
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 2227
    if-eqz v0, :cond_32

    .line 2228
    const/4 v1, 0x0

    const-string v2, "sp_download_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2229
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2232
    :try_start_26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2d} :catch_2e

    .line 2235
    goto :goto_32

    .line 2233
    :catch_2e
    move-exception v0

    .line 2234
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2238
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    if-nez v0, :cond_3d

    .line 2239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    .line 2242
    :cond_3d
    return-void
.end method

.method private ensureTempCacheData()V
    .registers 2

    .line 2409
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempCacheData:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_15

    .line 2410
    monitor-enter p0

    .line 2411
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempCacheData:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_10

    .line 2412
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempCacheData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2414
    :cond_10
    monitor-exit p0

    goto :goto_15

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0

    .line 2416
    :cond_15
    :goto_15
    return-void
.end method

.method private getBackUpUrlsStr()Ljava/lang/String;
    .registers 5

    .line 432
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlsStr:Ljava/lang/String;

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 434
    :try_start_e
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 435
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 436
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 437
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 439
    :cond_2e
    goto :goto_19

    .line 440
    :cond_2f
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlsStr:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_35} :catch_36

    .line 443
    goto :goto_3a

    .line 441
    :catch_36
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 445
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlsStr:Ljava/lang/String;

    if-nez v0, :cond_42

    .line 446
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlsStr:Ljava/lang/String;

    .line 448
    :cond_42
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlsStr:Ljava/lang/String;

    return-object v0
.end method

.method private getDBJsonDataString()Ljava/lang/String;
    .registers 3

    .line 803
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonDataString:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 804
    return-object v0

    .line 806
    :cond_5
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 807
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    monitor-enter v0

    .line 808
    :try_start_b
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonDataString:Ljava/lang/String;

    .line 809
    monitor-exit v0

    return-object v1

    .line 810
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1
.end method

.method private getReserveWifiStatus()I
    .registers 4

    .line 1229
    nop

    .line 1230
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 1232
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v2, "pause_reserve_on_wifi"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    .line 1235
    goto :goto_f

    .line 1233
    :catch_e
    move-exception v1

    .line 1236
    :goto_f
    return v0
.end method

.method private mergeAuxiliaryJSONObject(Lorg/json/JSONObject;)V
    .registers 7

    .line 1785
    if-nez p1, :cond_3

    .line 1786
    return-void

    .line 1789
    :cond_3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 1790
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    monitor-enter v0

    .line 1792
    :try_start_9
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1793
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1794
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1795
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1796
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    if-nez v3, :cond_28

    .line 1797
    goto :goto_d

    .line 1799
    :cond_28
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_31
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2f

    .line 1800
    goto :goto_d

    .line 1803
    :cond_2e
    goto :goto_32

    .line 1805
    :catchall_2f
    move-exception p1

    goto :goto_3a

    .line 1801
    :catch_31
    move-exception p1

    .line 1804
    :goto_32
    const/4 p1, 0x0

    :try_start_33
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonDataString:Ljava/lang/String;

    .line 1805
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_2f

    .line 1807
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->parseMonitorSetting()V

    .line 1808
    return-void

    .line 1805
    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2f

    throw p1
.end method

.method private parseMonitorSetting()V
    .registers 5

    .line 330
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 331
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "need_sdk_monitor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needSDKMonitor:Z

    .line 332
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "monitor_scene"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->monitorScene:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "extra_monitor_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_44

    .line 335
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extraMonitorStatus:[I

    .line 336
    nop

    :goto_33
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_44

    .line 337
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extraMonitorStatus:[I

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    aput v3, v1, v2

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 340
    :cond_44
    return-void
.end method

.method private putMonitorSetting()V
    .registers 5

    .line 311
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needSDKMonitor:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "need_sdk_monitor"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->monitorScene:Ljava/lang/String;

    const-string v1, "monitor_scene"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    :try_start_12
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extraMonitorStatus:[I

    if-eqz v1, :cond_2c

    array-length v1, v1

    if-lez v1, :cond_2c

    .line 318
    const/4 v1, 0x0

    :goto_1f
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extraMonitorStatus:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2c

    .line 319
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 323
    :cond_2c
    const-string v1, "extra_monitor_status"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_32

    .line 326
    goto :goto_36

    .line 324
    :catchall_32
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 327
    :goto_36
    return-void
.end method

.method private refreshBackupUrls(Z)V
    .registers 4

    .line 1106
    nop

    .line 1107
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forbiddenBackupUrls:Ljava/util/List;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_36

    .line 1108
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    if-nez v0, :cond_17

    .line 1109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    goto :goto_1a

    .line 1111
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1113
    :goto_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    .line 1114
    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    .line 1115
    nop

    :goto_20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forbiddenBackupUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_36

    .line 1116
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forbiddenBackupUrls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    .line 1119
    :cond_36
    return-void
.end method

.method private setBackUpUrlsStr(Ljava/lang/String;)V
    .registers 6

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 453
    return-void

    .line 455
    :cond_7
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlsStr:Ljava/lang/String;

    .line 457
    :try_start_9
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_32

    .line 459
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 460
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 461
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 463
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 466
    :cond_30
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_33

    .line 470
    :cond_32
    goto :goto_37

    .line 468
    :catch_33
    move-exception p1

    .line 469
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    :goto_37
    return-void
.end method


# virtual methods
.method public addErrorBytesLog(JILjava/lang/String;)V
    .registers 7

    .line 545
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 546
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->errorBytesLog:Ljava/lang/StringBuffer;

    if-nez v0, :cond_11

    .line 547
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->errorBytesLog:Ljava/lang/StringBuffer;

    .line 548
    :cond_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->errorBytesLog:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_20

    .line 549
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->errorBytesLog:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    :cond_20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->errorBytesLog:Ljava/lang/StringBuffer;

    const-string v1, "[type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, ",bytes:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ",method:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    .line 555
    :cond_45
    goto :goto_4a

    .line 553
    :catch_46
    move-exception p1

    .line 554
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    :goto_4a
    return-void
.end method

.method public bindValue(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 11

    .line 814
    if-nez p1, :cond_3

    .line 815
    return-void

    .line 817
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    .line 818
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 819
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->id:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 820
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_22

    move-object v1, v2

    :cond_22
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 821
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    if-nez v1, :cond_30

    move-object v1, v2

    :cond_30
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 822
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempPath:Ljava/lang/String;

    if-nez v1, :cond_3e

    move-object v1, v2

    :cond_3e
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 823
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_4c

    move-object v1, v2

    :cond_4c
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 824
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    int-to-long v3, v1

    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 825
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 826
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 827
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 828
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->eTag:Ljava/lang/String;

    if-nez v1, :cond_8c

    move-object v1, v2

    :cond_8c
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 829
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->onlyWifi:Z

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_9f

    move-wide v7, v3

    goto :goto_a0

    :cond_9f
    move-wide v7, v5

    :goto_a0
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 830
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->force:Z

    if-eqz v1, :cond_af

    move-wide v7, v3

    goto :goto_b0

    :cond_af
    move-wide v7, v5

    :goto_b0
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 831
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryCount:I

    int-to-long v7, v1

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 832
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extra:Ljava/lang/String;

    if-nez v1, :cond_ca

    move-object v1, v2

    :cond_ca
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 833
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_d8

    move-object v1, v2

    :cond_d8
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 834
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->title:Ljava/lang/String;

    if-nez v1, :cond_e6

    move-object v1, v2

    :cond_e6
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 835
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotification:Z

    if-eqz v1, :cond_f5

    move-wide v7, v3

    goto :goto_f6

    :cond_f5
    move-wide v7, v5

    :goto_f6
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 836
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->notificationVisibility:I

    int-to-long v7, v1

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 837
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    if-eqz v1, :cond_111

    move-wide v7, v3

    goto :goto_112

    :cond_111
    move-wide v7, v5

    :goto_112
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 838
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    if-eqz v1, :cond_121

    move-wide v7, v3

    goto :goto_122

    :cond_121
    move-wide v7, v5

    :goto_122
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 839
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needHttpsToHttpRetry:Z

    if-eqz v1, :cond_131

    move-wide v7, v3

    goto :goto_132

    :cond_131
    move-wide v7, v5

    :goto_132
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 840
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-wide v7, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 841
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_14b

    move-object v1, v2

    :cond_14b
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 842
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->md5:Ljava/lang/String;

    if-nez v1, :cond_159

    move-object v1, v2

    :cond_159
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 843
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needRetryDelay:Z

    if-eqz v1, :cond_168

    move-wide v7, v3

    goto :goto_169

    :cond_168
    move-wide v7, v5

    :goto_169
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 844
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    int-to-long v7, v1

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 845
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/constants/h;->ordinal()I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 846
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    if-eqz v1, :cond_194

    move-wide v7, v3

    goto :goto_195

    :cond_194
    move-wide v7, v5

    :goto_195
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 847
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseChunkRunnable:Z

    if-eqz v1, :cond_1a4

    move-wide v7, v3

    goto :goto_1a5

    :cond_1a4
    move-wide v7, v5

    :goto_1a5
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 848
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayTimeArray:Ljava/lang/String;

    if-nez v1, :cond_1b3

    move-object v1, v2

    :cond_1b3
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 849
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needChunkDowngradeRetry:Z

    if-eqz v1, :cond_1c2

    move-wide v7, v3

    goto :goto_1c3

    :cond_1c2
    move-wide v7, v5

    :goto_1c3
    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 850
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrlsStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 851
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlRetryCount:I

    int-to-long v7, v1

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 852
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-wide v7, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 853
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryScheduleMinutes:I

    int-to-long v7, v1

    invoke-virtual {p1, v0, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 854
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needIndependentProcess:Z

    if-eqz v1, :cond_201

    goto :goto_202

    :cond_201
    move-wide v3, v5

    :goto_202
    invoke-virtual {p1, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 855
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDBJsonDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 856
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->iconUrl:Ljava/lang/String;

    if-nez v1, :cond_21d

    goto :goto_21e

    :cond_21d
    move-object v2, v1

    :goto_21e
    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 857
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->appVersionCode:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 858
    return-void
.end method

.method public canNotifyProgress()Z
    .registers 5

    .line 483
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->lastNotifyProgressTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 484
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x14

    cmp-long v0, v2, v0

    if-lez v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    return v0
.end method

.method public canReStartAsyncTask()Z
    .registers 3

    .line 1706
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/a;->b:Lcom/ss/android/socialbase/downloader/constants/a;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public canReplaceHttpForRetry()Z
    .registers 3

    .line 1926
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needHttpsToHttpRetry:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpsToHttpRetryUsed:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public canShowNotification()Z
    .registers 3

    .line 1584
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->autoResumed:Z

    if-nez v0, :cond_8

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotification:Z

    if-nez v1, :cond_12

    :cond_8
    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForAutoResumed:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForNetworkResumed:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public canSkipStatusHandler()Z
    .registers 4

    .line 1679
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    .line 1680
    const/4 v1, 0x7

    if-eq v0, v1, :cond_26

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->b:Lcom/ss/android/socialbase/downloader/constants/h;

    if-eq v1, v2, :cond_26

    const/16 v1, 0x8

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/a;->b:Lcom/ss/android/socialbase/downloader/constants/a;

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/a;->c:Lcom/ss/android/socialbase/downloader/constants/a;

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->byteInvalidRetryStatus:Lcom/ss/android/socialbase/downloader/constants/b;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/b;->b:Lcom/ss/android/socialbase/downloader/constants/b;

    if-ne v0, v1, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public canStartRetryDelayTask()Z
    .registers 3

    .line 1698
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedRetryDelay()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/h;->b:Lcom/ss/android/socialbase/downloader/constants/h;

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public changeSkipStatus()V
    .registers 4

    .line 1687
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    .line 1688
    const/4 v1, 0x7

    if-eq v0, v1, :cond_d

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/h;->b:Lcom/ss/android/socialbase/downloader/constants/h;

    if-ne v1, v2, :cond_12

    .line 1689
    :cond_d
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/h;->c:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setRetryDelayStatus(Lcom/ss/android/socialbase/downloader/constants/h;)V

    .line 1690
    :cond_12
    const/16 v1, 0x8

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/a;->b:Lcom/ss/android/socialbase/downloader/constants/a;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/a;->c:Lcom/ss/android/socialbase/downloader/constants/a;

    if-ne v0, v1, :cond_27

    .line 1692
    :cond_22
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/a;->d:Lcom/ss/android/socialbase/downloader/constants/a;

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAsyncHandleStatus(Lcom/ss/android/socialbase/downloader/constants/a;)V

    .line 1693
    :cond_27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->byteInvalidRetryStatus:Lcom/ss/android/socialbase/downloader/constants/b;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/b;->b:Lcom/ss/android/socialbase/downloader/constants/b;

    if-ne v0, v1, :cond_32

    .line 1694
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/b;->c:Lcom/ss/android/socialbase/downloader/constants/b;

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setByteInvalidRetryStatus(Lcom/ss/android/socialbase/downloader/constants/b;)V

    .line 1695
    :cond_32
    return-void
.end method

.method public checkMd5Status()I
    .registers 4

    .line 2120
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->md5:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkMd5Valid()Z
    .registers 4

    .line 2116
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->md5:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearSpData()V
    .registers 4

    .line 2256
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 2257
    if-eqz v0, :cond_25

    .line 2259
    :try_start_6
    const-string v1, "sp_download_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2260
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    .line 2263
    goto :goto_25

    .line 2261
    :catchall_21
    move-exception v0

    .line 2262
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2266
    :cond_25
    :goto_25
    return-void
.end method

.method public copyFromCacheData(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V
    .registers 6

    .line 1729
    if-nez p1, :cond_3

    .line 1730
    return-void

    .line 1732
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setChunkCount(I)V

    .line 1733
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    .line 1734
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    .line 1735
    iget-wide v0, p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    .line 1736
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canSkipStatusHandler()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->canSkipStatusHandler()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1737
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    .line 1738
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForbiddenRetryed:Z

    .line 1739
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    .line 1740
    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    .line 1741
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpsToHttpRetryUsed:Z

    goto :goto_3b

    .line 1743
    :cond_35
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTime()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    .line 1745
    :goto_3b
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->seteTag(Ljava/lang/String;)V

    .line 1746
    if-eqz p2, :cond_4b

    .line 1747
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 1748
    :cond_4b
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getIsFirstDownload()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    .line 1749
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    .line 1751
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryDelayStatus()Lcom/ss/android/socialbase/downloader/constants/h;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 1752
    iget-object p1, p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mergeAuxiliaryJSONObject(Lorg/json/JSONObject;)V

    .line 1753
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 2143
    const/4 v0, 0x0

    return v0
.end method

.method public equalsTask(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 5

    .line 1819
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1820
    return v0

    .line 1821
    :cond_4
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public erase()V
    .registers 4

    .line 1977
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    .line 1978
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    .line 1979
    iput v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    .line 1980
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    .line 1981
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realStartDownloadTime:J

    .line 1982
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    .line 1985
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    .line 1986
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    .line 1987
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    .line 1988
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    .line 1989
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpsToHttpRetryUsed:Z

    .line 1990
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->eTag:Ljava/lang/String;

    .line 1991
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->failedException:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 1992
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempCacheData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1993
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageInfoRef:Ljava/lang/ref/SoftReference;

    .line 1999
    return-void
.end method

.method public getAllConnectTime()J
    .registers 4

    .line 997
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 998
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->allConnectTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_16

    .line 999
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "dbjson_key_all_connect_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1000
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->allConnectTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1002
    :cond_16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->allConnectTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAntiHijackErrorCode(I)I
    .registers 4

    .line 2366
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 2367
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "anti_hijack_error_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getAppVersionCode()I
    .registers 2

    .line 1659
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->appVersionCode:I

    return v0
.end method

.method public getAsyncHandleStatus()Lcom/ss/android/socialbase/downloader/constants/a;
    .registers 2

    .line 1675
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    return-object v0
.end method

.method public getBackUpUrl()Ljava/lang/String;
    .registers 3

    .line 1143
    nop

    .line 1144
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    if-ltz v0, :cond_2c

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 1145
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1147
    goto :goto_2e

    .line 1149
    :cond_2c
    const-string v0, ""

    :goto_2e
    return-object v0
.end method

.method public getBackUpUrlRetryCount()I
    .registers 2

    .line 1073
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlRetryCount:I

    return v0
.end method

.method public getBackUpUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1849
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    return-object v0
.end method

.method public getBindValueCount()I
    .registers 2

    .line 861
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->bindValueCount:I

    return v0
.end method

.method public getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;
    .registers 2

    .line 1476
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->byteInvalidRetryStatus:Lcom/ss/android/socialbase/downloader/constants/b;

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .registers 4

    .line 1298
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 1299
    nop

    .line 1301
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v2, "cache-control"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    .line 1304
    goto :goto_f

    .line 1302
    :catch_e
    move-exception v1

    .line 1305
    :goto_f
    return-object v0
.end method

.method public getCacheExpiredTime()J
    .registers 5

    .line 1277
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 1278
    nop

    .line 1280
    const-wide/16 v0, -0x1

    :try_start_6
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v3, "cache-control/expired_time"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    .line 1283
    goto :goto_10

    .line 1281
    :catch_f
    move-exception v2

    .line 1284
    :goto_10
    return-wide v0
.end method

.method public getChunkCount()I
    .registers 2

    .line 2138
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    return v0
.end method

.method public getConnectionUrl()Ljava/lang/String;
    .registers 4

    .line 1122
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    .line 1123
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_22

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forbiddenBackupUrls:Ljava/util/List;

    if-eqz v1, :cond_22

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    if-nez v1, :cond_22

    .line 1124
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forbiddenBackupUrls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_70

    .line 1126
    :cond_22
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    if-eqz v1, :cond_4e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4e

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    if-ltz v1, :cond_4e

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 1127
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1129
    move-object v0, v1

    .line 1130
    :cond_4d
    goto :goto_70

    :cond_4e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needHttpsToHttpRetry:Z

    if-eqz v1, :cond_4d

    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpsToHttpRetryUsed:Z

    if-eqz v1, :cond_4d

    .line 1131
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    :goto_70
    return-object v0
.end method

.method public getCurBackUpUrlIndex()I
    .registers 2

    .line 928
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    return v0
.end method

.method public getCurBytes()J
    .registers 3

    .line 1452
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBytes:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_9

    .line 1453
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 1455
    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurRetryTime()I
    .registers 2

    .line 1635
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    return v0
.end method

.method public getCurRetryTimeInTotal()I
    .registers 4

    .line 1085
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    .line 1086
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    if-eqz v1, :cond_11

    .line 1087
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryCount:I

    add-int/2addr v0, v1

    .line 1088
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    if-lez v1, :cond_11

    .line 1089
    iget v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlRetryCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1093
    :cond_11
    return v0
.end method

.method public getDBJsonInt(Ljava/lang/String;)I
    .registers 3

    .line 2438
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 2439
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getDBJsonString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2433
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 2434
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadPrepareTime()J
    .registers 3

    .line 1016
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 1017
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "dbjson_key_download_prepare_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadProcess()I
    .registers 5

    .line 536
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    .line 537
    const/4 v0, 0x0

    return v0

    .line 538
    :cond_a
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 539
    const/16 v0, 0x64

    return v0

    .line 540
    :cond_17
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getDownloadSettingString()Ljava/lang/String;
    .registers 3

    .line 1176
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 1177
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "download_setting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadSpeed()D
    .registers 8

    .line 2479
    nop

    .line 2480
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    .line 2481
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealDownloadTime()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 2482
    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_20

    cmpl-double v4, v2, v4

    if-lez v4, :cond_20

    .line 2483
    div-double/2addr v0, v2

    goto :goto_22

    .line 2486
    :cond_20
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_22
    return-wide v0
.end method

.method public getDownloadTime()J
    .registers 3

    .line 1721
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    return-wide v0
.end method

.method public getEnqueueType()Lcom/ss/android/socialbase/downloader/constants/f;
    .registers 2

    .line 924
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

    return-object v0
.end method

.method public getErrorBytesLog()Ljava/lang/String;
    .registers 2

    .line 559
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->errorBytesLog:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    .line 561
    :cond_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->errorBytesLog:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 560
    :cond_12
    :goto_12
    const-string v0, ""

    return-object v0
.end method

.method public getExecutorGroup()I
    .registers 4

    .line 2428
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 2429
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "executor_group"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExpectFileLength()J
    .registers 3

    .line 1048
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 1049
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "dbjson_key_expect_file_length"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .line 1028
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extraHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getExtraMonitorStatus()[I
    .registers 2

    .line 1353
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extraMonitorStatus:[I

    return-object v0
.end method

.method public getFailedException()Lcom/ss/android/socialbase/downloader/exception/BaseException;
    .registers 2

    .line 2217
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->failedException:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    return-object v0
.end method

.method public getFailedResumeCount()I
    .registers 4

    .line 2269
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2270
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "failed_resume_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFilePackageName()Ljava/lang/String;
    .registers 2

    .line 1036
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->filePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstSpeedTime()J
    .registers 3

    .line 976
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 977
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "dbjson_key_first_speed_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getForbiddenBackupUrls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forbiddenBackupUrls:Ljava/util/List;

    return-object v0
.end method

.method public getHeadConnectionException()Ljava/lang/String;
    .registers 2

    .line 492
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->headConnectionException:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    .line 1568
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpStatusCode:I

    return v0
.end method

.method public getHttpStatusMessage()Ljava/lang/String;
    .registers 2

    .line 1576
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    .line 1651
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 865
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->id:I

    if-nez v0, :cond_a

    .line 866
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->id:I

    .line 867
    :cond_a
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->id:I

    return v0
.end method

.method public getIsFirstDownload()Z
    .registers 2

    .line 1811
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    return v0
.end method

.method public getLastDownloadTime()J
    .registers 5

    .line 2356
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 2357
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "dbjson_last_start_download_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastFailedResumeTime()J
    .registers 5

    .line 2283
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2284
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "last_failed_resume_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastModified()Ljava/lang/String;
    .registers 4

    .line 1319
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 1320
    nop

    .line 1322
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v2, "last-modified"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    .line 1325
    goto :goto_f

    .line 1323
    :catch_e
    move-exception v1

    .line 1326
    :goto_f
    return-object v0
.end method

.method public getLastUninstallResumeTime()J
    .registers 5

    .line 2311
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2312
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "last_unins_resume_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkMode()I
    .registers 3

    .line 1199
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 1200
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "link_mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxBytes()I
    .registers 2

    .line 1057
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->maxBytes:I

    return v0
.end method

.method public getMaxProgressCount()I
    .registers 2

    .line 1864
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->maxProgressCount:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .registers 2

    .line 1044
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 1619
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMinByteIntervalForPostToMainThread(J)J
    .registers 5

    .line 1868
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->maxProgressCount:I

    .line 1869
    if-gtz v0, :cond_6

    .line 1870
    const/16 v0, 0x64

    .line 1871
    :cond_6
    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    div-long/2addr p1, v0

    .line 1872
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_13

    const-wide/32 p1, 0x100000

    :cond_13
    return-wide p1
.end method

.method public getMinProgressTimeMsInterval()I
    .registers 3

    .line 1876
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->minProgressTimeMsInterval:I

    .line 1877
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_7

    .line 1878
    move v0, v1

    .line 1879
    :cond_7
    return v0
.end method

.method public getMonitorScene()Ljava/lang/String;
    .registers 2

    .line 1349
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->monitorScene:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 871
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkQuality()Ljava/lang/String;
    .registers 2

    .line 1539
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->networkQuality:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationVisibility()I
    .registers 2

    .line 1552
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->notificationVisibility:I

    return v0
.end method

.method public getOpenLimitSpeed()Z
    .registers 2

    .line 2451
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->openLimitSpeed:Z

    return v0
.end method

.method public getOutIp()[Ljava/lang/String;
    .registers 2

    .line 1061
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->outIp:[Ljava/lang/String;

    return-object v0
.end method

.method public getOutSize()[I
    .registers 2

    .line 1065
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->outSize:[I

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 2471
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageInfoRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    :goto_c
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1032
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPausedResumeCount()I
    .registers 4

    .line 2490
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2491
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "paused_resume_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPreconnectLevel()I
    .registers 4

    .line 2399
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 2400
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "dbjson_key_preconnect_level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRealDownloadTime()J
    .registers 4

    .line 1725
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRealStatus()I
    .registers 2

    .line 960
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_9

    .line 961
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    .line 963
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getRetryCount()I
    .registers 2

    .line 1069
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryCount:I

    return v0
.end method

.method public getRetryDelayStatus()Lcom/ss/android/socialbase/downloader/constants/h;
    .registers 2

    .line 1671
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    return-object v0
.end method

.method public getRetryDelayTimeArray()Ljava/lang/String;
    .registers 2

    .line 1631
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayTimeArray:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryScheduleCount()I
    .registers 4

    .line 1181
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 1182
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "retry_schedule_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSavePath()Ljava/lang/String;
    .registers 2

    .line 886
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSpIntVal(Ljava/lang/String;)I
    .registers 4

    .line 2333
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2334
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getSpLongVal(Ljava/lang/String;)J
    .registers 5

    .line 2338
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2339
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpStringVal(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2328
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2329
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStatus()I
    .registers 3

    .line 914
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_d

    .line 915
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 916
    const/4 v1, -0x5

    if-ne v0, v1, :cond_c

    .line 917
    const/4 v0, -0x2

    .line 918
    :cond_c
    return v0

    .line 920
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusAtDbInit()I
    .registers 2

    .line 2459
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->statusAtDbInit:I

    return v0
.end method

.method public getTTMd5CheckStatus()I
    .registers 4

    .line 988
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 989
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "ttmd5_check_status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTargetFilePath()Ljava/lang/String;
    .registers 3

    .line 898
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2419
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureTempCacheData()V

    .line 2420
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempCacheData:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .registers 4

    .line 902
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempName()Ljava/lang/String;
    .registers 2

    .line 894
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempPath()Ljava/lang/String;
    .registers 3

    .line 890
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThrottleNetSpeed()J
    .registers 3

    .line 2455
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->throttleNetSpeed:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 875
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 876
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    return-object v0

    .line 878
    :cond_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBytes()J
    .registers 3

    .line 1531
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    return-wide v0
.end method

.method public getTotalRetryCount()I
    .registers 4

    .line 1077
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryCount:I

    .line 1078
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1079
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlRetryCount:I

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1081
    :cond_16
    return v0
.end method

.method public getUninstallResumeCount()I
    .registers 4

    .line 2297
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2298
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "unins_resume_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 882
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public geteTag()Ljava/lang/String;
    .registers 2

    .line 1535
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized handleTempSaveCallback(ZLcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 6

    monitor-enter p0

    .line 2077
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSaveTempFile:Z

    .line 2078
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempFileSaveCompleteCallbacks:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_52

    if-nez v0, :cond_a

    .line 2079
    monitor-exit p0

    return-void

    .line 2081
    :cond_a
    :try_start_a
    const-string v0, "DownloadInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTempSaveCallback isSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempFileSaveCompleteCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempFileSaveCompleteCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2083
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 2084
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/depend/aj;

    .line 2085
    if-eqz v1, :cond_4f

    .line 2086
    if-eqz p1, :cond_4c

    .line 2087
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/depend/aj;->a()V

    goto :goto_4f

    .line 2089
    :cond_4c
    invoke-interface {v1, p2}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_52

    .line 2091
    :cond_4f
    :goto_4f
    goto :goto_38

    .line 2092
    :cond_50
    monitor-exit p0

    return-void

    .line 2076
    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasNextBackupUrl()Z
    .registers 4

    .line 1921
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    if-ltz v0, :cond_1d

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    .line 1922
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1d

    :cond_1c
    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 1921
    :goto_1e
    return v1
.end method

.method public hasPauseReservedOnWifi()Z
    .registers 3

    .line 1219
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getReserveWifiStatus()I

    move-result v0

    .line 1220
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public increaseAllConnectTime(J)V
    .registers 5

    .line 1006
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_18

    .line 1007
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAllConnectTime()J

    .line 1008
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->allConnectTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "dbjson_key_all_connect_time"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    :cond_18
    return-void
.end method

.method public increaseCurBytes(J)V
    .registers 4

    .line 1492
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1493
    return-void
.end method

.method public increaseDownloadPrepareTime(J)V
    .registers 5

    .line 1021
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_14

    .line 1022
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadPrepareTime()J

    move-result-wide v0

    .line 1023
    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "dbjson_key_download_prepare_time"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1025
    :cond_14
    return-void
.end method

.method public isAddListenerToSameTask()Z
    .registers 2

    .line 1428
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->addListenerToSameTask:Z

    return v0
.end method

.method public isAutoInstallWithoutNotification()Z
    .registers 4

    .line 1599
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification:Ljava/lang/Boolean;

    if-nez v0, :cond_2f

    .line 1600
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 1602
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extra:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1603
    const-string v2, "auto_install_without_notification"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification:Ljava/lang/Boolean;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_20} :catch_21

    goto :goto_28

    .line 1604
    :catch_21
    move-exception v0

    .line 1605
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification:Ljava/lang/Boolean;

    .line 1606
    :goto_28
    goto :goto_2f

    .line 1608
    :cond_29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification:Ljava/lang/Boolean;

    .line 1611
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAutoInstallWithoutNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isAutoResumed()Z
    .registers 2

    .line 936
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->autoResumed:Z

    return v0
.end method

.method public isBackUpUrlUsed()Z
    .registers 2

    .line 1139
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    return v0
.end method

.method public isBreakpointAvailable()Z
    .registers 2

    .line 2099
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFileDataValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2100
    const/4 v0, 0x0

    return v0

    .line 2101
    :cond_8
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isChunkBreakpointAvailable()Z

    move-result v0

    return v0
.end method

.method public isCanResumeFromBreakPointStatus()Z
    .registers 7

    .line 2124
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    .line 2125
    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-eq v0, v2, :cond_27

    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    const/4 v2, 0x5

    if-eq v0, v2, :cond_27

    const/16 v2, 0x8

    if-eq v0, v2, :cond_27

    if-eq v0, v1, :cond_1a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_25

    .line 2129
    :cond_1a
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    nop

    .line 2125
    :goto_28
    return v1
.end method

.method public isChunkBreakpointAvailable()Z
    .registers 7

    .line 2046
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_46

    .line 2047
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    .line 2048
    if-eqz v0, :cond_46

    .line 2049
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/i;->c(I)Ljava/util/List;

    move-result-object v0

    .line 2050
    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    if-eq v2, v3, :cond_1e

    goto :goto_44

    .line 2053
    :cond_1e
    const-wide/16 v2, 0x0

    .line 2054
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/socialbase/downloader/model/b;

    .line 2055
    if-eqz v4, :cond_37

    .line 2056
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/b;->o()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 2058
    :cond_37
    goto :goto_24

    .line 2059
    :cond_38
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_46

    .line 2060
    invoke-virtual {p0, v2, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(J)V

    goto :goto_46

    .line 2051
    :cond_44
    :goto_44
    const/4 v0, 0x0

    return v0

    .line 2065
    :cond_46
    :goto_46
    return v1
.end method

.method public isChunkDowngradeRetryUsed()Z
    .registers 2

    .line 1667
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkDowngradeRetryUsed:Z

    return v0
.end method

.method public isChunked()Z
    .registers 3

    .line 1853
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->b(J)Z

    move-result v0

    return v0
.end method

.method public isDeleteCacheIfCheckFailed()Z
    .registers 2

    .line 1411
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->deleteCacheIfCheckFailed:Z

    return v0
.end method

.method public isDownloadFromReserveWifi()Z
    .registers 2

    .line 1191
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mDownloadFromReserveWifi:Z

    return v0
.end method

.method public isDownloadOverStatus()Z
    .registers 2

    .line 1845
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloadOver(I)Z

    move-result v0

    return v0
.end method

.method public isDownloadWithWifiValid()Z
    .registers 2

    .line 1829
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isDownloaded()Z
    .registers 2

    .line 1887
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    return v0
.end method

.method public isDownloadingStatus()Z
    .registers 2

    .line 1841
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result v0

    return v0
.end method

.method public isEntityInvalid()Z
    .registers 2

    .line 1883
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public isExpiredRedownload()Z
    .registers 2

    .line 1436
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->expiredRedownload:Z

    return v0
.end method

.method public isFileDataExists()Z
    .registers 5

    .line 2032
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isEntityInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2033
    return v1

    .line 2035
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 2037
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 2039
    if-eqz v2, :cond_24

    if-eqz v0, :cond_22

    goto :goto_24

    .line 2042
    :cond_22
    const/4 v0, 0x1

    return v0

    .line 2040
    :cond_24
    :goto_24
    return v1
.end method

.method public isFileDataValid()Z
    .registers 15

    .line 2002
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isEntityInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2003
    return v1

    .line 2006
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 2008
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 2010
    if-eqz v2, :cond_c6

    if-eqz v3, :cond_23

    goto/16 :goto_c6

    .line 2014
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 2016
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    .line 2017
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v6, "fix_file_data_valid"

    invoke-virtual {v0, v6}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v6, ",fileLength="

    const-string v7, ",totalBytes ="

    const-string v8, "isFileDataValid: cur = "

    const-string v9, "DownloadInfo"

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_7e

    .line 2018
    cmp-long v0, v4, v10

    if-lez v0, :cond_57

    iget-wide v12, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    cmp-long v0, v12, v10

    if-lez v0, :cond_57

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    if-lez v0, :cond_57

    cmp-long v0, v2, v4

    if-ltz v0, :cond_57

    cmp-long v0, v2, v12

    if-lez v0, :cond_9d

    .line 2019
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    return v1

    .line 2023
    :cond_7e
    cmp-long v0, v2, v10

    if-lez v0, :cond_9f

    cmp-long v0, v4, v10

    if-lez v0, :cond_9f

    iget-wide v12, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    cmp-long v0, v12, v10

    if-lez v0, :cond_9f

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    if-lez v0, :cond_9f

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9f

    cmp-long v0, v2, v12

    if-gtz v0, :cond_9f

    cmp-long v0, v4, v12

    if-ltz v0, :cond_9d

    goto :goto_9f

    .line 2028
    :cond_9d
    const/4 v0, 0x1

    return v0

    .line 2024
    :cond_9f
    :goto_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    return v1

    .line 2011
    :cond_c6
    :goto_c6
    return v1
.end method

.method public isFirstDownload()Z
    .registers 4

    .line 2105
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2106
    return v1

    .line 2108
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2f

    .line 2110
    :cond_1b
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 2109
    :cond_2f
    :goto_2f
    return v1
.end method

.method public isFirstSuccess()Z
    .registers 2

    .line 1815
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    return v0
.end method

.method public isForbiddenRetryed()Z
    .registers 2

    .line 1639
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForbiddenRetryed:Z

    return v0
.end method

.method public isForce()Z
    .registers 2

    .line 1432
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->force:Z

    return v0
.end method

.method public isForceIgnoreRecommendSize()Z
    .registers 2

    .line 1560
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forceIgnoreRecommendSize:Z

    return v0
.end method

.method public isHeadConnectionAvailable()Z
    .registers 2

    .line 1416
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->headConnectionAvailable:Z

    return v0
.end method

.method public isHttpsToHttpRetryUsed()Z
    .registers 2

    .line 932
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpsToHttpRetryUsed:Z

    return v0
.end method

.method public isIgnoreDataVerify()Z
    .registers 2

    .line 1420
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ignoreDataVerify:Z

    return v0
.end method

.method public isNeedChunkDowngradeRetry()Z
    .registers 2

    .line 1663
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needChunkDowngradeRetry:Z

    return v0
.end method

.method public isNeedDefaultHttpServiceBackUp()Z
    .registers 2

    .line 906
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    return v0
.end method

.method public isNeedHttpsToHttpRetry()Z
    .registers 2

    .line 1623
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needHttpsToHttpRetry:Z

    return v0
.end method

.method public isNeedIndependentProcess()Z
    .registers 2

    .line 1407
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needIndependentProcess:Z

    return v0
.end method

.method public isNeedPostProgress()Z
    .registers 2

    .line 1857
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needPostProgress:Z

    return v0
.end method

.method public isNeedRetryDelay()Z
    .registers 2

    .line 1627
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedReuseChunkRunnable()Z
    .registers 2

    .line 910
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseChunkRunnable:Z

    return v0
.end method

.method public isNeedReuseFirstConnection()Z
    .registers 2

    .line 1403
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseFirstConnection:Z

    return v0
.end method

.method public isNeedSDKMonitor()Z
    .registers 2

    .line 1345
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needSDKMonitor:Z

    return v0
.end method

.method public isNewSaveTempFileEnable()Z
    .registers 2

    .line 1424
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->newSaveTempFileEnable:Z

    return v0
.end method

.method public isNewTask()Z
    .registers 2

    .line 2133
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    .line 2134
    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isOnlyWifi()Z
    .registers 2

    .line 967
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->onlyWifi:Z

    return v0
.end method

.method public isPauseReserveOnWifi()Z
    .registers 2

    .line 1211
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getReserveWifiStatus()I

    move-result v0

    .line 1212
    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPauseReserveWithWifiValid()Z
    .registers 3

    .line 1834
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mDownloadFromReserveWifi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 1835
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1

    .line 1837
    :cond_18
    return v1
.end method

.method public isRwConcurrent()Z
    .registers 4

    .line 1340
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 1341
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "rw_concurrent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    move v2, v1

    :cond_10
    return v2
.end method

.method public isSavePathRedirected()Z
    .registers 4

    .line 2378
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 2379
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    const-string v1, "is_save_path_redirected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isSaveTempFile()Z
    .registers 2

    monitor-enter p0

    .line 2069
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSaveTempFile:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 2069
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowNotification()Z
    .registers 2

    .line 1593
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotification:Z

    return v0
.end method

.method public isShowNotificationForAutoResumed()Z
    .registers 2

    .line 944
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForAutoResumed:Z

    return v0
.end method

.method public isShowNotificationForNetworkResumed()Z
    .registers 2

    .line 952
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForNetworkResumed:Z

    return v0
.end method

.method public isSuccessByCache()Z
    .registers 2

    .line 1444
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->successByCache:Z

    return v0
.end method

.method public isSupportPartial()Z
    .registers 2

    .line 2424
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->supportPartial:Z

    return v0
.end method

.method public isWaitingWifiStatus()Z
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->failedException:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3f5

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->id:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->title:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempPath:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    move v0, v2

    :goto_2f
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->onlyWifi:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extra:Ljava/lang/String;

    .line 351
    sget-object v0, Lcom/ss/android/socialbase/downloader/model/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extraHeaders:Ljava/util/List;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->maxBytes:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->outIp:[Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->outSize:[I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryCount:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlRetryCount:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_65

    move v0, v1

    goto :goto_66

    :cond_65
    move v0, v2

    :goto_66
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->force:Z

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_70

    move v0, v1

    goto :goto_71

    :cond_70
    move v0, v2

    :goto_71
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needPostProgress:Z

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->maxProgressCount:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->minProgressTimeMsInterval:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8d

    move v0, v1

    goto :goto_8e

    :cond_8d
    move v0, v2

    :goto_8e
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotification:Z

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mimeType:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9e

    move v0, v1

    goto :goto_9f

    :cond_9e
    move v0, v2

    :goto_9f
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needHttpsToHttpRetry:Z

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageName:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->md5:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b5

    move v0, v1

    goto :goto_b6

    :cond_b5
    move v0, v2

    :goto_b6
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needRetryDelay:Z

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c0

    move v0, v1

    goto :goto_c1

    :cond_c0
    move v0, v2

    :goto_c1
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_cb

    move v0, v1

    goto :goto_cc

    :cond_cb
    move v0, v2

    :goto_cc
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseChunkRunnable:Z

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayTimeArray:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->eTag:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->convertRetryDelayStatus(I)V

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_ef

    move v0, v1

    goto :goto_f0

    :cond_ef
    move v0, v2

    :goto_f0
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseFirstConnection:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_fa

    move v0, v1

    goto :goto_fb

    :cond_fa
    move v0, v2

    :goto_fb
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forceIgnoreRecommendSize:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->networkQuality:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->notificationVisibility:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(J)V

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_13d

    move v0, v1

    goto :goto_13e

    :cond_13d
    move v0, v2

    :goto_13e
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_148

    move v0, v1

    goto :goto_149

    :cond_148
    move v0, v2

    :goto_149
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpsToHttpRetryUsed:Z

    .line 388
    :try_start_14b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->errorBytesLog:Ljava/lang/StringBuffer;

    if-nez v0, :cond_15b

    .line 389
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->errorBytesLog:Ljava/lang/StringBuffer;

    goto :goto_16a

    .line 391
    :cond_15b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_16a} :catch_16b

    .line 394
    :goto_16a
    goto :goto_16f

    .line 392
    :catch_16b
    move-exception v0

    .line 393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    :goto_16f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_177

    move v0, v1

    goto :goto_178

    :cond_177
    move v0, v2

    :goto_178
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->autoResumed:Z

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_182

    move v0, v1

    goto :goto_183

    :cond_182
    move v0, v2

    :goto_183
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForAutoResumed:Z

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_18d

    move v0, v1

    goto :goto_18e

    :cond_18d
    move v0, v2

    :goto_18e
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForNetworkResumed:Z

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forbiddenBackupUrls:Ljava/util/List;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_19e

    move v0, v1

    goto :goto_19f

    :cond_19e
    move v0, v2

    :goto_19f
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needIndependentProcess:Z

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->convertEnqueueType(I)V

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1b0

    move v0, v1

    goto :goto_1b1

    :cond_1b0
    move v0, v2

    :goto_1b1
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->headConnectionAvailable:Z

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpStatusCode:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpStatusMessage:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1c7

    move v0, v1

    goto :goto_1c8

    :cond_1c7
    move v0, v2

    :goto_1c8
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSaveTempFile:Z

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1d2

    move v0, v1

    goto :goto_1d3

    :cond_1d2
    move v0, v2

    :goto_1d3
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForbiddenRetryed:Z

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1dd

    move v0, v1

    goto :goto_1de

    :cond_1dd
    move v0, v2

    :goto_1de
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->newSaveTempFileEnable:Z

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1e8

    move v0, v1

    goto :goto_1e9

    :cond_1e8
    move v0, v2

    :goto_1e9
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->addListenerToSameTask:Z

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1f3

    move v0, v1

    goto :goto_1f4

    :cond_1f3
    move v0, v2

    :goto_1f4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needChunkDowngradeRetry:Z

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1fe

    move v0, v1

    goto :goto_1ff

    :cond_1fe
    move v0, v2

    :goto_1ff
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkDowngradeRetryUsed:Z

    .line 410
    const-class v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->failedException:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryScheduleMinutes:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonDataString:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_222

    goto :goto_223

    :cond_222
    move v1, v2

    :goto_223
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->supportPartial:Z

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->iconUrl:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->appVersionCode:I

    .line 416
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->parseMonitorSetting()V

    .line 417
    return-void
.end method

.method public declared-synchronized registerTempFileSaveCallback(Lcom/ss/android/socialbase/downloader/depend/aj;)V
    .registers 6

    monitor-enter p0

    .line 1938
    if-nez p1, :cond_5

    .line 1939
    monitor-exit p0

    return-void

    .line 1941
    :cond_5
    :try_start_5
    const-string v0, "DownloadInfo"

    const-string v1, "registerTempFileSaveCallback"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempFileSaveCompleteCallbacks:Ljava/util/List;

    if-nez v0, :cond_17

    .line 1943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempFileSaveCompleteCallbacks:Ljava/util/List;

    .line 1944
    :cond_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempFileSaveCompleteCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1945
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempFileSaveCompleteCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    .line 1950
    :cond_24
    goto :goto_39

    .line 1947
    :catchall_25
    move-exception v0

    .line 1948
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1949
    new-instance v1, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v2, 0x40e

    const-string v3, "registerTempFileSaveCallback"

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/ss/android/socialbase/downloader/depend/aj;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_3b

    .line 1951
    :goto_39
    monitor-exit p0

    return-void

    .line 1937
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset()V
    .registers 4

    .line 1964
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    .line 1965
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    .line 1966
    iput v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    .line 1967
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    .line 1968
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realStartDownloadTime:J

    .line 1969
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    .line 1970
    return-void
.end method

.method public resetDataForEtagEndure(Ljava/lang/String;)V
    .registers 5

    .line 1954
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(JZ)V

    .line 1955
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setTotalBytes(J)V

    .line 1956
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->seteTag(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setChunkCount(I)V

    .line 1958
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    .line 1959
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realStartDownloadTime:J

    .line 1960
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    .line 1961
    return-void
.end method

.method public resetRealStartDownloadTime()V
    .registers 3

    .line 1373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realStartDownloadTime:J

    .line 1374
    return-void
.end method

.method public safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 1164
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 1165
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    monitor-enter v0

    .line 1167
    :try_start_6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_e
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    .line 1170
    goto :goto_f

    .line 1172
    :catchall_c
    move-exception p1

    goto :goto_14

    .line 1168
    :catch_e
    move-exception p1

    .line 1171
    :goto_f
    const/4 p1, 0x0

    :try_start_10
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->dbJsonDataString:Ljava/lang/String;

    .line 1172
    monitor-exit v0

    .line 1173
    return-void

    .line 1172
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_c

    throw p1
.end method

.method public setAntiHijackErrorCode(I)V
    .registers 3

    .line 2371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "anti_hijack_error_code"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2372
    return-void
.end method

.method public setAppVersionCode(I)V
    .registers 2

    .line 1655
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->appVersionCode:I

    .line 1656
    return-void
.end method

.method public setAsyncHandleStatus(Lcom/ss/android/socialbase/downloader/constants/a;)V
    .registers 2

    .line 1710
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->asyncHandleStatus:Lcom/ss/android/socialbase/downloader/constants/a;

    .line 1711
    return-void
.end method

.method public setAutoResumed(Z)V
    .registers 2

    .line 940
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->autoResumed:Z

    .line 941
    return-void
.end method

.method public setByteInvalidRetryStatus(Lcom/ss/android/socialbase/downloader/constants/b;)V
    .registers 2

    .line 1480
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->byteInvalidRetryStatus:Lcom/ss/android/socialbase/downloader/constants/b;

    .line 1481
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .registers 4

    .line 1288
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 1290
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "cache-control"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1291
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    .line 1294
    goto :goto_f

    .line 1292
    :catch_e
    move-exception p1

    .line 1295
    :goto_f
    return-void
.end method

.method public setCacheExpiredTime(J)V
    .registers 5

    .line 1267
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 1269
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "cache-control/expired_time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1270
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    .line 1273
    goto :goto_f

    .line 1271
    :catch_e
    move-exception p1

    .line 1274
    :goto_f
    return-void
.end method

.method public setChunkCount(I)V
    .registers 2

    .line 1547
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    .line 1548
    return-void
.end method

.method public setChunkDowngradeRetryUsed(Z)V
    .registers 2

    .line 2095
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkDowngradeRetryUsed:Z

    .line 2096
    return-void
.end method

.method public setCurBytes(J)V
    .registers 4

    .line 1459
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBytes:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_8

    .line 1460
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_f

    .line 1462
    :cond_8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1463
    :goto_f
    return-void
.end method

.method public setCurBytes(JZ)V
    .registers 6

    .line 1466
    if-eqz p3, :cond_6

    .line 1467
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(J)V

    goto :goto_11

    .line 1469
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    .line 1470
    cmp-long p3, p1, v0

    if-lez p3, :cond_11

    .line 1471
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setCurBytes(J)V

    .line 1473
    :cond_11
    :goto_11
    return-void
.end method

.method public setDownloadFromReserveWifi(Z)V
    .registers 2

    .line 1195
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mDownloadFromReserveWifi:Z

    .line 1196
    return-void
.end method

.method public setDownloadTime(J)V
    .registers 5

    .line 1398
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    .line 1399
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    .line 1400
    :cond_8
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .line 1523
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extra:Ljava/lang/String;

    .line 1524
    return-void
.end method

.method public setFailedException(Lcom/ss/android/socialbase/downloader/exception/BaseException;)V
    .registers 2

    .line 2221
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->failedException:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    .line 2222
    return-void
.end method

.method public setFailedResumeCount(I)V
    .registers 4

    .line 2274
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2276
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "failed_resume_count"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 2279
    goto :goto_f

    .line 2277
    :catch_b
    move-exception p1

    .line 2278
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2280
    :goto_f
    return-void
.end method

.method public setFilePackageName(Ljava/lang/String;)V
    .registers 2

    .line 1040
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->filePackageName:Ljava/lang/String;

    .line 1041
    return-void
.end method

.method public setFirstDownload(Z)V
    .registers 2

    .line 1484
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    .line 1485
    return-void
.end method

.method public setFirstSpeedTime(J)V
    .registers 3

    .line 981
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "dbjson_key_first_speed_time"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 982
    return-void
.end method

.method public setFirstSuccess(Z)V
    .registers 2

    .line 1488
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    .line 1489
    return-void
.end method

.method public setForbiddenBackupUrls(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1101
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forbiddenBackupUrls:Ljava/util/List;

    .line 1102
    invoke-direct {p0, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->refreshBackupUrls(Z)V

    .line 1103
    return-void
.end method

.method public setForbiddenRetryed()V
    .registers 2

    .line 1643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForbiddenRetryed:Z

    .line 1644
    return-void
.end method

.method public setForceIgnoreRecommendSize(Z)V
    .registers 2

    .line 1564
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forceIgnoreRecommendSize:Z

    .line 1565
    return-void
.end method

.method public setHeadConnectionException(Ljava/lang/String;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->headConnectionException:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setHttpStatusCode(I)V
    .registers 2

    .line 1572
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpStatusCode:I

    .line 1573
    return-void
.end method

.method public setHttpStatusMessage(Ljava/lang/String;)V
    .registers 2

    .line 1580
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpStatusMessage:Ljava/lang/String;

    .line 1581
    return-void
.end method

.method public setHttpsToHttpRetryUsed(Z)V
    .registers 2

    .line 1930
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpsToHttpRetryUsed:Z

    .line 1931
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .registers 2

    .line 1647
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->iconUrl:Ljava/lang/String;

    .line 1648
    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 1825
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->id:I

    .line 1826
    return-void
.end method

.method public setIsRwConcurrent(Z)V
    .registers 3

    .line 1333
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "rw_concurrent"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1334
    return-void
.end method

.method public declared-synchronized setIsSaveTempFile(Z)V
    .registers 2

    monitor-enter p0

    .line 2073
    :try_start_1
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSaveTempFile:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2074
    monitor-exit p0

    return-void

    .line 2072
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLastFailedResumeTime(J)V
    .registers 5

    .line 2288
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2290
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "last_failed_resume_time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 2293
    goto :goto_f

    .line 2291
    :catch_b
    move-exception p1

    .line 2292
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2294
    :goto_f
    return-void
.end method

.method public setLastModified(Ljava/lang/String;)V
    .registers 4

    .line 1309
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 1311
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "last-modified"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1312
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    .line 1315
    goto :goto_f

    .line 1313
    :catch_e
    move-exception p1

    .line 1316
    :goto_f
    return-void
.end method

.method public setLastNotifyProgressTime()V
    .registers 4

    .line 488
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->lastNotifyProgressTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 489
    return-void
.end method

.method public setLastUninstallResumeTime(J)V
    .registers 5

    .line 2316
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2318
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "last_unins_resume_time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 2321
    goto :goto_f

    .line 2319
    :catch_b
    move-exception p1

    .line 2320
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2322
    :goto_f
    return-void
.end method

.method public setLinkMode(I)V
    .registers 3

    .line 1204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "link_mode"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1205
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .registers 2

    .line 1778
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->md5:Ljava/lang/String;

    .line 1779
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    .line 1615
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mimeType:Ljava/lang/String;

    .line 1616
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1500
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    .line 1501
    return-void
.end method

.method public setNetworkQuality(Ljava/lang/String;)V
    .registers 2

    .line 1543
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->networkQuality:Ljava/lang/String;

    .line 1544
    return-void
.end method

.method public setNotificationVisibility(I)V
    .registers 2

    .line 1556
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->notificationVisibility:I

    .line 1557
    return-void
.end method

.method public setOnlyWifi(Z)V
    .registers 2

    .line 971
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->onlyWifi:Z

    .line 972
    return-void
.end method

.method public setOpenLimitSpeed(Z)V
    .registers 2

    .line 2447
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->openLimitSpeed:Z

    .line 2448
    return-void
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .registers 3

    .line 2467
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageInfoRef:Ljava/lang/ref/SoftReference;

    .line 2468
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 1527
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageName:Ljava/lang/String;

    .line 1528
    return-void
.end method

.method public setPausedResumeCount(I)V
    .registers 4

    .line 2495
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2497
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "paused_resume_count"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 2500
    goto :goto_f

    .line 2498
    :catch_b
    move-exception p1

    .line 2499
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2501
    :goto_f
    return-void
.end method

.method public setPreconnectLevel(I)V
    .registers 3

    .line 2404
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureDBJsonData()V

    .line 2405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "dbjson_key_preconnect_level"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2406
    return-void
.end method

.method public setRetryDelayStatus(Lcom/ss/android/socialbase/downloader/constants/h;)V
    .registers 2

    .line 1702
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    .line 1703
    return-void
.end method

.method public setRetryScheduleCount(I)V
    .registers 3

    .line 1186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "retry_schedule_count"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1188
    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .registers 2

    .line 1934
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    .line 1935
    return-void
.end method

.method public setSavePathRedirected(Z)V
    .registers 3

    .line 2384
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "is_save_path_redirected"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2385
    return-void
.end method

.method public setShowNotification(Z)V
    .registers 2

    .line 1589
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotification:Z

    .line 1590
    return-void
.end method

.method public setShowNotificationForAutoResumed(Z)V
    .registers 2

    .line 948
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForAutoResumed:Z

    .line 949
    return-void
.end method

.method public setShowNotificationForNetworkResumed(Z)V
    .registers 2

    .line 956
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForNetworkResumed:Z

    .line 957
    return-void
.end method

.method public setSpValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2343
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2345
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2346
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    .line 2349
    goto :goto_10

    .line 2347
    :catch_c
    move-exception p1

    .line 2348
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2350
    :goto_10
    return-void
.end method

.method public setStatus(I)V
    .registers 3

    .line 1512
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_8

    .line 1513
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_f

    .line 1515
    :cond_8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1516
    :goto_f
    return-void
.end method

.method public setStatusAtDbInit(I)V
    .registers 2

    .line 2463
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->statusAtDbInit:I

    .line 2464
    return-void
.end method

.method public setSuccessByCache(Z)V
    .registers 2

    .line 1448
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->successByCache:Z

    .line 1449
    return-void
.end method

.method public setSupportPartial(Z)V
    .registers 2

    .line 1519
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->supportPartial:Z

    .line 1520
    return-void
.end method

.method public setTTMd5CheckStatus(I)V
    .registers 3

    .line 993
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "ttmd5_check_status"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 994
    return-void
.end method

.method public setThrottleNetSpeed(J)V
    .registers 3

    .line 2443
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->throttleNetSpeed:J

    .line 2444
    return-void
.end method

.method public setTotalBytes(J)V
    .registers 3

    .line 1508
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    .line 1509
    return-void
.end method

.method public setUninstallResumeCount(I)V
    .registers 4

    .line 2302
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 2304
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "unins_resume_count"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 2307
    goto :goto_f

    .line 2305
    :catch_b
    move-exception p1

    .line 2306
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2308
    :goto_f
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 1504
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    .line 1505
    return-void
.end method

.method public seteTag(Ljava/lang/String;)V
    .registers 2

    .line 1496
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->eTag:Ljava/lang/String;

    .line 1497
    return-void
.end method

.method public startPauseReserveOnWifi()V
    .registers 4

    .line 1243
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 1245
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "pause_reserve_on_wifi"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1246
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    .line 1249
    goto :goto_10

    .line 1247
    :catch_f
    move-exception v0

    .line 1250
    :goto_10
    return-void
.end method

.method public statusInPause()Z
    .registers 3

    .line 1224
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_11

    .line 1225
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 1224
    :goto_12
    return v0
.end method

.method public stopPauseReserveOnWifi()V
    .registers 4

    .line 1257
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->ensureSpData()V

    .line 1259
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    const-string v1, "pause_reserve_on_wifi"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1260
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->updateSpData()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    .line 1263
    goto :goto_10

    .line 1261
    :catch_f
    move-exception v0

    .line 1264
    :goto_10
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    .line 756
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 757
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    const-string v2, "savePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempPath:Ljava/lang/String;

    const-string v2, "tempPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chunkCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "curBytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 765
    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "totalBytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 766
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->eTag:Ljava/lang/String;

    const-string v2, "eTag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->onlyWifi:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onlyWifi"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 768
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->force:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "force"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retryCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extra:Ljava/lang/String;

    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mimeType:Ljava/lang/String;

    const-string v2, "mimeType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotification:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notificationEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->notificationVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notificationVisibility"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstDownload:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isFirstDownload"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isFirstSuccess:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isFirstSuccess"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needHttpsToHttpRetry:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "needHttpsToHttpRetry"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "downloadTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 779
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageName:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->md5:Ljava/lang/String;

    const-string v2, "md5"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needRetryDelay:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retryDelay"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "curRetryTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 783
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/constants/h;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retryDelayStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 784
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "defaultHttpServiceBackUp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseChunkRunnable:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chunkRunnableReuse"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayTimeArray:Ljava/lang/String;

    const-string v2, "retryDelayTimeArray"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needChunkDowngradeRetry:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chunkDowngradeRetry"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrlsStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backUpUrlsStr"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlRetryCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "backUpUrlRetryCount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "realDownloadTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 791
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryScheduleMinutes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retryScheduleMinutes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needIndependentProcess:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "independentProcess"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDBJsonDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auxiliaryJsonobjectString"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->iconUrl:Ljava/lang/String;

    const-string v2, "iconUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->appVersionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appVersionCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", savePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trySwitchToNextBackupUrl()Z
    .registers 5

    .line 1898
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1899
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    .line 1900
    :cond_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3e

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    if-gez v0, :cond_1a

    goto :goto_3e

    .line 1902
    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3d

    .line 1903
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    iget v3, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1904
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1905
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    .line 1906
    return v1

    .line 1908
    :cond_37
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    .line 1910
    goto :goto_1a

    .line 1911
    :cond_3d
    return v2

    .line 1901
    :cond_3e
    :goto_3e
    return v2
.end method

.method public updateCurRetryTime(I)V
    .registers 3

    .line 1714
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlRetryCount:I

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryCount:I

    .line 1715
    :goto_9
    sub-int/2addr v0, p1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    .line 1716
    if-gez v0, :cond_11

    .line 1717
    const/4 p1, 0x0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    .line 1718
    :cond_11
    return-void
.end method

.method public updateDownloadTime()V
    .registers 7

    .line 1357
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->startDownloadTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 1358
    return-void

    .line 1359
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->startDownloadTime:J

    sub-long/2addr v0, v4

    .line 1360
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_18

    .line 1361
    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    .line 1362
    :cond_18
    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    .line 1363
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    .line 1364
    :cond_1e
    return-void
.end method

.method public updateRealDownloadTime(Z)V
    .registers 9

    .line 1377
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1378
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realStartDownloadTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_11

    .line 1379
    if-eqz p1, :cond_10

    .line 1380
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realStartDownloadTime:J

    .line 1382
    :cond_10
    return-void

    .line 1385
    :cond_11
    sub-long v2, v0, v2

    .line 1386
    if-eqz p1, :cond_18

    .line 1387
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realStartDownloadTime:J

    goto :goto_1a

    .line 1389
    :cond_18
    iput-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realStartDownloadTime:J

    .line 1392
    :goto_1a
    cmp-long p1, v2, v4

    if-lez p1, :cond_23

    .line 1393
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    .line 1395
    :cond_23
    return-void
.end method

.method public updateRealStartDownloadTime()V
    .registers 5

    .line 1367
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realStartDownloadTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 1368
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realStartDownloadTime:J

    .line 1370
    :cond_e
    return-void
.end method

.method public updateSpData()V
    .registers 4

    .line 2245
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    .line 2246
    return-void

    .line 2248
    :cond_5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 2249
    if-eqz v0, :cond_2b

    .line 2250
    const/4 v1, 0x0

    const-string v2, "sp_download_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2251
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->spData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2253
    :cond_2b
    return-void
.end method

.method public updateStartDownloadTime()V
    .registers 3

    .line 1156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->startDownloadTime:J

    .line 1157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dbjson_last_start_download_time"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1158
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 2148
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2149
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2150
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2151
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2152
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2153
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2154
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->onlyWifi:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2155
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2156
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->extraHeaders:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2157
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->maxBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->outIp:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2159
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->outSize:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2160
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2161
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlRetryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2162
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->force:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2163
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needPostProgress:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2164
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->maxProgressCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2165
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->minProgressTimeMsInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2166
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2167
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotification:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2168
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2169
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needHttpsToHttpRetry:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2170
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2171
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2172
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needRetryDelay:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2173
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needDefaultHttpServiceBackUp:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2174
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseChunkRunnable:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2175
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayTimeArray:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2176
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->eTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2177
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curRetryTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2178
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryDelayStatus:Lcom/ss/android/socialbase/downloader/constants/h;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/constants/h;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2179
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needReuseFirstConnection:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2180
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forceIgnoreRecommendSize:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2181
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->networkQuality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2182
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->curBackUpUrlIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2183
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->notificationVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2184
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2186
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2187
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRealStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->downloadTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2189
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->realDownloadTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2190
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->backUpUrlUsed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2191
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpsToHttpRetryUsed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2192
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->errorBytesLog:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_f9

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_fb

    :cond_f9
    const-string v0, ""

    :goto_fb
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2193
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->autoResumed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2194
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForAutoResumed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2195
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->showNotificationForNetworkResumed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2196
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->forbiddenBackupUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2197
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needIndependentProcess:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2198
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->enqueueType:Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/constants/f;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2199
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->headConnectionAvailable:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2200
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2201
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->httpStatusMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2202
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSaveTempFile:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2203
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForbiddenRetryed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2204
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->newSaveTempFileEnable:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2205
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->addListenerToSameTask:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2206
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->needChunkDowngradeRetry:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2207
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->chunkDowngradeRetryUsed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2208
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->failedException:Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2209
    iget p2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->retryScheduleMinutes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDBJsonDataString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2211
    iget-boolean p2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->supportPartial:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2212
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2213
    iget p2, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->appVersionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    return-void
.end method
