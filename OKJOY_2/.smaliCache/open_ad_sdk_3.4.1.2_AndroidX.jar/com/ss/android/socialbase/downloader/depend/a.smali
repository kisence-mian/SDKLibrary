.class public abstract Lcom/ss/android/socialbase/downloader/depend/a;
.super Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;
.source "AbsDownloadExtListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/s;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/ss/android/socialbase/downloader/depend/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/depend/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/AbsDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 5

    .line 16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 17
    sget-object v0, Lcom/ss/android/socialbase/downloader/depend/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onWaitingDownloadCompleteHandler -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_24
    return-void
.end method
