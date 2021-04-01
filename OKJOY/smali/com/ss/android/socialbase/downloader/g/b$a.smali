.class public Lcom/ss/android/socialbase/downloader/g/b$a;
.super Ljava/lang/Object;
.source "DownloadChunk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:J

.field private h:Lcom/ss/android/socialbase/downloader/g/b;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->a:I

    .line 471
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/g/b$a;)I
    .registers 2

    .prologue
    .line 459
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->a:I

    return v0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/g/b$a;)J
    .registers 3

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/g/b$a;)J
    .registers 3

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/g/b$a;)J
    .registers 3

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/ss/android/socialbase/downloader/g/b$a;)J
    .registers 3

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/ss/android/socialbase/downloader/g/b$a;)I
    .registers 2

    .prologue
    .line 459
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->f:I

    return v0
.end method

.method static synthetic g(Lcom/ss/android/socialbase/downloader/g/b$a;)J
    .registers 3

    .prologue
    .line 459
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->g:J

    return-wide v0
.end method

.method static synthetic h(Lcom/ss/android/socialbase/downloader/g/b$a;)Lcom/ss/android/socialbase/downloader/g/b;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->h:Lcom/ss/android/socialbase/downloader/g/b;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/ss/android/socialbase/downloader/g/b$a;
    .registers 2

    .prologue
    .line 499
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->f:I

    .line 500
    return-object p0
.end method

.method public a(J)Lcom/ss/android/socialbase/downloader/g/b$a;
    .registers 4

    .prologue
    .line 479
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->b:J

    .line 480
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/b;)Lcom/ss/android/socialbase/downloader/g/b$a;
    .registers 2

    .prologue
    .line 504
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->h:Lcom/ss/android/socialbase/downloader/g/b;

    .line 505
    return-object p0
.end method

.method public a()Lcom/ss/android/socialbase/downloader/g/b;
    .registers 3

    .prologue
    .line 514
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/downloader/g/b;-><init>(Lcom/ss/android/socialbase/downloader/g/b$a;Lcom/ss/android/socialbase/downloader/g/b$1;)V

    return-object v0
.end method

.method public b(J)Lcom/ss/android/socialbase/downloader/g/b$a;
    .registers 4

    .prologue
    .line 484
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->c:J

    .line 485
    return-object p0
.end method

.method public c(J)Lcom/ss/android/socialbase/downloader/g/b$a;
    .registers 4

    .prologue
    .line 489
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->d:J

    .line 490
    return-object p0
.end method

.method public d(J)Lcom/ss/android/socialbase/downloader/g/b$a;
    .registers 4

    .prologue
    .line 494
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->e:J

    .line 495
    return-object p0
.end method

.method public e(J)Lcom/ss/android/socialbase/downloader/g/b$a;
    .registers 4

    .prologue
    .line 509
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/g/b$a;->g:J

    .line 510
    return-object p0
.end method
