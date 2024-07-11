.class public Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/express2/VideoOption2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field a:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

.field b:Z

.field c:Z

.field d:I

.field e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;->WIFI:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    iput-object v0, p0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->a:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->c:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/qq/e/ads/nativ/express2/VideoOption2;
    .registers 3

    new-instance v0, Lcom/qq/e/ads/nativ/express2/VideoOption2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qq/e/ads/nativ/express2/VideoOption2;-><init>(Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;B)V

    return-object v0
.end method

.method public setAutoPlayMuted(Z)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->b:Z

    return-object p0
.end method

.method public setAutoPlayPolicy(Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->a:Lcom/qq/e/ads/nativ/express2/VideoOption2$AutoPlayPolicy;

    :cond_4
    return-object p0
.end method

.method public setDetailPageMuted(Z)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->c:Z

    return-object p0
.end method

.method public setMaxVideoDuration(I)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;
    .registers 2

    iput p1, p0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->d:I

    return-object p0
.end method

.method public setMinVideoDuration(I)Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;
    .registers 2

    iput p1, p0, Lcom/qq/e/ads/nativ/express2/VideoOption2$Builder;->e:I

    return-object p0
.end method
