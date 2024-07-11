.class public Lcom/anythink/nativead/api/ATNativeImageView;
.super Landroid/widget/ImageView;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mImageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/anythink/nativead/api/ATNativeImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/nativead/api/ATNativeImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 76
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 79
    return-void

    .line 77
    :catchall_4
    move-exception p1

    .line 80
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 85
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 88
    return-void

    .line 86
    :catchall_4
    move-exception p1

    .line 89
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .registers 4

    .line 65
    invoke-virtual {p0}, Lcom/anythink/nativead/api/ATNativeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_e

    .line 67
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/anythink/nativead/api/ATNativeImageView;->setImage(Ljava/lang/String;II)V

    return-void

    .line 69
    :cond_e
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/anythink/nativead/api/ATNativeImageView;->setImage(Ljava/lang/String;II)V

    .line 71
    return-void
.end method

.method public setImage(Ljava/lang/String;II)V
    .registers 7

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    sget-object p1, Lcom/anythink/nativead/api/ATNativeImageView;->TAG:Ljava/lang/String;

    const-string p2, "load: url is empty!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 46
    :cond_e
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativeImageView;->mImageUrl:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/anythink/nativead/api/ATNativeImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/res/e;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance p1, Lcom/anythink/nativead/api/ATNativeImageView$1;

    invoke-direct {p1, p0}, Lcom/anythink/nativead/api/ATNativeImageView$1;-><init>(Lcom/anythink/nativead/api/ATNativeImageView;)V

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 60
    return-void
.end method
