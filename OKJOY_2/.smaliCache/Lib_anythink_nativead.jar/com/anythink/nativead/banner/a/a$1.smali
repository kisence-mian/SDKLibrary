.class final Lcom/anythink/nativead/banner/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/banner/a/a;->a(Landroid/view/View;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/anythink/nativead/views/RoundImageView;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Landroid/widget/TextView;

.field final synthetic i:Landroid/widget/TextView;

.field final synthetic j:Landroid/widget/TextView;

.field final synthetic k:Lcom/anythink/nativead/banner/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/banner/a/a;Landroid/view/View;IILcom/anythink/nativead/views/RoundImageView;IIILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 12

    .line 292
    iput-object p1, p0, Lcom/anythink/nativead/banner/a/a$1;->k:Lcom/anythink/nativead/banner/a/a;

    iput-object p2, p0, Lcom/anythink/nativead/banner/a/a$1;->a:Landroid/view/View;

    iput p3, p0, Lcom/anythink/nativead/banner/a/a$1;->b:I

    iput p4, p0, Lcom/anythink/nativead/banner/a/a$1;->c:I

    iput-object p5, p0, Lcom/anythink/nativead/banner/a/a$1;->d:Lcom/anythink/nativead/views/RoundImageView;

    iput p6, p0, Lcom/anythink/nativead/banner/a/a$1;->e:I

    iput p7, p0, Lcom/anythink/nativead/banner/a/a$1;->f:I

    iput p8, p0, Lcom/anythink/nativead/banner/a/a$1;->g:I

    iput-object p9, p0, Lcom/anythink/nativead/banner/a/a$1;->h:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/anythink/nativead/banner/a/a$1;->i:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/anythink/nativead/banner/a/a$1;->j:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 7

    .line 295
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 296
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 298
    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/anythink/nativead/banner/a/a$1;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 299
    iget v2, p0, Lcom/anythink/nativead/banner/a/a$1;->c:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    .line 300
    iget-object v3, p0, Lcom/anythink/nativead/banner/a/a$1;->d:Lcom/anythink/nativead/views/RoundImageView;

    invoke-virtual {v3}, Lcom/anythink/nativead/views/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 301
    iget-object v3, p0, Lcom/anythink/nativead/banner/a/a$1;->d:Lcom/anythink/nativead/views/RoundImageView;

    invoke-virtual {v3}, Lcom/anythink/nativead/views/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 303
    iget v2, p0, Lcom/anythink/nativead/banner/a/a$1;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    .line 304
    iget v3, p0, Lcom/anythink/nativead/banner/a/a$1;->f:I

    int-to-double v3, v3

    mul-double/2addr v3, v0

    double-to-int v3, v3

    .line 305
    iget v4, p0, Lcom/anythink/nativead/banner/a/a$1;->g:I

    int-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-int v0, v4

    .line 307
    iget-object v1, p0, Lcom/anythink/nativead/banner/a/a$1;->h:Landroid/widget/TextView;

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 308
    iget-object v1, p0, Lcom/anythink/nativead/banner/a/a$1;->i:Landroid/widget/TextView;

    int-to-float v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 309
    iget-object v1, p0, Lcom/anythink/nativead/banner/a/a$1;->j:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 311
    return-void
.end method
