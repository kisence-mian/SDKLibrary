.class Ltds/androidx/recyclerview/widget/ItemTouchUIUtilImpl;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;


# static fields
.field static final INSTANCE:Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ltds/androidx/recyclerview/widget/ItemTouchUIUtilImpl;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/ItemTouchUIUtilImpl;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMaxElevation(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;)F
    .registers 8
    .param p0, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p1, "itemView"    # Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 51
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 52
    .local v1, "max":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_1b

    .line 53
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 54
    .local v3, "child":Landroid/view/View;
    if-ne v3, p1, :cond_f

    .line 55
    goto :goto_18

    .line 57
    :cond_f
    invoke-static {v3}, Ltds/androidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v4

    .line 58
    .local v4, "elevation":F
    cmpl-float v5, v4, v1

    if-lez v5, :cond_18

    .line 59
    move v1, v4

    .line 52
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "elevation":F
    :cond_18
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 62
    .end local v2    # "i":I
    :cond_1b
    return v1
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 82
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .registers 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 45
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 46
    invoke-virtual {p3, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 47
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .registers 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 68
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 86
    return-void
.end method
