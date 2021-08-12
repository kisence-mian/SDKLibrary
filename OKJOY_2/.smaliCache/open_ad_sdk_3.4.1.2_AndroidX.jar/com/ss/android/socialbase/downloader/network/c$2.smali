.class Lcom/ss/android/socialbase/downloader/network/c$2;
.super Ljava/lang/Object;
.source "DownloadDnsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/network/c;->b(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/network/c$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/socialbase/downloader/network/c$b;

.field final synthetic d:Lcom/ss/android/socialbase/downloader/network/c;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/network/c;Lcom/ss/android/socialbase/downloader/network/c$a;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$b;)V
    .registers 5

    .line 83
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/c$2;->d:Lcom/ss/android/socialbase/downloader/network/c;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/c$2;->a:Lcom/ss/android/socialbase/downloader/network/c$a;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/network/c$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/network/c$2;->c:Lcom/ss/android/socialbase/downloader/network/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/c$2;->a:Lcom/ss/android/socialbase/downloader/network/c$a;

    if-eqz v0, :cond_11

    .line 87
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/c$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/c$2;->c:Lcom/ss/android/socialbase/downloader/network/c$b;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_e

    :cond_c
    iget-object v2, v2, Lcom/ss/android/socialbase/downloader/network/c$b;->a:Ljava/util/List;

    :goto_e
    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/network/c$a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 89
    :cond_11
    return-void
.end method
