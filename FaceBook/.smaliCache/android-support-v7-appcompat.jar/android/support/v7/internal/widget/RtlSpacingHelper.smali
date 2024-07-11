.class public Landroid/support/v7/internal/widget/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# static fields
.field public static final UNDEFINED:I = -0x80000000


# instance fields
.field private mEnd:I

.field private mExplicitLeft:I

.field private mExplicitRight:I

.field private mIsRelative:Z

.field private mIsRtl:Z

.field private mLeft:I

.field private mRight:I

.field private mStart:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 31
    iput v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    .line 32
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mStart:I

    .line 33
    iput v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mEnd:I

    .line 34
    iput v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 35
    iput v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 37
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 38
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .registers 2

    .line 53
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    :goto_9
    return v0
.end method

.method public getLeft()I
    .registers 2

    .line 41
    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    return v0
.end method

.method public getRight()I
    .registers 2

    .line 45
    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .line 49
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    :goto_9
    return v0
.end method

.method public setAbsolute(II)V
    .registers 4
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 71
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_b

    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 72
    :cond_b
    if-eq p2, v0, :cond_11

    iput p2, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p2, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    .line 73
    :cond_11
    return-void
.end method

.method public setDirection(Z)V
    .registers 4
    .param p1, "isRtl"    # Z

    .line 76
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    if-ne p1, v0, :cond_5

    .line 77
    return-void

    .line 79
    :cond_5
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 80
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v0, :cond_35

    .line 81
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_22

    .line 82
    iget v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mEnd:I

    if-eq v1, v0, :cond_14

    goto :goto_16

    :cond_14
    iget v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitLeft:I

    :goto_16
    iput v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 83
    iget v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mStart:I

    if-eq v1, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    iget v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitRight:I

    :goto_1f
    iput v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    goto :goto_3d

    .line 85
    :cond_22
    iget v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mStart:I

    if-eq v1, v0, :cond_27

    goto :goto_29

    :cond_27
    iget v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitLeft:I

    :goto_29
    iput v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 86
    iget v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mEnd:I

    if-eq v1, v0, :cond_30

    goto :goto_32

    :cond_30
    iget v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitRight:I

    :goto_32
    iput v1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    goto :goto_3d

    .line 89
    :cond_35
    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 90
    iget v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mExplicitRight:I

    iput v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    .line 92
    :goto_3d
    return-void
.end method

.method public setRelative(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 57
    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mStart:I

    .line 58
    iput p2, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mEnd:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 60
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mIsRtl:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_16

    .line 61
    if-eq p2, v1, :cond_11

    iput p2, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 62
    :cond_11
    if-eq p1, v1, :cond_1e

    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    goto :goto_1e

    .line 64
    :cond_16
    if-eq p1, v1, :cond_1a

    iput p1, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mLeft:I

    .line 65
    :cond_1a
    if-eq p2, v1, :cond_1e

    iput p2, p0, Landroid/support/v7/internal/widget/RtlSpacingHelper;->mRight:I

    .line 67
    :cond_1e
    :goto_1e
    return-void
.end method
