.class public Lcom/kwai/filedownloader/services/FileDownloadServiceProxy$SeparateProcessServiceProxy;
.super Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicImpl;
    value = Lcom/kwad/sdk/api/proxy/app/FileDownloadService$SeparateProcessService;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeparateProcessServiceProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;-><init>()V

    return-void
.end method

.method private getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "ksad"

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_15

    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2d

    move-object v0, p1

    goto :goto_31

    :catch_2d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    :goto_31
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/app/Service;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2f

    :try_start_6
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy$SeparateProcessServiceProxy;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_2f

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView has already been initialized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filedownloader"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    invoke-super {p0, p1}, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;->onCreate(Landroid/app/Service;)V

    return-void
.end method
