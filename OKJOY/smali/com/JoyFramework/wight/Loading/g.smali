.class Lcom/JoyFramework/wight/Loading/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/Loading/OkGameLoadingView$b;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)V
    .registers 3

    .prologue
    .line 582
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iput p2, p0, Lcom/JoyFramework/wight/Loading/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/animation/ValueAnimator;)V
    .registers 8

    .prologue
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    .line 585
    iget v0, p0, Lcom/JoyFramework/wight/Loading/g;->a:I

    packed-switch v0, :pswitch_data_92

    .line 602
    :goto_7
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->invalidate()V

    .line 603
    return-void

    .line 587
    :pswitch_d
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 588
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 589
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->g(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    goto :goto_7

    .line 592
    :pswitch_39
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 593
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 594
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    goto :goto_7

    .line 597
    :pswitch_65
    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 598
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->j(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 599
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iget-object v1, p0, Lcom/JoyFramework/wight/Loading/g;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->j(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v1

    int-to-double v2, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    goto/16 :goto_7

    .line 585
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_d
        :pswitch_39
        :pswitch_65
    .end packed-switch
.end method
