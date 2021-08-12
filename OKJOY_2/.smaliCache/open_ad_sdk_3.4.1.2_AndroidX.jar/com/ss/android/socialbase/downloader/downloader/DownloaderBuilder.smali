.class public Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
.super Ljava/lang/Object;
.source "DownloaderBuilder.java"


# instance fields
.field private chunkAdjustCalculator:Lcom/ss/android/socialbase/downloader/downloader/f;

.field private chunkCntCalculator:Lcom/ss/android/socialbase/downloader/downloader/g;

.field private chunkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final context:Landroid/content/Context;

.field private cpuThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private dbThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private downloadCache:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private downloadCompleteHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/m;",
            ">;"
        }
    .end annotation
.end field

.field private downloadDns:Lcom/ss/android/socialbase/downloader/network/f;

.field private downloadExpSwitch:I

.field private downloadInMultiProcess:Z

.field private downloadLaunchHandler:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private downloadMonitorListener:Lcom/ss/android/socialbase/downloader/d/b;

.field private downloadSetting:Lcom/ss/android/socialbase/downloader/depend/ac;

.field private headHttpService:Lcom/ss/android/socialbase/downloader/network/h;

.field private httpService:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

.field private idGenerator:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private ioThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private maxDownloadPoolSize:I

.field private mixApkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mixDefaultDownloadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mixFrequentDownloadExecutor:Ljava/util/concurrent/ExecutorService;

.field private monitorConfig:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private needAutoRefreshUnSuccessTask:Z

.field private notificationClickCallback:Lcom/ss/android/socialbase/downloader/depend/ah;

.field private okHttpDispatcherExecutor:Ljava/util/concurrent/ExecutorService;

