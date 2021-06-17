.class public final Landroidx/test/espresso/AmbiguousViewMatcherException;
.super Ljava/lang/RuntimeException;
.source "AmbiguousViewMatcherException.java"

# interfaces
.implements Landroidx/test/espresso/EspressoException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    }
.end annotation


# instance fields
.field private others:[Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private view1:Landroid/view/View;

.field private view2:Landroid/view/View;

.field private viewMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->getErrorMessage(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$000(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Lorg/hamcrest/Matcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 59
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->rootView:Landroid/view/View;
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$100(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException;->rootView:Landroid/view/View;

    .line 60
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view1:Landroid/view/View;
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$200(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException;->view1:Landroid/view/View;

    .line 61
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view2:Landroid/view/View;
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$300(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException;->view2:Landroid/view/View;

    .line 62
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->others:[Landroid/view/View;
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$400(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)[Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException;->others:[Landroid/view/View;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;Landroidx/test/espresso/AmbiguousViewMatcherException$1;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;-><init>(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    const-string p1, "ThreadState-AmbiguousViewMatcherException.txt"

    invoke-static {p1}, Landroidx/test/internal/platform/util/TestOutputEmitter;->dumpThreadStates(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static synthetic access$1000(Landroidx/test/espresso/AmbiguousViewMatcherException;)[Landroid/view/View;
    .registers 1

    .line 42
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException;->others:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/test/espresso/AmbiguousViewMatcherException;)Lorg/hamcrest/Matcher;
    .registers 1

    .line 42
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException;->viewMatcher:Lorg/hamcrest/Matcher;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroid/view/View;
    .registers 1

    .line 42
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroid/view/View;
    .registers 1

    .line 42
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException;->view1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroid/view/View;
    .registers 1

    .line 42
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException;->view2:Landroid/view/View;

    return-object p0
.end method

.method private static getErrorMessage(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 66
    nop

    .line 67
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->includeViewHierarchy:Z
    invoke-static {p0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$500(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4c

    .line 69
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->builder()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    .line 70
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view1:Landroid/view/View;
    invoke-static {p0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$200(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v1

    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view2:Landroid/view/View;
    invoke-static {p0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$300(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 71
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->others:[Landroid/view/View;
    invoke-static {p0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$400(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)[Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->build()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object v0

    .line 73
    nop

    .line 75
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->rootView:Landroid/view/View;
    invoke-static {p0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$100(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;

    move-result-object v3

    .line 76
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;
    invoke-static {p0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$000(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Lorg/hamcrest/Matcher;

    move-result-object p0

    aput-object p0, v2, v1

    .line 77
    const-string p0, "\'%s\' matches multiple views in the hierarchy."

    invoke-static {v4, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 74
    const-string v1, "****MATCHES****"

    invoke-static {v3, v0, p0, v1}, Landroidx/test/espresso/util/HumanReadables;->getViewHierarchyErrorMessage(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 82
    goto :goto_5c

    .line 83
    :cond_4c
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 85
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;
    invoke-static {p0}, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->access$000(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Lorg/hamcrest/Matcher;

    move-result-object p0

    aput-object p0, v2, v1

    .line 84
    const-string p0, "Multiple Ambiguous Views found for matcher %s"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 87
    :goto_5c
    return-object p0
.end method
