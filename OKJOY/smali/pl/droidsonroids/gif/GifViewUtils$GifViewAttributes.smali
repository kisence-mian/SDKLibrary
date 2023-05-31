.class Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;
.super Ljava/lang/Object;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifViewAttributes"
.end annotation


# instance fields
.field freezesAnimation:Z

.field final mLoopCount:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    .line 114
    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lpl/droidsonroids/gif/R$styleable;->GifView:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "gifViewAttributes":Landroid/content/res/TypedArray;
    sget v1, Lpl/droidsonroids/gif/R$styleable;->GifView_freezesAnimation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    .line 107
    sget v1, Lpl/droidsonroids/gif/R$styleable;->GifView_loopCount:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method
