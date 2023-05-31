.class Lcom/ss/android/socialbase/downloader/c/e$10;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/g/c;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/c/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/c/e;Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 770
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/c/e$10;->b:Lcom/ss/android/socialbase/downloader/c/e;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/c/e$10;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/c/e$10;->b:Lcom/ss/android/socialbase/downloader/c/e;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/c/e$10;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/e;->a(Lcom/ss/android/socialbase/downloader/c/e;Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 774
    return-void
.end method
