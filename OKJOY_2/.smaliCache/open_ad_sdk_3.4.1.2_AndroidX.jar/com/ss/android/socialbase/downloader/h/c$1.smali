.class Lcom/ss/android/socialbase/downloader/h/c$1;
.super Lcom/ss/android/socialbase/downloader/depend/b;
.source "DownloadRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/exception/BaseException;J)Lcom/ss/android/socialbase/downloader/exception/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/h/c;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/h/c;)V
    .registers 2

    .line 1756
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/h/c$1;->a:Lcom/ss/android/socialbase/downloader/h/c;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1759
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/b;->a(Ljava/util/List;)V

    .line 1760
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/c$1;->a:Lcom/ss/android/socialbase/downloader/h/c;

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/h/c;->a(Lcom/ss/android/socialbase/downloader/h/c;Ljava/util/List;)V

    .line 1761
    return-void
.end method
