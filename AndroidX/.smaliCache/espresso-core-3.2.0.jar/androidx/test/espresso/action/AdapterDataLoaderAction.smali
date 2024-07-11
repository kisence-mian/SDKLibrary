.class public final Landroidx/test/espresso/action/AdapterDataLoaderAction;
.super Ljava/lang/Object;
.source "AdapterDataLoaderAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# instance fields
.field private adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

.field final adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

.field final atPosition:Landroidx/test/espresso/util/EspressoOptional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final dataLock:Ljava/lang/Object;

.field final dataToLoadMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private performed:Z


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/util/EspressoOptional;Landroidx/test/espresso/action/AdapterViewProtocol;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataToLoadMatcher",
            "atPosition",
            "adapterViewProtocol"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/test/espresso/action/AdapterViewProtocol;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->performed:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataLock:Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataToLoadMatcher:Lorg/hamcrest/Matcher;

    .line 56
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/util/EspressoOptional;

    iput-object p1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    .line 57
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/action/AdapterViewProtocol;

    iput-object p1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    .line 58
    return-void
.end method


# virtual methods
.method public getAdaptedData()Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;
    .registers 4

    .line 61
    iget-object v0, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-boolean v1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->performed:Z

    const-string v2, "perform hasn\'t beenViewFinderImpl called yet!"

    invoke-static {v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 63
    iget-object v1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getConstraints()Lorg/hamcrest/Matcher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 70
    const-class v0, Landroid/widget/AdapterView;

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 161
    const-string v0, "load adapter data"

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiController",
            "view"
        }
    .end annotation

    .line 76
    move-object v0, p2

    check-cast v0, Landroid/widget/AdapterView;

    .line 77
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    iget-object v2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    invoke-interface {v2, v0}, Landroidx/test/espresso/action/AdapterViewProtocol;->getDataInAdapterView(Landroid/widget/AdapterView;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    .line 82
    iget-object v4, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataToLoadMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {v3}, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 83
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_2c
    goto :goto_11

    .line 87
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_96

    .line 88
    new-instance v2, Lorg/hamcrest/StringDescription;

    invoke-direct {v2}, Lorg/hamcrest/StringDescription;-><init>()V

    .line 89
    iget-object v3, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataToLoadMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v3, v2}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 91
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_96

    .line 92
    :cond_44
    const-string p1, " contained values: "

    invoke-virtual {v2, p1}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 93
    iget-object p1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    invoke-interface {p1, v0}, Landroidx/test/espresso/action/AdapterViewProtocol;->getDataInAdapterView(Landroid/widget/AdapterView;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/hamcrest/StringDescription;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 94
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 95
    invoke-virtual {p0}, Landroidx/test/espresso/action/AdapterDataLoaderAction;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 96
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No data found matching: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 102
    :cond_96
    :goto_96
    iget-object v2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_99
    iget-boolean v3, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->performed:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_a1

    const/4 v3, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v3, 0x0

    :goto_a2
    const-string v6, "perform called 2x!"

    invoke-static {v3, v6}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 104
    iput-boolean v5, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->performed:Z

    .line 105
    iget-object v3, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {v3}, Landroidx/test/espresso/util/EspressoOptional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_115

    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    .line 107
    iget-object v6, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {v6}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v3, :cond_d9

    .line 120
    iget-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {p2}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    iput-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    .line 122
    goto :goto_123

    .line 108
    :cond_d9
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 109
    invoke-virtual {p0}, Landroidx/test/espresso/action/AdapterDataLoaderAction;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 110
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "There are only %d elements that matched but requested %d element."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    iget-object v3, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    .line 117
    invoke-virtual {v3}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v5

    .line 113
    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 123
    :cond_115
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_150

    .line 138
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    iput-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    .line 141
    :goto_123
    monitor-exit v2
    :try_end_124
    .catchall {:try_start_99 .. :try_end_124} :catchall_1b5

    .line 143
    nop

    .line 144
    :goto_125
    iget-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    iget-object v1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    invoke-interface {p2, v0, v1}, Landroidx/test/espresso/action/AdapterViewProtocol;->isDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)Z

    move-result p2

    if-nez p2, :cond_14f

    .line 145
    if-le v4, v5, :cond_140

    .line 146
    rem-int/lit8 p2, v4, 0x32

    if-nez p2, :cond_147

    .line 148
    invoke-virtual {v0}, Landroid/widget/AdapterView;->invalidate()V

    .line 149
    iget-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    iget-object v1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    invoke-interface {p2, v0, v1}, Landroidx/test/espresso/action/AdapterViewProtocol;->makeDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)V

    goto :goto_147

    .line 152
    :cond_140
    iget-object p2, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    iget-object v1, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->adaptedData:Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;

    invoke-interface {p2, v0, v1}, Landroidx/test/espresso/action/AdapterViewProtocol;->makeDataRenderedWithinAdapterView(Landroid/widget/AdapterView;Landroidx/test/espresso/action/AdapterViewProtocol$AdaptedData;)V

    .line 154
    :cond_147
    :goto_147
    const-wide/16 v1, 0x64

    invoke-interface {p1, v1, v2}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_125

    .line 157
    :cond_14f
    return-void

    .line 124
    :cond_150
    :try_start_150
    new-instance p1, Lorg/hamcrest/StringDescription;

    invoke-direct {p1}, Lorg/hamcrest/StringDescription;-><init>()V

    .line 125
    iget-object v0, p0, Landroidx/test/espresso/action/AdapterDataLoaderAction;->dataToLoadMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 126
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 127
    invoke-virtual {p0}, Landroidx/test/espresso/action/AdapterDataLoaderAction;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 128
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Multiple data elements matched: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ". Elements: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2, v0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 141
    :catchall_1b5
    move-exception p1

    monitor-exit v2
    :try_end_1b7
    .catchall {:try_start_150 .. :try_end_1b7} :catchall_1b5

    goto :goto_1b9

    :goto_1b8
    throw p1

    :goto_1b9
    goto :goto_1b8
.end method
