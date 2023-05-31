.class final Lcom/ss/android/socialbase/downloader/i/a/a$a;
.super Ljava/lang/Object;
.source "DownloadConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/i/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ss/android/socialbase/downloader/i/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 197
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/i/a/a;-><init>(Lcom/ss/android/socialbase/downloader/i/a/a$1;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/a/a$a;->a:Lcom/ss/android/socialbase/downloader/i/a/a;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/socialbase/downloader/i/a/a;
    .registers 1

    .prologue
    .line 196
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/a/a$a;->a:Lcom/ss/android/socialbase/downloader/i/a/a;

    return-object v0
.end method
