.class public Lcom/kwad/sdk/widget/AnimatedImageView;
.super Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/widget/AnimatedImageView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

.field private c:Lcom/kwad/sdk/widget/AnimatedImageView$a;

.field private d:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->a:I

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/widget/AnimatedImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->a:I

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/widget/AnimatedImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/widget/AnimatedImageView;)Lcom/kwad/sdk/widget/AnimatedImageView$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->c:Lcom/kwad/sdk/widget/AnimatedImageView$a;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    new-instance p2, Lcom/kwad/sdk/widget/AnimatedImageView$1;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/widget/AnimatedImageView$1;-><init>(Lcom/kwad/sdk/widget/AnimatedImageView;)V

    iput-object p2, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->d:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$b;

    invoke-static {p1}, Lcom/kwad/sdk/glide/a/a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->b:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->start()V

    :cond_7
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->b:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->stop()V

    :cond_7
    return-void
.end method

.method public setOnFinishedListener(Lcom/kwad/sdk/widget/AnimatedImageView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->c:Lcom/kwad/sdk/widget/AnimatedImageView$a;

    return-void
.end method

.method public setWebpStream(Lcom/kwad/sdk/glide/framesequence/FrameSequence;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;-><init>(Lcom/kwad/sdk/glide/framesequence/FrameSequence;)V

    iget p1, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->a:I

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->setLoopCount(I)V

    iget-object p1, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->d:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$b;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->setOnFinishedListener(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$b;)V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/widget/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->b:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->destroy()V

    :cond_1c
    iput-object v0, p0, Lcom/kwad/sdk/widget/AnimatedImageView;->b:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_23
    return-void
.end method
