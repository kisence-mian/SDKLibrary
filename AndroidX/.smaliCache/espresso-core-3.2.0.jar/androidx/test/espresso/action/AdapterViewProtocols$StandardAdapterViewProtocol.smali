.class final Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol;
.super Ljava/lang/Object;
.source "AdapterViewProtocols.java"

# interfaces
.implements Landroidx/test/espresso/action/AdapterViewProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/AdapterViewProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StandardAdapterViewProtocol"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StdAdapterViewProtocol"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isElementFullyRendered(Landroid/widget/AdapterView;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "childAt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;I)Z"
        }
    .end annotation

    .line 179
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 185
    const/16 p2, 0x5a

    invoke-static {p2}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayingAtLeast(I)Lorg/hamcrest/Matcher;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getDataInAdapterView(Landroid/widget/AdapterView;)Ljava/lang/Iterable;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 89
    nop

    .line 90
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 91
    new-instance v3, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    invoke-direct {v3}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;-><init>()V

    new-instance v4, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v1, v5}, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;-><init>(Ljava/lang/Object;ILandroidx/test/espresso/action/AdapterViewProtocols$1;)V

    .line 93
    invoke-virtual {v3, v4}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->withDataFunction(Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    move-result-object v2

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->withOpaqueToken(Ljava/lang/Object;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->build()Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    move-result-object v2

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 97
    :cond_31
    return-object v0
.end method

.method public getDataRenderedByView(Landroid/widget/AdapterView;Landroid/view/View;)Landroidx/test/espresso/util/EspressoOptional;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "descendantView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p1, v0, :cond_31

    .line 104
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result p2

    .line 105
    const/4 v0, -0x1

    if-eq p2, v0, :cond_31

    .line 106
    new-instance v0, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;-><init>()V

    new-instance v1, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;

    .line 109
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol$StandardDataFunction;-><init>(Ljava/lang/Object;ILandroidx/test/espresso/action/AdapterViewProtocols$1;)V

    .line 108
    invoke-virtual {v0, v1}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->withDataFunction(Landroidx/test/espresso/action/AdapterViewProtocol$DataFunction;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    move-result-object p1

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->withOpaqueToken(Ljava/lang/Object;)Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData$Builder;->build()Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    move-result-object p1

    .line 106
    invoke-static {p1}, Landroidx/test/espresso/util/EspressoOptional;->of(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    return-object p1

    .line 114
    :cond_31
    invoke-static {}, Landroidx/test/espresso/util/EspressoOptional;->absent()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    return-object p1
.end method

.method public isDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "adaptedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ")Z"
        }
    .end annotation

    .line 154
    iget-object v0, p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    const-string v1, "Not my data: %s"

    invoke-static {v0, v1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 155
    iget-object p2, p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 156
    nop

    .line 158
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    move-result-object v0

    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 160
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    if-ne v0, v1, :cond_3c

    .line 162
    const/4 v0, 0x1

    goto :goto_49

    .line 164
    :cond_3c
    nop

    .line 166
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p2, v0

    .line 165
    invoke-direct {p0, p1, v0}, Landroidx/test/espresso/action/AdapterViewProtocols$StandardAdapterViewProtocol;->isElementFullyRendered(Landroid/widget/AdapterView;I)Z

    move-result v0

    goto :goto_49

    .line 159
    :cond_48
    const/4 v0, 0x0

    .line 169
    :goto_49
    if-eqz v0, :cond_4e

    .line 171
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 174
    :cond_4e
    return v0
.end method

.method public makeDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapterView",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;",
            ")V"
        }
    .end annotation

    .line 120
    iget-object v0, p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    const-string v1, "Not my data: %s"

    invoke-static {v0, v1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget-object p2, p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->opaqueToken:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 123
    nop

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-le v0, v3, :cond_50

    .line 127
    instance-of v0, p1, Landroid/widget/AbsListView;

    const/16 v3, 0xa

    if-eqz v0, :cond_35

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_2e

    .line 129
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    .line 130
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0, p2, v4, v2}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_34

    .line 132
    :cond_2e
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 134
    :goto_34
    const/4 v2, 0x1

    .line 136
    :cond_35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_4e

    .line 137
    instance-of v0, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v0, :cond_4e

    .line 138
    instance-of v0, p1, Landroid/widget/AdapterViewFlipper;

    if-eqz v0, :cond_47

    .line 139
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewFlipper;

    invoke-virtual {v0}, Landroid/widget/AdapterViewFlipper;->stopFlipping()V

    .line 141
    :cond_47
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0, p2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    .line 142
    goto :goto_51

    .line 146
    :cond_4e
    move v1, v2

    goto :goto_51

    .line 126
    :cond_50
    const/4 v1, 0x0

    .line 146
    :goto_51
    if-nez v1, :cond_56

    .line 147
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 149
    :cond_56
    return-void
.end method
