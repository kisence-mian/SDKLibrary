.class Lcom/ss/android/socialbase/appdownloader/d$2;
.super Ljava/lang/Object;
.source "AppDownloader.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/g;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/g/d;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/ss/android/socialbase/appdownloader/d;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/d;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/g/d;IZ)V
    .registers 6

    .prologue
    .line 561
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->e:Lcom/ss/android/socialbase/appdownloader/d;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->b:Lcom/ss/android/socialbase/downloader/g/d;

    iput p4, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->c:I

    iput-boolean p5, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 564
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification permission granted, start download :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->e:Lcom/ss/android/socialbase/appdownloader/d;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->b:Lcom/ss/android/socialbase/downloader/g/d;

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->c:I

    iget-boolean v3, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/d;Lcom/ss/android/socialbase/downloader/g/d;IZ)V

    .line 566
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 570
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification permission denied, start download :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->e:Lcom/ss/android/socialbase/appdownloader/d;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->b:Lcom/ss/android/socialbase/downloader/g/d;

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->c:I

    iget-boolean v3, p0, Lcom/ss/android/socialbase/appdownloader/d$2;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/d;Lcom/ss/android/socialbase/downloader/g/d;IZ)V

    .line 572
    return-void
.end method
