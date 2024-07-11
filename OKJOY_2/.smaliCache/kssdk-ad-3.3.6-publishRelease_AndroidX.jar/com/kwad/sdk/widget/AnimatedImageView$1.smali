.class Lcom/kwad/sdk/widget/AnimatedImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/widget/AnimatedImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/widget/AnimatedImageView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/widget/AnimatedImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/widget/AnimatedImageView$1;->a:Lcom/kwad/sdk/widget/AnimatedImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)V
    .registers 2

    iget-object p1, p0, Lcom/kwad/sdk/widget/AnimatedImageView$1;->a:Lcom/kwad/sdk/widget/AnimatedImageView;

    invoke-static {p1}, Lcom/kwad/sdk/widget/AnimatedImageView;->a(Lcom/kwad/sdk/widget/AnimatedImageView;)Lcom/kwad/sdk/widget/AnimatedImageView$a;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/kwad/sdk/widget/AnimatedImageView$1;->a:Lcom/kwad/sdk/widget/AnimatedImageView;

    invoke-static {p1}, Lcom/kwad/sdk/widget/AnimatedImageView;->a(Lcom/kwad/sdk/widget/AnimatedImageView;)Lcom/kwad/sdk/widget/AnimatedImageView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/kwad/sdk/widget/AnimatedImageView$a;->a()V

    :cond_11
    return-void
.end method
