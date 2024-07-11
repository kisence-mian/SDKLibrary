.class public Lcom/ss/android/socialbase/appdownloader/RetryJobSchedulerService;
.super Landroid/app/job/JobService;
.source "RetryJobSchedulerService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JZI)V
    .registers 16

    .line 67
    if-eqz p0, :cond_c6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_a

    goto/16 :goto_c6

    .line 70
    :cond_a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v2

    .line 71
    if-nez v2, :cond_11

    .line 72
    return-void

    .line 75
    :cond_11
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v3, :cond_2a

    .line 76
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v3

    .line 77
    if-eqz v3, :cond_2a

    .line 78
    invoke-interface {v3, p0, v5, v4}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V

    .line 82
    :cond_2a
    :try_start_2a
    const-string v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_c1

    .line 83
    if-nez v3, :cond_35

    .line 84
    return-void

    .line 87
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    .line 90
    goto :goto_41

    .line 88
    :catchall_3d
    move-exception v6

    .line 89
    :try_start_3e
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    :goto_41
    nop

    .line 92
    if-eqz p4, :cond_4e

    if-eqz p3, :cond_49

    if-eq p4, v5, :cond_49

    goto :goto_4e

    .line 98
    :cond_49
    const-wide/32 v6, 0xea60

    add-long/2addr v6, p1

    goto :goto_51

    .line 96
    :cond_4e
    :goto_4e
    const-wide/16 p1, 0x3e8

    move-wide v6, v0

    .line 101
    :goto_51
    new-instance p4, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v8

    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v10, Lcom/ss/android/socialbase/appdownloader/RetryJobSchedulerService;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p4, v8, v9}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 103
    invoke-virtual {p4, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    if-eqz p3, :cond_70

    goto :goto_71

    :cond_70
    const/4 v5, 0x1

    .line 104
    :goto_71
    invoke-virtual {p1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 105
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 107
    cmp-long p2, v6, v0

    if-lez p2, :cond_85

    .line 108
    invoke-virtual {p1, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 110
    :cond_85
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    .line 111
    if-lez p1, :cond_a6

    .line 112
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 113
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object p2

    .line 114
    if-eqz p2, :cond_a6

    .line 115
    invoke-interface {p2, p0, v4, v4}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;II)V

    .line 119
    :cond_a6
    if-gtz p1, :cond_c0

    .line 120
    const-string p0, "RetrySchedulerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "schedule err errCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_3e .. :try_end_c0} :catchall_c1

    .line 124
    :cond_c0
    goto :goto_c5

    .line 122
    :catchall_c1
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    :goto_c5
    return-void

    .line 68
    :cond_c6
    :goto_c6
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .line 37
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 38
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/app/job/JobService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    .line 54
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->j()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 55
    const/4 p1, 0x2

    return p1

    .line 57
    :cond_c
    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 43
    if-eqz p1, :cond_25

    .line 44
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartJob, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetrySchedulerService"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/r;->a(I)V

    .line 48
    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    .line 62
    const/4 p1, 0x0

    return p1
.end method
