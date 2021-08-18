.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplGingerbread;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplGingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortAnimation(Ljava/lang/Object;)V
    .registers 2
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 216
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->abortAnimation(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 186
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->computeScrollOffset(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 161
    invoke-static {p1, p2}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fling(Ljava/lang/Object;IIIIIIII)V
    .registers 10
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "velX"    # I
    .param p5, "velY"    # I
    .param p6, "minX"    # I
    .param p7, "maxX"    # I
    .param p8, "minY"    # I
    .param p9, "maxY"    # I

    .line 203
    invoke-static/range {p1 .. p9}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->fling(Ljava/lang/Object;IIIIIIII)V

    .line 205
    return-void
.end method

.method public fling(Ljava/lang/Object;IIIIIIIIII)V
    .registers 12
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "velX"    # I
    .param p5, "velY"    # I
    .param p6, "minX"    # I
    .param p7, "maxX"    # I
    .param p8, "minY"    # I
    .param p9, "maxY"    # I
    .param p10, "overX"    # I
    .param p11, "overY"    # I

    .line 210
    invoke-static/range {p1 .. p11}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->fling(Ljava/lang/Object;IIIIIIIIII)V

    .line 212
    return-void
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 171
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getCurrX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 176
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getCurrY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 237
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getFinalX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 242
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->getFinalY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 166
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOverScrolled(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 232
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->isOverScrolled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .registers 5
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "finalX"    # I
    .param p4, "overX"    # I

    .line 222
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->notifyHorizontalEdgeReached(Ljava/lang/Object;III)V

    .line 223
    return-void
.end method

.method public notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .registers 5
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startY"    # I
    .param p3, "finalY"    # I
    .param p4, "overY"    # I

    .line 227
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->notifyVerticalEdgeReached(Ljava/lang/Object;III)V

    .line 228
    return-void
.end method

.method public springBack(Ljava/lang/Object;IIIIII)Z
    .registers 9
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "minX"    # I
    .param p5, "maxX"    # I
    .param p6, "minY"    # I
    .param p7, "maxY"    # I

    .line 248
    invoke-static/range {p1 .. p7}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->springBack(Ljava/lang/Object;IIIIII)Z

    move-result v0

    return v0
.end method

.method public startScroll(Ljava/lang/Object;IIII)V
    .registers 6
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 191
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->startScroll(Ljava/lang/Object;IIII)V

    .line 192
    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .registers 7
    .param p1, "scroller"    # Ljava/lang/Object;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "duration"    # I

    .line 197
    invoke-static/range {p1 .. p6}, Landroid/support/v4/widget/ScrollerCompatGingerbread;->startScroll(Ljava/lang/Object;IIIII)V

    .line 198
    return-void
.end method
