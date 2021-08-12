.class public Lcom/ss/android/socialbase/downloader/model/d;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/ss/android/socialbase/downloader/network/g;

.field public final c:I

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->a:Ljava/lang/String;

    .line 29
    invoke-interface {p2}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    .line 30
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 34
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->c(I)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 4

    .line 38
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->c:I

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v2, "Accept-Ranges"

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Etag"

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Content-Range"

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "last-modified"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 56
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Last-Modified"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_16
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Cache-Control"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->b(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .registers 5

    .line 66
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    .line 67
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Lcom/ss/android/socialbase/downloader/network/g;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:J

    .line 69
    :cond_10
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->d:J

    return-wide v0
.end method

.method public i()Z
    .registers 3

    .line 73
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 74
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Lcom/ss/android/socialbase/downloader/network/g;)Z

    move-result v0

    return v0

    .line 76
    :cond_f
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/i/e;->b(J)Z

    move-result v0

    return v0
.end method

.method public j()J
    .registers 5

    .line 81
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_27

    .line 82
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->i()Z

    move-result v0

    if-nez v0, :cond_23

    .line 83
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->b:Lcom/ss/android/socialbase/downloader/network/g;

    const-string v1, "Content-Range"

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 86
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->e:J

    .line 88
    :cond_22
    goto :goto_27

    .line 89
    :cond_23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->e:J

    .line 92
    :cond_27
    :goto_27
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/d;->e:J

    return-wide v0
.end method

.method public k()J
    .registers 3

    .line 96
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->h(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
