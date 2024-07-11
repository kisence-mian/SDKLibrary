.class Lcom/ss/android/socialbase/downloader/downloader/d$1;
.super Ljava/lang/Object;
.source "DownloadResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/d;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/d;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d$1;->a:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d$1;->a:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/d;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/network/i;->d()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 172
    goto :goto_b

    .line 170
    :catchall_a
    move-exception v0

    .line 173
    :goto_b
    return-void
.end method
