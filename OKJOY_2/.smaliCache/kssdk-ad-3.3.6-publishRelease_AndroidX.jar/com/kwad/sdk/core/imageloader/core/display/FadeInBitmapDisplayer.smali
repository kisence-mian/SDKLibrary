.class public Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;


# instance fields
.field private final animateFromDisk:Z

.field private final animateFromMemory:Z

.field private final animateFromNetwork:Z

.field private final durationMillis:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;-><init>(IZZZ)V

    return-void
.end method

.method public constructor <init>(IZZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;->durationMillis:I

    iput-boolean p2, p0, Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;->animateFromNetwork:Z

    iput-boolean p3, p0, Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;->animateFromDisk:Z

    iput-boolean p4, p0, Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;->animateFromMemory:Z

    return-void
.end method

.method public static animate(Landroid/view/View;I)V
    .registers 5

    if-eqz p0, :cond_19

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public display(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V
    .registers 4

    iget-object p1, p1, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->setImageBitmap(Landroid/graphics/Bitmap;)Z

    iget-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;->animateFromNetwork:Z

    if-eqz p1, :cond_d

    sget-object p1, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->NETWORK:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    if-eq p3, p1, :cond_1d

    :cond_d
    iget-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;->animateFromDisk:Z

    if-eqz p1, :cond_15

    sget-object p1, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    if-eq p3, p1, :cond_1d

    :cond_15
    iget-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;->animateFromMemory:Z

    if-eqz p1, :cond_26

    sget-object p1, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    if-ne p3, p1, :cond_26

    :cond_1d
    invoke-interface {p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;->durationMillis:I

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/imageloader/core/display/FadeInBitmapDisplayer;->animate(Landroid/view/View;I)V

    :cond_26
    return-void
.end method
