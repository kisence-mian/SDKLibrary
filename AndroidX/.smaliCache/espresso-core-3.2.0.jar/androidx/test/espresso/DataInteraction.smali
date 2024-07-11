.class public Landroidx/test/espresso/DataInteraction;
.super Ljava/lang/Object;
.source "DataInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;
    }
.end annotation


# instance fields
.field private adapterMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

.field private atPosition:Landroidx/test/espresso/util/EspressoOptional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private childViewMatcher:Landroidx/test/espresso/util/EspressoOptional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/util/EspressoOptional<",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dataMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rootMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/hamcrest/Matcher;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-class v0, Landroid/widget/AdapterView;

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DataInteraction;->adapterMatcher:Lorg/hamcrest/Matcher;

    .line 71
    invoke-static {}, Landroidx/test/espresso/util/EspressoOptional;->absent()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DataInteraction;->childViewMatcher:Landroidx/test/espresso/util/EspressoOptional;

    .line 72
    invoke-static {}, Landroidx/test/espresso/util/EspressoOptional;->absent()Landroidx/test/espresso/util/EspressoOptional;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DataInteraction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    .line 73
    invoke-static {}, Landroidx/test/espresso/action/AdapterViewProtocols;->standardProtocol()Landroidx/test/espresso/action/AdapterViewProtocol;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DataInteraction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    .line 74
    sget-object v0, Landroidx/test/espresso/matcher/RootMatchers;->DEFAULT:Lorg/hamcrest/Matcher;

    iput-object v0, p0, Landroidx/test/espresso/DataInteraction;->rootMatcher:Lorg/hamcrest/Matcher;

    .line 77
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->dataMatcher:Lorg/hamcrest/Matcher;

    .line 78
    return-void
.end method

.method private makeTargetMatcher()Lorg/hamcrest/Matcher;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroidx/test/espresso/DataInteraction;->adapterMatcher:Lorg/hamcrest/Matcher;

    iget-object v1, p0, Landroidx/test/espresso/DataInteraction;->dataMatcher:Lorg/hamcrest/Matcher;

    iget-object v2, p0, Landroidx/test/espresso/DataInteraction;->rootMatcher:Lorg/hamcrest/Matcher;

    iget-object v3, p0, Landroidx/test/espresso/DataInteraction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    iget-object v4, p0, Landroidx/test/espresso/DataInteraction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    .line 150
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;->displayDataMatcher(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/util/EspressoOptional;Landroidx/test/espresso/action/AdapterViewProtocol;)Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;

    move-result-object v0

    .line 152
    iget-object v1, p0, Landroidx/test/espresso/DataInteraction;->childViewMatcher:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {v1}, Landroidx/test/espresso/util/EspressoOptional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 153
    iget-object v1, p0, Landroidx/test/espresso/DataInteraction;->childViewMatcher:Landroidx/test/espresso/util/EspressoOptional;

    invoke-virtual {v1}, Landroidx/test/espresso/util/EspressoOptional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hamcrest/Matcher;

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isDescendantOfA(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 155
    :cond_26
    return-object v0
.end method


# virtual methods
.method public atPosition(Ljava/lang/Integer;)Landroidx/test/espresso/DataInteraction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atPosition"
        }
    .end annotation

    .line 114
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/test/espresso/util/EspressoOptional;->of(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->atPosition:Landroidx/test/espresso/util/EspressoOptional;

    .line 115
    return-object p0
.end method

.method public check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assertion"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Landroidx/test/espresso/DataInteraction;->makeTargetMatcher()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/DataInteraction;->rootMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->inRoot(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/test/espresso/ViewInteraction;->check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p1

    return-object p1
.end method

.method public inAdapterView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/DataInteraction;"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->adapterMatcher:Lorg/hamcrest/Matcher;

    .line 107
    return-object p0
.end method

.method public inRoot(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;)",
            "Landroidx/test/espresso/DataInteraction;"
        }
    .end annotation

    .line 95
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->rootMatcher:Lorg/hamcrest/Matcher;

    .line 96
    return-object p0
.end method

.method public onChildView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/DataInteraction;"
        }
    .end annotation

    .line 87
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    invoke-static {p1}, Landroidx/test/espresso/util/EspressoOptional;->of(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->childViewMatcher:Landroidx/test/espresso/util/EspressoOptional;

    .line 88
    return-object p0
.end method

.method public varargs perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actions"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Landroidx/test/espresso/DataInteraction;->makeTargetMatcher()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/DataInteraction;->rootMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->inRoot(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p1

    return-object p1
.end method

.method public usingAdapterViewProtocol(Landroidx/test/espresso/action/AdapterViewProtocol;)Landroidx/test/espresso/DataInteraction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterViewProtocol"
        }
    .end annotation

    .line 125
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/action/AdapterViewProtocol;

    iput-object p1, p0, Landroidx/test/espresso/DataInteraction;->adapterViewProtocol:Landroidx/test/espresso/action/AdapterViewProtocol;

    .line 126
    return-object p0
.end method
