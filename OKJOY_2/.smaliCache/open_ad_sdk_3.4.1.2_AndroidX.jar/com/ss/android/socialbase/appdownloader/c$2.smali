.class final Lcom/ss/android/socialbase/appdownloader/c$2;
.super Ljava/lang/Object;
.source "AppDownloadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field final synthetic e:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)V
    .registers 6

    .line 201
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->a:Landroid/content/Context;

    iput p2, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->b:I

    iput-boolean p3, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->c:Z

    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->e:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 204
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->a:Landroid/content/Context;

    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->b:I

    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->c:Z

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->e:Ljava/io/File;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->d:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/c$2;->c:Z

    invoke-static {v1, v2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZI)V

    .line 206
    return-void
.end method
