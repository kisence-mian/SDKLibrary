.class public Lcom/kwai/filedownloader/services/FileDownloadServiceProxy$SharedMainProcessServiceProxy;
.super Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicImpl;
    value = Lcom/kwad/sdk/api/proxy/app/FileDownloadService$SharedMainProcessService;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedMainProcessServiceProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Service;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwai/filedownloader/services/FileDownloadServiceProxy;->onCreate(Landroid/app/Service;)V

    return-void
.end method
