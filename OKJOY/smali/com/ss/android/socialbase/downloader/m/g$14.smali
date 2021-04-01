.class final Lcom/ss/android/socialbase/downloader/m/g$14;
.super Lcom/ss/android/socialbase/downloader/d/r$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/t;)Lcom/ss/android/socialbase/downloader/d/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/d/t;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/d/t;)V
    .registers 2

    .prologue
    .line 699
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/m/g$14;->a:Lcom/ss/android/socialbase/downloader/d/t;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$14;->a:Lcom/ss/android/socialbase/downloader/d/t;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/d/t;->a(Ljava/util/List;)V

    .line 704
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/m/g$14;->a:Lcom/ss/android/socialbase/downloader/d/t;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/t;->a()Z

    move-result v0

    return v0
.end method
