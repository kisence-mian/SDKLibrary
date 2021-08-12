.class Lcom/ss/android/socialbase/appdownloader/d$2;
.super Ljava/lang/Object;
.source "AppDownloader.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/f;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/d;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/d;)V
    .registers 2

    .line 501
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->a:Lcom/ss/android/socialbase/appdownloader/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .registers 5

    .line 504
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->a:Lcom/ss/android/socialbase/appdownloader/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/d;)Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 505
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->a:Lcom/ss/android/socialbase/appdownloader/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/d;)Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 506
    :cond_11
    return-void
.end method
