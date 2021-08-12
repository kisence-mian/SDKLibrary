.class public Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;
    }
.end annotation


# static fields
.field public static viewHeight:I

.field public static viewWidth:I


# instance fields
.field public baseAdapter:Lokjoy/r/a;

.field public imageResName:Ljava/lang/String;

.field public imageView:Landroid/widget/ImageView;

.field public mActivity:Landroid/app/Activity;

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public onListener:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;

.field public windowSafeAreaRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 6

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lokjoy/a/g;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v1, v2}, Lokjoy/a/g;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->mActivity:Landroid/app/Activity;

    const-string v3, "joy_age_eight_plus"

    invoke-static {v2, v3}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->imageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$1;

    invoke-direct {v3, p0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$1;-><init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sput v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->viewWidth:I

    sput v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->viewHeight:I

    iget-object v1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_60

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x228

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-interface {p1, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_60
    iget-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lokjoy/r/a;->a(Landroid/app/Activity;)Lokjoy/r/a;

    move-result-object p1

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->baseAdapter:Lokjoy/r/a;

    invoke-virtual {p1}, Lokjoy/r/a;->b()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->windowSafeAreaRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic access$000(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;)Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;
    .registers 1

    iget-object p0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->onListener:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;

    return-object p0
.end method


# virtual methods
.method public getWindowSafeAreaRect()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->windowSafeAreaRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getmLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->baseAdapter:Lokjoy/r/a;

    invoke-virtual {p1}, Lokjoy/r/a;->b()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->windowSafeAreaRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setImageResName(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->imageResName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_13
    return-void
.end method

.method public setOnListener(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->onListener:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;

    return-void
.end method

.method public setmLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    return-void
.end method
