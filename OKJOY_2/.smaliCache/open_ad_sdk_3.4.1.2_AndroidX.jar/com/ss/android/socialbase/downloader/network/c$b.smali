.class Lcom/ss/android/socialbase/downloader/network/c$b;
.super Ljava/lang/Object;
.source "DownloadDnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field b:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/network/c$1;)V
    .registers 2

    .line 145
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/c$b;-><init>()V

    return-void
.end method
