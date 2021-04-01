.class public Lcom/ss/android/socialbase/downloader/e/b;
.super Lcom/ss/android/socialbase/downloader/e/a;
.source "DownloadFileExistException.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/e/a;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/e/b;->a:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/e/b;->a:Ljava/lang/String;

    return-object v0
.end method
