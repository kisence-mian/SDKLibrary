.class Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;
.super Ljava/lang/Object;
.source "DownloadNotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/NotificationManager;

.field final synthetic b:I

.field final synthetic c:Landroid/app/Notification;

.field final synthetic d:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 5

    .prologue
    .line 255
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;->d:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;->a:Landroid/app/NotificationManager;

    iput p3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;->b:I

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;->c:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;->d:Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;->a:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;->b:I

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService$2;->c:Landroid/app/Notification;

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;->a(Lcom/ss/android/socialbase/downloader/notification/DownloadNotificationService;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 259
    return-void
.end method
