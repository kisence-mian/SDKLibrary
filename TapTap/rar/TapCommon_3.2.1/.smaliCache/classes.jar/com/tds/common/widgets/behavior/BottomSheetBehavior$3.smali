.class Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;
.super Ltds/androidx/customview/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/behavior/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    .line 1215
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;"
    iput-object p1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    invoke-direct {p0}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private releasedLow(Landroid/view/View;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 1250
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;"
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    invoke-virtual {v2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 1350
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 1344
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    .line 1345
    invoke-virtual {v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-boolean v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    goto :goto_15

    :cond_11
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .line 1344
    :goto_15
    invoke-static {p2, v0, v1}, Ltds/androidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1355
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_b

    .line 1356
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    return v0

    .line 1358
    :cond_b
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1243
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-boolean v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->draggable:Z

    if-eqz v1, :cond_e

    .line 1244
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    invoke-virtual {v1, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setStateInternal(I)V

    .line 1246
    :cond_e
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 1238
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    invoke-virtual {v0, p3}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 1239
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 1257
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;"
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_2d

    .line 1258
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_12

    .line 1259
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    .line 1260
    .local v0, "top":I
    const/4 v1, 0x3

    .local v1, "targetState":I
    goto/16 :goto_153

    .line 1262
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1263
    .local v0, "currentTop":I
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    if-le v0, v1, :cond_24

    .line 1264
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1265
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .local v2, "targetState":I
    goto :goto_2b

    .line 1267
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_24
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->expandedOffset:I

    .line 1268
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .line 1270
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_2b
    goto/16 :goto_153

    .line 1271
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_2d
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-boolean v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    invoke-virtual {v1, p1, p3}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1274
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4d

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_53

    .line 1275
    :cond_4d
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->releasedLow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1276
    :cond_53
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->parentHeight:I

    .line 1277
    .restart local v0    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto/16 :goto_153

    .line 1278
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_5a
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_67

    .line 1279
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    .line 1280
    .restart local v0    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto/16 :goto_153

    .line 1281
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_67
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->expandedOffset:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1282
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v2, v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_8a

    .line 1283
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->expandedOffset:I

    .line 1284
    .restart local v0    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto/16 :goto_153

    .line 1286
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_8a
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1287
    .restart local v0    # "top":I
    const/4 v1, 0x6

    .restart local v1    # "targetState":I
    goto/16 :goto_153

    .line 1289
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_91
    cmpl-float v0, p3, v0

    if-eqz v0, :cond_db

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a2

    goto :goto_db

    .line 1323
    :cond_a2
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_af

    .line 1324
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .line 1325
    .restart local v0    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto/16 :goto_153

    .line 1328
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_af
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1329
    .local v0, "currentTop":I
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v2, v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    .line 1330
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_d2

    .line 1331
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1332
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto/16 :goto_153

    .line 1334
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_d2
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .line 1335
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto/16 :goto_153

    .line 1292
    .end local v0    # "currentTop":I
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_db
    :goto_db
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1293
    .restart local v0    # "currentTop":I
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-boolean v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_10b

    .line 1294
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v2, v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    .line 1295
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_103

    .line 1296
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContentsOffset:I

    .line 1297
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_152

    .line 1299
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_103
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .line 1300
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_152

    .line 1303
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_10b
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v1, :cond_12d

    .line 1304
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_125

    .line 1305
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->expandedOffset:I

    .line 1306
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_152

    .line 1308
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_125
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1309
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_152

    .line 1312
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_12d
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v2, v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    .line 1313
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_14b

    .line 1314
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->halfExpandedOffset:I

    .line 1315
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_152

    .line 1317
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_14b
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->collapsedOffset:I

    .line 1318
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .line 1322
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_152
    nop

    .line 1339
    :goto_153
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 1340
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 1219
    .local p0, "this":Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 1220
    return v2

    .line 1222
    :cond_9
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->touchingScrollingChild:Z

    if-eqz v0, :cond_10

    .line 1223
    return v2

    .line 1225
    :cond_10
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_39

    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->activePointerId:I

    if-ne v0, p2, :cond_39

    .line 1226
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-object v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-object v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 1227
    .local v0, "scroll":Landroid/view/View;
    :goto_2f
    if-eqz v0, :cond_39

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1229
    return v2

    .line 1232
    .end local v0    # "scroll":Landroid/view/View;
    :cond_39
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-object v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$3;->this$0:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-object v0, v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    :goto_4b
    return v1
.end method
