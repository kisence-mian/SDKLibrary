.class Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$1;->a:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method
