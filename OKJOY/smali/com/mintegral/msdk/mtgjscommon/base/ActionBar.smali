.class public Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;
.super Landroid/widget/LinearLayout;
.source "ActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgjscommon/base/ActionBar$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public addAction(Lcom/mintegral/msdk/mtgjscommon/base/ActionBar$a;)V
    .registers 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->getChildCount()I

    move-result v0

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->addAction(Lcom/mintegral/msdk/mtgjscommon/base/ActionBar$a;I)V

    .line 65
    return-void
.end method

.method public addAction(Lcom/mintegral/msdk/mtgjscommon/base/ActionBar$a;I)V
    .registers 7

    .prologue
    .line 74
    .line 1137
    const/4 v1, 0x0

    .line 1138
    invoke-interface {p1}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar$a;->a()Landroid/view/View;

    move-result-object v2

    .line 1139
    if-eqz v2, :cond_1e

    .line 1140
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->newActionItem()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1141
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1142
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1143
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1144
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_1e
    invoke-virtual {p0, v1, p2}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->addView(Landroid/view/View;I)V

    .line 75
    return-void
.end method

.method public getActionCount()I
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public newActionItem()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 162
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 170
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public removeAction(Lcom/mintegral/msdk/mtgjscommon/base/ActionBar$a;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->getChildCount()I

    move-result v2

    move v1, v0

    .line 107
    :goto_6
    if-ge v1, v2, :cond_20

    .line 108
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_21

    .line 110
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 111
    instance-of v5, v4, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar$a;

    if-eqz v5, :cond_21

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 112
    invoke-virtual {p0, v3}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->removeView(Landroid/view/View;)V

    .line 113
    const/4 v0, 0x1

    .line 118
    :cond_20
    return v0

    .line 107
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public removeActionAt(I)V
    .registers 3

    .prologue
    .line 91
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 92
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->removeViewAt(I)V

    .line 93
    :cond_b
    return-void
.end method

.method public removeAllActions()V
    .registers 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->removeAllViews()V

    .line 83
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/base/ActionBar;->a:Landroid/webkit/WebView;

    .line 55
    return-void
.end method
