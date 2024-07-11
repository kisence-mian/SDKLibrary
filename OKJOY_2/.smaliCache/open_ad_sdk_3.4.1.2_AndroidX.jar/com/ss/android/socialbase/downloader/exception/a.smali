.class public Lcom/ss/android/socialbase/downloader/exception/a;
.super Lcom/ss/android/socialbase/downloader/exception/BaseException;
.source "DownloadFileExistException.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/exception/a;->a:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/exception/a;->a:Ljava/lang/String;

    return-object v0
.end method
