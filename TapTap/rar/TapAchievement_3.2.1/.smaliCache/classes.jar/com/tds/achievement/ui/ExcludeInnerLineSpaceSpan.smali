.class public Lcom/tds/achievement/ui/ExcludeInnerLineSpaceSpan;
.super Ljava/lang/Object;
.source "ExcludeInnerLineSpaceSpan.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final mHeight:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "height"    # I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/tds/achievement/ui/ExcludeInnerLineSpaceSpan;->mHeight:I

    .line 13
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "spanstartv"    # I
    .param p5, "lineHeight"    # I
    .param p6, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 20
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    .line 21
    .local v0, "originHeight":I
    if-gtz v0, :cond_8

    .line 22
    return-void

    .line 25
    :cond_8
    iget v1, p0, Lcom/tds/achievement/ui/ExcludeInnerLineSpaceSpan;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 27
    .local v1, "ratio":F
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 29
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p0, Lcom/tds/achievement/ui/ExcludeInnerLineSpaceSpan;->mHeight:I

    sub-int/2addr v2, v3

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 30
    return-void
.end method
