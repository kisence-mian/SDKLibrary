.class Lcom/ss/android/socialbase/downloader/network/c$c;
.super Ljava/lang/Object;
.source "DownloadDnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/ss/android/socialbase/downloader/network/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/ss/android/socialbase/downloader/network/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/network/c;-><init>(Lcom/ss/android/socialbase/downloader/network/c$1;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/c$c;->a:Lcom/ss/android/socialbase/downloader/network/c;

    return-void
.end method

.method static synthetic a()Lcom/ss/android/socialbase/downloader/network/c;
    .registers 1

    .line 27
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/c$c;->a:Lcom/ss/android/socialbase/downloader/network/c;

    return-object v0
.end method
