.class Lcom/ss/android/socialbase/downloader/b/e$2;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/b/e;)V
    .registers 2

    .line 764
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e$2;->a:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 767
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$2;->a:Lcom/ss/android/socialbase/downloader/b/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/b/e;->d(Lcom/ss/android/socialbase/downloader/b/e;)V

    .line 768
    return-void
.end method
