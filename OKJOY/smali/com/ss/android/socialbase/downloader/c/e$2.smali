.class Lcom/ss/android/socialbase/downloader/c/e$2;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/c/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/e;)V
    .registers 2

    .prologue
    .line 858
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/e$2;->a:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$2;->a:Lcom/ss/android/socialbase/downloader/c/e;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/e;->d(Lcom/ss/android/socialbase/downloader/c/e;)V

    .line 862
    return-void
.end method
