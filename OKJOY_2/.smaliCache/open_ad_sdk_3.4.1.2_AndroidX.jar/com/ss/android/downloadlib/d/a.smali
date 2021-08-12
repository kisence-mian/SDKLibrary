.class public Lcom/ss/android/downloadlib/d/a;
.super Ljava/lang/Object;
.source "ApkModifyNameManager.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/m;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 14

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "external"

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v8, "_id"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v5, v10

    const-string v4, "_data=? "

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 91
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 92
    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file_content_uri"

    invoke-virtual {p2, v0, p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->safePutToDBJsonData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    goto :goto_71

    .line 96
    :cond_5f
    new-array v2, v9, [Ljava/lang/String;

    aput-object v0, v2, v10

    const-string v0, "application/vnd.android.package-archive"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/ss/android/downloadlib/d/a$1;

    invoke-direct {v3, p0, p2}, Lcom/ss/android/downloadlib/d/a$1;-><init>(Lcom/ss/android/downloadlib/d/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-static {p1, v2, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 106
    :goto_71
    new-array p1, v9, [Ljava/io/Closeable;

    aput-object v1, p1, v10

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 107
    return-void
.end method

.method private c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 8

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {p1, v1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 59
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/e;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    nop

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_85

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 64
    const/4 p1, 0x1

    return p1

    .line 67
    :cond_57
    :try_start_57
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 68
    if-eqz v3, :cond_80

    .line 69
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setName(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_80} :catch_81

    .line 73
    :cond_80
    goto :goto_85

    .line 71
    :catch_81
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :cond_85
    :goto_85
    return v3
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 35
    if-eqz p1, :cond_f

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/d/a;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ss/android/downloadlib/d/a;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 38
    :cond_f
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 2

    .line 42
    if-eqz p1, :cond_f

    .line 43
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/ss/android/downloadlib/h/e;->b(Lcom/ss/android/socialbase/downloader/g/a;)Z

    move-result p1

    return p1

    .line 46
    :cond_f
    const/4 p1, 0x0

    return p1
.end method
