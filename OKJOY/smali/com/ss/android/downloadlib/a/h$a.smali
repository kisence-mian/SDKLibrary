.class Lcom/ss/android/downloadlib/a/h$a;
.super Lcom/ss/android/socialbase/downloader/d/b;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ss/android/downloadlib/e/h;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/e/h;)V
    .registers 2

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/b;-><init>()V

    .line 653
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/h$a;->a:Lcom/ss/android/downloadlib/e/h;

    .line 654
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;I)V
    .registers 5

    .prologue
    .line 702
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 703
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 704
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 706
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 707
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/h$a;->a:Lcom/ss/android/downloadlib/e/h;

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/e/h;->sendMessage(Landroid/os/Message;)Z

    .line 708
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 658
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a/h$a;->a(Lcom/ss/android/socialbase/downloader/g/c;I)V

    .line 659
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 4

    .prologue
    .line 693
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a/h$a;->a(Lcom/ss/android/socialbase/downloader/g/c;I)V

    .line 694
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 668
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a/h$a;->a(Lcom/ss/android/socialbase/downloader/g/c;I)V

    .line 669
    return-void
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 673
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a/h$a;->a(Lcom/ss/android/socialbase/downloader/g/c;I)V

    .line 674
    return-void
.end method

.method public d(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 683
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a/h$a;->a(Lcom/ss/android/socialbase/downloader/g/c;I)V

    .line 684
    return-void
.end method

.method public e(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 688
    const/4 v0, -0x3

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a/h$a;->a(Lcom/ss/android/socialbase/downloader/g/c;I)V

    .line 689
    return-void
.end method

.method public f(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 698
    const/4 v0, -0x4

    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a/h$a;->a(Lcom/ss/android/socialbase/downloader/g/c;I)V

    .line 699
    return-void
.end method
