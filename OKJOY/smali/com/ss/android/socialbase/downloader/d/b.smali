.class public abstract Lcom/ss/android/socialbase/downloader/d/b;
.super Ljava/lang/Object;
.source "AbsDownloadListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/d/w;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/ss/android/socialbase/downloader/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 19
    sget-object v0, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPrepare -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_24
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 8

    .prologue
    .line 50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 51
    sget-object v1, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    const-string v2, "onFailed on %s because of : %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_26
    return-void

    .line 51
    :cond_27
    const-string v0, "unkown"

    goto :goto_1d
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 24
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 25
    sget-object v0, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onStart -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_24
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 8

    .prologue
    .line 74
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 75
    sget-object v1, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    const-string v2, "onRetry on %s because of : %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_26
    return-void

    .line 75
    :cond_27
    const-string v0, "unkown"

    goto :goto_1d
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 6

    .prologue
    .line 30
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_41

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_41

    .line 31
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 32
    sget-object v1, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onProgress -- %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_41
    return-void
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 8

    .prologue
    .line 80
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 81
    sget-object v1, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    const-string v2, "onRetryDelay on %s because of : %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_26
    return-void

    .line 81
    :cond_27
    const-string v0, "unkown"

    goto :goto_1d
.end method

.method public d(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 38
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 39
    sget-object v0, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPause -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_24
    return-void
.end method

.method public e(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 44
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 45
    sget-object v0, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSuccessed -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_24
    return-void
.end method

.method public f(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 56
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 57
    sget-object v0, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCanceled -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_24
    return-void
.end method

.method public g(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 62
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 63
    sget-object v0, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onFirstStart -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_24
    return-void
.end method

.method public h(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 68
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 69
    sget-object v0, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onFirstSuccess -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_24
    return-void
.end method

.method public i(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 85
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 86
    sget-object v0, Lcom/ss/android/socialbase/downloader/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onIntercept -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_24
    return-void
.end method
