.class public Lcom/ss/android/downloadlib/d/b;
.super Ljava/lang/Object;
.source "ApkUpdateManager.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/m;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 62
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 63
    nop

    .line 64
    if-lez v1, :cond_18

    .line 65
    const/4 p1, 0x0

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    .line 67
    :cond_18
    nop

    .line 69
    :goto_19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    new-instance p2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->j()Lcom/ss/android/a/a/a/l;

    move-result-object v0

    .line 29
    if-eqz p1, :cond_3c

    if-eqz v0, :cond_3c

    .line 30
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-direct {p0, v1, v2}, Lcom/ss/android/downloadlib/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 34
    nop

    .line 35
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v4

    .line 36
    const/4 v5, 0x0

    if-eqz v4, :cond_29

    .line 37
    invoke-virtual {v4}, Lcom/ss/android/downloadad/a/b/b;->g()Lorg/json/JSONObject;

    move-result-object v4

    .line 38
    invoke-static {v4}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_2a

    .line 36
    :cond_29
    move-object v4, v5

    .line 40
    :goto_2a
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ss/android/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/json/JSONObject;)V

    .line 41
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setMimeType(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setName(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setMd5(Ljava/lang/String;)V

    .line 45
    :cond_3c
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3

    .line 49
    if-eqz p1, :cond_13

    .line 50
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/a/a/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 53
    :cond_13
    const/4 p1, 0x0

    return p1
.end method