.field private writeBufferSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadCompleteHandlers:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->needAutoRefreshUnSuccessTask:Z

    .line 54
    const v0, 0x3effffff    # 0.49999997f

    iput v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadExpSwitch:I

    .line 59
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->context:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public addDownloadCompleteHandler(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadCompleteHandlers:Ljava/util/List;

    monitor-enter v0

    .line 167
    if-eqz p1, :cond_15

    :try_start_5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadCompleteHandlers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_15

    .line 170
    :cond_e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadCompleteHandlers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v0

    .line 172
    return-object p0

    .line 168
    :cond_15
    :goto_15
    monitor-exit v0

    return-object p0

    .line 171
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public build()Lcom/ss/android/socialbase/downloader/downloader/Downloader;
    .registers 2

    .line 318
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;-><init>(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V

    return-object v0
.end method

.method public chunkAdjustCalculator(Lcom/ss/android/socialbase/downloader/downloader/f;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->chunkAdjustCalculator:Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 69
    return-object p0
.end method

.method public chunkCntCalculator(Lcom/ss/android/socialbase/downloader/downloader/g;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->chunkCntCalculator:Lcom/ss/android/socialbase/downloader/downloader/g;

    .line 89
    return-object p0
.end method

.method public chunkThreadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->chunkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 139
    return-object p0
.end method

.method public cpuThreadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->cpuThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 109
    return-object p0
.end method

.method public dbThreadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->dbThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 134
    return-object p0
.end method

.method public downloadCache(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadCache:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 79
    return-object p0
.end method

.method public downloadDns(Lcom/ss/android/socialbase/downloader/network/f;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadDns:Lcom/ss/android/socialbase/downloader/network/f;

    .line 206
    return-object p0
.end method

.method public downloadExpSwitch(I)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 158
    iput p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadExpSwitch:I

    .line 159
    return-object p0
.end method

.method public downloadInMultiProcess(Z)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 148
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadInMultiProcess:Z

    .line 149
    return-object p0
.end method

.method public downloadLaunchHandler(Lcom/ss/android/socialbase/downloader/downloader/k;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadLaunchHandler:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 104
    return-object p0
.end method

.method public downloadMonitorListener(Lcom/ss/android/socialbase/downloader/d/b;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadMonitorListener:Lcom/ss/android/socialbase/downloader/d/b;

    .line 198
    return-object p0
.end method

.method public downloadSetting(Lcom/ss/android/socialbase/downloader/depend/ac;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadSetting:Lcom/ss/android/socialbase/downloader/depend/ac;

    .line 193
    return-object p0
.end method

.method public getCPUThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->cpuThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getChunkAdjustCalculator()Lcom/ss/android/socialbase/downloader/downloader/f;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->chunkAdjustCalculator:Lcom/ss/android/socialbase/downloader/downloader/f;

    return-object v0
.end method

.method public getChunkCntCalculator()Lcom/ss/android/socialbase/downloader/downloader/g;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->chunkCntCalculator:Lcom/ss/android/socialbase/downloader/downloader/g;

    return-object v0
.end method

.method public getChunkThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->chunkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDBThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->dbThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getDownloadCache()Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadCache:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0
.end method

.method public getDownloadCompleteHandlers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/m;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadCompleteHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadDns()Lcom/ss/android/socialbase/downloader/network/f;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadDns:Lcom/ss/android/socialbase/downloader/network/f;

    return-object v0
.end method

.method public getDownloadExpSwitch()I
    .registers 2

    .line 294
    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadExpSwitch:I

    return v0
.end method

.method public getDownloadLaunchHandler()Lcom/ss/android/socialbase/downloader/downloader/k;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadLaunchHandler:Lcom/ss/android/socialbase/downloader/downloader/k;

    return-object v0
.end method

.method public getDownloadMonitorListener()Lcom/ss/android/socialbase/downloader/d/b;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadMonitorListener:Lcom/ss/android/socialbase/downloader/d/b;

    return-object v0
.end method

.method public getDownloadSetting()Lcom/ss/android/socialbase/downloader/depend/ac;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadSetting:Lcom/ss/android/socialbase/downloader/depend/ac;

    return-object v0
.end method

.method public getHeadHttpService()Lcom/ss/android/socialbase/downloader/network/h;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->headHttpService:Lcom/ss/android/socialbase/downloader/network/h;

    return-object v0
.end method

.method public getHttpService()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->httpService:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    return-object v0
.end method

.method public getIOThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->ioThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIdGenerator()Lcom/ss/android/socialbase/downloader/downloader/j;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->idGenerator:Lcom/ss/android/socialbase/downloader/downloader/j;

    return-object v0
.end method

.method public getMaxDownloadPoolSize()I
    .registers 2

    .line 270
    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->maxDownloadPoolSize:I

    return v0
.end method

.method public getMixApkDownloadExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->mixApkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getMixDefaultDownloadExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->mixDefaultDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getMixFrequentDownloadExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->mixFrequentDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getMonitorConfig()Lcom/ss/android/socialbase/downloader/downloader/o;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->monitorConfig:Lcom/ss/android/socialbase/downloader/downloader/o;

    return-object v0
.end method

.method public getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/ah;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->notificationClickCallback:Lcom/ss/android/socialbase/downloader/depend/ah;

    return-object v0
.end method

.method public getOkHttpDispatcherExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->okHttpDispatcherExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getWriteBufferSize()I
    .registers 2

    .line 282
    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->writeBufferSize:I

    return v0
.end method

.method public headHttpService(Lcom/ss/android/socialbase/downloader/network/h;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->headHttpService:Lcom/ss/android/socialbase/downloader/network/h;

    .line 99
    return-object p0
.end method

.method public httpService(Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->httpService:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    .line 94
    return-object p0
.end method

.method public idGenerator(Lcom/ss/android/socialbase/downloader/downloader/j;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->idGenerator:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 74
    return-object p0
.end method

.method public ioThreadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->ioThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 114
    return-object p0
.end method

.method public isDownloadInMultiProcess()Z
    .registers 2

    .line 286
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadInMultiProcess:Z

    return v0
.end method

.method public maxDownloadPoolSize(I)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 83
    iput p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->maxDownloadPoolSize:I

    .line 84
    return-object p0
.end method

.method public mixApkDownloadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->mixApkDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 129
    return-object p0
.end method

.method public mixDefaultDownloadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->mixDefaultDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 119
    return-object p0
.end method

.method public mixFrequentDownloadExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->mixFrequentDownloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 124
    return-object p0
.end method

.method public monitorConfig(Lcom/ss/android/socialbase/downloader/downloader/o;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->monitorConfig:Lcom/ss/android/socialbase/downloader/downloader/o;

    .line 154
    return-object p0
.end method

.method public needAutoRefreshUnSuccessTask(Z)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 176
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->needAutoRefreshUnSuccessTask:Z

    .line 177
    return-object p0
.end method

.method public needAutoRefreshUnSuccessTask()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->needAutoRefreshUnSuccessTask:Z

    return v0
.end method

.method public notificationClickCallback(Lcom/ss/android/socialbase/downloader/depend/ah;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->notificationClickCallback:Lcom/ss/android/socialbase/downloader/depend/ah;

    .line 185
    return-object p0
.end method

.method public okHttpDispatcherExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->okHttpDispatcherExecutor:Ljava/util/concurrent/ExecutorService;

    .line 144
    return-object p0
.end method

.method public writeBufferSize(I)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 2

    .line 63
    iput p1, p0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->writeBufferSize:I

    .line 64
    return-object p0
.end method
