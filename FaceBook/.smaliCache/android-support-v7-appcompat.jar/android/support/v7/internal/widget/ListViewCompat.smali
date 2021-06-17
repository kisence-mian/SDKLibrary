.class public Landroid/support/v7/internal/widget/ListViewCompat;
.super Landroid/widget/ListView;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1

.field private static final STATE_SET_NOTHING:[I


# instance fields
.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mSelector:Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;

.field final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/ListViewCompat;->STATE_SET_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionLeftPadding:I

    .line 48
    iput v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionTopPadding:I

    .line 49
    iput v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionRightPadding:I

    .line 50
    iput v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionBottomPadding:I

    .line 68
    :try_start_13
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_21} :catch_22

    .line 72
    goto :goto_26

    .line 70
    :catch_22
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 73
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_26
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "drawSelectorOnTop":Z
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ListViewCompat;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method protected drawSelectorCompat(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 122
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_14
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 90
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 91
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelector:Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;->setEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->updateSelectorStateCompat()V

    .line 93
    return-void
.end method

.method public lookForSelectablePosition(IZ)I
    .registers 7
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 138
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4d

    .line 142
    :cond_e
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 143
    .local v2, "count":I
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_46

    .line 144
    if-eqz p2, :cond_2e

    .line 145
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 146
    :goto_23
    if-ge p1, v2, :cond_3f

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 147
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 150
    :cond_2e
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 151
    :goto_34
    if-ltz p1, :cond_3f

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 152
    add-int/lit8 p1, p1, -0x1

    goto :goto_34

    .line 156
    :cond_3f
    if-ltz p1, :cond_45

    if-lt p1, v2, :cond_44

    goto :goto_45

    .line 159
    :cond_44
    return p1

    .line 157
    :cond_45
    :goto_45
    return v1

    .line 161
    :cond_46
    if-ltz p1, :cond_4c

    if-lt p1, v2, :cond_4b

    goto :goto_4c

    .line 164
    :cond_4b
    return p1

    .line 162
    :cond_4c
    :goto_4c
    return v1

    .line 139
    .end local v2    # "count":I
    :cond_4d
    :goto_4d
    return v1
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .registers 28
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 252
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingTop()I

    move-result v2

    .line 253
    .local v2, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingBottom()I

    move-result v3

    .line 254
    .local v3, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingLeft()I

    move-result v4

    .line 255
    .local v4, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingRight()I

    move-result v5

    .line 256
    .local v5, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getDividerHeight()I

    move-result v6

    .line 257
    .local v6, "reportedDividerHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 259
    .local v7, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 261
    .local v8, "adapter":Landroid/widget/ListAdapter;
    if-nez v8, :cond_25

    .line 262
    add-int v9, v2, v3

    return v9

    .line 266
    :cond_25
    add-int v9, v2, v3

    .line 267
    .local v9, "returnedHeight":I
    if-lez v6, :cond_2d

    if-eqz v7, :cond_2d

    move v11, v6

    goto :goto_2e

    :cond_2d
    const/4 v11, 0x0

    .line 272
    .local v11, "dividerHeight":I
    :goto_2e
    const/4 v12, 0x0

    .line 274
    .local v12, "prevHeightWithoutPartialChild":I
    const/4 v13, 0x0

    .line 275
    .local v13, "child":Landroid/view/View;
    const/4 v14, 0x0

    .line 276
    .local v14, "viewType":I
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v15

    .line 277
    .local v15, "count":I
    const/16 v16, 0x0

    move/from16 v10, v16

    .local v10, "i":I
    :goto_39
    if-ge v10, v15, :cond_9c

    .line 278
    move/from16 v17, v2

    .end local v2    # "paddingTop":I
    .local v17, "paddingTop":I
    invoke-interface {v8, v10}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 279
    .local v2, "newType":I
    if-eq v2, v14, :cond_45

    .line 280
    const/4 v13, 0x0

    .line 281
    move v14, v2

    .line 283
    :cond_45
    move/from16 v18, v2

    move-object/from16 v2, p0

    .end local v2    # "newType":I
    .local v18, "newType":I
    invoke-interface {v8, v10, v13, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 287
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 288
    .local v2, "childLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_69

    move/from16 v19, v3

    .end local v3    # "paddingBottom":I
    .local v19, "paddingBottom":I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_66

    .line 289
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v20, v2

    .end local v2    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .local v20, "childLp":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    .local v2, "heightMeasureSpec":I
    goto :goto_72

    .line 288
    .end local v20    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .local v2, "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_66
    move-object/from16 v20, v2

    .end local v2    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v20    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_6d

    .end local v19    # "paddingBottom":I
    .end local v20    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "paddingBottom":I
    :cond_69
    move-object/from16 v20, v2

    move/from16 v19, v3

    .line 292
    .end local v2    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "paddingBottom":I
    .restart local v19    # "paddingBottom":I
    .restart local v20    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    :goto_6d
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 294
    .local v3, "heightMeasureSpec":I
    :goto_72
    move/from16 v2, p1

    invoke-virtual {v13, v2, v3}, Landroid/view/View;->measure(II)V

    .line 296
    if-lez v10, :cond_7a

    .line 298
    add-int/2addr v9, v11

    .line 301
    :cond_7a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v9, v9, v21

    .line 303
    if-lt v9, v0, :cond_90

    .line 306
    if-ltz v1, :cond_8d

    if-le v10, v1, :cond_8d

    if-lez v12, :cond_8d

    if-eq v9, v0, :cond_8d

    move/from16 v16, v12

    goto :goto_8f

    :cond_8d
    move/from16 v16, v0

    :goto_8f
    return v16

    .line 314
    :cond_90
    if-ltz v1, :cond_95

    if-lt v10, v1, :cond_95

    .line 315
    move v12, v9

    .line 277
    .end local v3    # "heightMeasureSpec":I
    .end local v18    # "newType":I
    .end local v20    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_95
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    goto :goto_39

    .line 321
    .end local v10    # "i":I
    .end local v17    # "paddingTop":I
    .end local v19    # "paddingBottom":I
    .local v2, "paddingTop":I
    .local v3, "paddingBottom":I
    :cond_9c
    return v9
.end method

.method protected positionSelectorCompat(ILandroid/view/View;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 199
    .local v0, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 202
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionLeftPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 203
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionTopPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 204
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionRightPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 205
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 210
    :try_start_31
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 211
    .local v1, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_51

    .line 212
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-nez v1, :cond_43

    const/4 v3, 0x1

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    const/4 v2, -0x1

    if-eq p1, v2, :cond_51

    .line 214
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->refreshDrawableState()V
    :try_end_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_51} :catch_52

    .line 219
    .end local v1    # "isChildViewEnabled":Z
    :cond_51
    goto :goto_56

    .line 217
    :catch_52
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 220
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_56
    return-void
.end method

.method protected positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v3, -0x1

    if-eq p1, v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 182
    .local v3, "manageState":Z
    :goto_e
    if-eqz v3, :cond_13

    .line 183
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 186
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/ListViewCompat;->positionSelectorCompat(ILandroid/view/View;)V

    .line 188
    if-eqz v3, :cond_30

    .line 189
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 190
    .local v4, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 191
    .local v5, "x":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 192
    .local v6, "y":F
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getVisibility()I

    move-result v7

    if-nez v7, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 193
    invoke-static {v0, v5, v6}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 195
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_30
    return-void
.end method

.method protected positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/ListViewCompat;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_f

    const/4 v1, -0x1

    if-eq p1, v1, :cond_f

    .line 173
    invoke-static {v0, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 175
    :cond_f
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .line 77
    new-instance v0, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelector:Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;

    .line 78
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 82
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionLeftPadding:I

    .line 83
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionTopPadding:I

    .line 84
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionRightPadding:I

    .line 85
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelectionBottomPadding:I

    .line 86
    return-void
.end method

.method protected setSelectorEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 325
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListViewCompat;->mSelector:Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ListViewCompat$GateKeeperDrawable;->setEnabled(Z)V

    .line 326
    return-void
.end method

.method protected shouldShowSelectorCompat()Z
    .registers 2

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected updateSelectorStateCompat()V
    .registers 3

    .line 106
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->shouldShowSelectorCompat()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 110
    :cond_13
    return-void
.end method
