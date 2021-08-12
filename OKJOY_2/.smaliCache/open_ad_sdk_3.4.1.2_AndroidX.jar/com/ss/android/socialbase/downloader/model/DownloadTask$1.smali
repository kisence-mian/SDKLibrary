.class Lcom/ss/android/socialbase/downloader/model/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setChunkCalculator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 2

    .line 804
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadTask$1;->a:Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 3

    .line 807
    const/4 p1, 0x1

    return p1
.end method
