.class public final Lcom/qq/e/ads/cfg/VideoOption$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/cfg/VideoOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->a:Z

    iput v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->b:I

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->c:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->d:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->f:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/qq/e/ads/cfg/VideoOption$Builder;)I
    .registers 1

    iget p0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->f:Z

    return p0
.end method

.method static synthetic g(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->g:Z

    return p0
.end method


# virtual methods
.method public final build()Lcom/qq/e/ads/cfg/VideoOption;
    .registers 3

    new-instance v0, Lcom/qq/e/ads/cfg/VideoOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qq/e/ads/cfg/VideoOption;-><init>(Lcom/qq/e/ads/cfg/VideoOption$Builder;B)V

    return-object v0
.end method

.method public final setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->a:Z

    return-object p0
.end method

.method public final setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;
    .registers 4

    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_19

    :cond_5
    const/4 p1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid value of autoPlayPolicy, can only be [0, 2], reset to : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_19
    iput p1, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->b:I

    return-object p0
.end method

.method public final setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->g:Z

    return-object p0
.end method

.method public final setEnableDetailPage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->e:Z

    return-object p0
.end method

.method public final setEnableUserControl(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->f:Z

    return-object p0
.end method

.method public final setNeedCoverImage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->d:Z

    return-object p0
.end method

.method public final setNeedProgressBar(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/qq/e/ads/cfg/VideoOption$Builder;->c:Z

    return-object p0
.end method
