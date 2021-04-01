.class public Lcom/ss/android/socialbase/downloader/impls/RetryJobSchedulerService;
.super Landroid/app/job/JobService;
.source "RetryJobSchedulerService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static a(Lcom/ss/android/socialbase/downloader/g/c;JZI)V
    .registers 16

    .prologue
    const/4 v2, 0x2

    const-wide/16 v6, 0x0

    .line 52
    if-eqz p0, :cond_9

    cmp-long v0, p1, v6

    if-gtz v0, :cond_a

    .line 95
    :cond_9
    :goto_9
    return-void

    .line 55
    :cond_a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_9

    .line 60
    :try_start_10
    const-string v0, "jobscheduler"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_18} :catch_81

    .line 61
    if-eqz v0, :cond_9

    .line 65
    :try_start_1a
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_21} :catch_86

    .line 70
    :goto_21
    if-eqz p4, :cond_27

    if-eqz p3, :cond_8b

    if-eq p4, v2, :cond_8b

    .line 74
    :cond_27
    const-wide/16 p1, 0x3e8

    move-wide v4, v6

    .line 79
    :goto_2a
    :try_start_2a
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v8

    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v10, Lcom/ss/android/socialbase/downloader/impls/RetryJobSchedulerService;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v8, v9}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 81
    invoke-virtual {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    if-eqz p3, :cond_90

    move v1, v2

    .line 82
    :goto_49
    invoke-virtual {v3, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 85
    cmp-long v2, v4, v6

    if-lez v2, :cond_5e

    .line 86
    invoke-virtual {v1, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 88
    :cond_5e
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 89
    if-gtz v0, :cond_9

    .line 90
    const-string v1, "RetrySchedulerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule err errCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_80} :catch_81

    goto :goto_9

    .line 92
    :catch_81
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 66
    :catch_86
    move-exception v1

    .line 67
    :try_start_87
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8a} :catch_81

    goto :goto_21

    .line 76
    :cond_8b
    const-wide/32 v4, 0xea60

    add-long/2addr v4, p1

    goto :goto_2a

    .line 81
    :cond_90
    const/4 v1, 0x1

    goto :goto_49
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 32
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    .prologue
    .line 37
    if-eqz p1, :cond_25

    .line 38
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    .line 39
    const-string v1, "RetrySchedulerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartJob, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(I)V

    .line 42
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
