.class Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;
.super Ljava/lang/Object;
.source "RootViewPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/RootViewPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RootResultFetcher"
.end annotation


# instance fields
.field private final activeRootLister:Landroidx/test/espresso/base/ActiveRootLister;

.field private final selector:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/test/espresso/base/ActiveRootLister;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activeRootLister",
            "rootMatcherRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/ActiveRootLister;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;)V"
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;->activeRootLister:Landroidx/test/espresso/base/ActiveRootLister;

    .line 281
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;->selector:Lorg/hamcrest/Matcher;

    .line 282
    return-void
.end method


# virtual methods
.method public fetch()Landroidx/test/espresso/base/RootViewPicker$RootResults;
    .registers 6

    .line 285
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;->activeRootLister:Landroidx/test/espresso/base/ActiveRootLister;

    invoke-interface {v0}, Landroidx/test/espresso/base/ActiveRootLister;->listActiveRoots()Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/espresso/Root;

    .line 289
    iget-object v4, p0, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;->selector:Lorg/hamcrest/Matcher;

    invoke-interface {v4, v3}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 290
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_25
    goto :goto_e

    .line 293
    :cond_26
    new-instance v2, Landroidx/test/espresso/base/RootViewPicker$RootResults;

    iget-object v3, p0, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;->selector:Lorg/hamcrest/Matcher;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Landroidx/test/espresso/base/RootViewPicker$RootResults;-><init>(Ljava/util/List;Ljava/util/List;Lorg/hamcrest/Matcher;Landroidx/test/espresso/base/RootViewPicker$1;)V

    return-object v2
.end method
