.class public Lcom/iab/omid/library/mintegral/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)F
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p2, :cond_6

    if-gtz p1, :cond_8

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0

    :cond_8
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    cmpl-float v2, v1, v0

    if-gtz v2, :cond_7

    move v0, v1

    goto :goto_7
.end method
