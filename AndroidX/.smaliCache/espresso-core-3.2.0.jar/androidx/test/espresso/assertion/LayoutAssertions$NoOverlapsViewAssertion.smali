.class Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;
.super Ljava/lang/Object;
.source "LayoutAssertions.java"

# interfaces
.implements Landroidx/test/espresso/ViewAssertion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/assertion/LayoutAssertions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoOverlapsViewAssertion"
.end annotation


# instance fields
.field private final selector:Lorg/hamcrest/Matcher;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/hamcrest/Matcher;)V
    .registers 2
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;->selector:Lorg/hamcrest/Matcher;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/assertion/LayoutAssertions$1;)V
    .registers 3

    .line 103
    invoke-direct {p0, p1}, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;-><init>(Lorg/hamcrest/Matcher;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;)Lorg/hamcrest/Matcher;
    .registers 1

    .line 103
    iget-object p0, p0, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;->selector:Lorg/hamcrest/Matcher;

    return-object p0
.end method


# virtual methods
.method public check(Landroid/view/View;Landroidx/test/espresso/NoMatchingViewException;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "noViewException"
        }
    .end annotation

    .line 116
    new-instance v0, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion$1;-><init>(Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;)V

    .line 124
    if-nez p2, :cond_a6

    .line 128
    nop

    .line 129
    invoke-static {p1}, Landroidx/test/espresso/util/TreeIterables;->breadthFirstViewTraversal(Landroid/view/View;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->filter(Ljava/lang/Iterable;Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 131
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 135
    # invokes: Landroidx/test/espresso/assertion/LayoutAssertions;->getRect(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v1}, Landroidx/test/espresso/assertion/LayoutAssertions;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_94

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_45

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    .line 138
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_94

    .line 139
    :cond_45
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 141
    instance-of v5, v1, Landroid/widget/ImageView;

    if-eqz v5, :cond_5e

    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_5e

    .line 142
    goto :goto_49

    .line 144
    :cond_5e
    # invokes: Landroidx/test/espresso/assertion/LayoutAssertions;->getRect(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {v4}, Landroidx/test/espresso/assertion/LayoutAssertions;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 145
    invoke-static {v2, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_73

    .line 148
    const-string v2, ",\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_73
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 152
    invoke-static {v1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static {v4}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 151
    const-string v4, "%s overlaps\n%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    goto :goto_91

    .line 155
    :cond_90
    goto :goto_49

    .line 156
    :cond_91
    :goto_91
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_94
    goto :goto_1e

    .line 160
    :cond_95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gtz p1, :cond_9c

    .line 163
    return-void

    .line 161
    :cond_9c
    new-instance p1, Ljunit/framework/AssertionFailedError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljunit/framework/AssertionFailedError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_a6
    goto :goto_a8

    :goto_a7
    throw p2

    :goto_a8
    goto :goto_a7
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 167
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/test/espresso/assertion/LayoutAssertions$NoOverlapsViewAssertion;->selector:Lorg/hamcrest/Matcher;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NoOverlapsViewAssertion{selector=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
