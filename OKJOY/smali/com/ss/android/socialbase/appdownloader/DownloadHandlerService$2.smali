.class Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;
.super Ljava/lang/Object;
.source "DownloadHandlerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/c;

.field final synthetic b:Lcom/ss/android/socialbase/appdownloader/c/d;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/d/z;

.field final synthetic d:Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/downloader/d/z;)V
    .registers 5

    .prologue
    .line 170
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->d:Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->a:Lcom/ss/android/socialbase/downloader/g/c;

    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->b:Lcom/ss/android/socialbase/appdownloader/c/d;

    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->c:Lcom/ss/android/socialbase/downloader/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 174
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_5e

    move-result v1

    if-eqz v1, :cond_58

    .line 177
    :try_start_17
    const-string v4, ""

    .line 178
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_33

    .line 180
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_33

    .line 183
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 185
    :cond_33
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->b:Lcom/ss/android/socialbase/appdownloader/c/d;

    if-eqz v0, :cond_4a

    .line 186
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->b:Lcom/ss/android/socialbase/appdownloader/c/d;

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    const/4 v3, 0x3

    const/4 v5, -0x3

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v6

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(IILjava/lang/String;IJ)V

    .line 188
    :cond_4a
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->c:Lcom/ss/android/socialbase/downloader/d/z;

    if-eqz v0, :cond_58

    .line 189
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->c:Lcom/ss/android/socialbase/downloader/d/z;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$2;->a:Lcom/ss/android/socialbase/downloader/g/c;

    const-string v3, ""

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/ss/android/socialbase/downloader/d/z;->a(ILcom/ss/android/socialbase/downloader/g/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_58} :catch_59

    .line 197
    :cond_58
    :goto_58
    return-void

    .line 190
    :catch_59
    move-exception v0

    .line 191
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_58

    .line 194
    :catch_5e
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_58
.end method
