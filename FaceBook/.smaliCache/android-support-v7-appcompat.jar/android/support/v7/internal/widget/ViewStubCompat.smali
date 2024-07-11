.class public final Landroid/support/v7/internal/widget/ViewStubCompat;
.super Landroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroid/support/v7/internal/widget/ViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mLayoutResource:I

    .line 54
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 57
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_inflatedId:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflatedId:I

    .line 58
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mLayoutResource:I

    .line 60
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_id:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ViewStubCompat;->setId(I)V

    .line 61
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ViewStubCompat;->setVisibility(I)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ViewStubCompat;->setWillNotDraw(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 153
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 149
    return-void
.end method

.method public getInflatedId()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .registers 8

    .line 190
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 192
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_5a

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5a

    .line 193
    iget v1, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mLayoutResource:I

    if-eqz v1, :cond_52

    .line 194
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 196
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_18

    .line 197
    iget-object v2, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .local v2, "factory":Landroid/view/LayoutInflater;
    goto :goto_20

    .line 199
    .end local v2    # "factory":Landroid/view/LayoutInflater;
    :cond_18
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ViewStubCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 201
    .restart local v2    # "factory":Landroid/view/LayoutInflater;
    :goto_20
    iget v3, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mLayoutResource:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 204
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflatedId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2f

    .line 205
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 208
    :cond_2f
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 209
    .local v4, "index":I
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 211
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 212
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_40

    .line 213
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_43

    .line 215
    :cond_40
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 218
    :goto_43
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 220
    iget-object v6, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflateListener:Landroid/support/v7/internal/widget/ViewStubCompat$OnInflateListener;

    if-eqz v6, :cond_51

    .line 221
    invoke-interface {v6, p0, v3}, Landroid/support/v7/internal/widget/ViewStubCompat$OnInflateListener;->onInflate(Landroid/support/v7/internal/widget/ViewStubCompat;Landroid/view/View;)V

    .line 224
    :cond_51
    return-object v3

    .line 226
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "factory":Landroid/view/LayoutInflater;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "index":I
    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewStub must have a valid layoutResource"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_5a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/support/v7/internal/widget/ViewStubCompat;->setMeasuredDimension(II)V

    .line 145
    return-void
.end method

.method public setInflatedId(I)V
    .registers 2
    .param p1, "inflatedId"    # I

    .line 92
    iput p1, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflatedId:I

    .line 93
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .registers 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 132
    iput-object p1, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    .line 133
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2
    .param p1, "layoutResource"    # I

    .line 124
    iput p1, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mLayoutResource:I

    .line 125
    return-void
.end method

.method public setOnInflateListener(Landroid/support/v7/internal/widget/ViewStubCompat$OnInflateListener;)V
    .registers 2
    .param p1, "inflateListener"    # Landroid/support/v7/internal/widget/ViewStubCompat$OnInflateListener;

    .line 242
    iput-object p1, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflateListener:Landroid/support/v7/internal/widget/ViewStubCompat$OnInflateListener;

    .line 243
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 167
    iget-object v0, p0, Landroid/support/v7/internal/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    .line 168
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 169
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 170
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .end local v0    # "view":Landroid/view/View;
    goto :goto_23

    .line 172
    .restart local v0    # "view":Landroid/view/View;
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setVisibility called on un-referenced view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    .end local v0    # "view":Landroid/view/View;
    :cond_18
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    if-eqz p1, :cond_20

    const/4 v0, 0x4

    if-ne p1, v0, :cond_23

    .line 177
    :cond_20
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ViewStubCompat;->inflate()Landroid/view/View;

    .line 180
    :cond_23
    :goto_23
    return-void
.end method
