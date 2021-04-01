.class Lcom/ss/android/socialbase/downloader/l/c$a;
.super Ljava/lang/Throwable;
.source "DownloadRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/l/c;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/l/c;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/l/c$a;->a:Lcom/ss/android/socialbase/downloader/l/c;

    .line 1013
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1014
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/l/c$a;->b:Ljava/lang/String;

    .line 1015
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/l/c$a;->b:Ljava/lang/String;

    return-object v0
.end method
