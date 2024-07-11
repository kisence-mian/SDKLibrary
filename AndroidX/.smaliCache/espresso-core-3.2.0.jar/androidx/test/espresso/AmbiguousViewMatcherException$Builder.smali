.class public Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
.super Ljava/lang/Object;
.source "AmbiguousViewMatcherException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/AmbiguousViewMatcherException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private includeViewHierarchy:Z

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
.method public constructor <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->includeViewHierarchy:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Lorg/hamcrest/Matcher;
    .registers 1

    .line 91
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;
    .registers 1

    .line 91
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;
    .registers 1

    .line 91
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Landroid/view/View;
    .registers 1

    .line 91
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view2:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)[Landroid/view/View;
    .registers 1

    .line 91
    iget-object p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->others:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;)Z
    .registers 1

    .line 91
    iget-boolean p0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->includeViewHierarchy:Z

    return p0
.end method


# virtual methods
.method public build()Landroidx/test/espresso/AmbiguousViewMatcherException;
    .registers 3

    .line 139
    iget-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->rootView:Landroid/view/View;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view1:Landroid/view/View;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view2:Landroid/view/View;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->others:[Landroid/view/View;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Landroidx/test/espresso/AmbiguousViewMatcherException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/AmbiguousViewMatcherException;-><init>(Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;Landroidx/test/espresso/AmbiguousViewMatcherException$1;)V

    return-object v0
.end method

.method public from(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 100
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException;->viewMatcher:Lorg/hamcrest/Matcher;
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->access$600(Landroidx/test/espresso/AmbiguousViewMatcherException;)Lorg/hamcrest/Matcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 101
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException;->rootView:Landroid/view/View;
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->access$700(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->rootView:Landroid/view/View;

    .line 102
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException;->view1:Landroid/view/View;
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->access$800(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view1:Landroid/view/View;

    .line 103
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException;->view2:Landroid/view/View;
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->access$900(Landroidx/test/espresso/AmbiguousViewMatcherException;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view2:Landroid/view/View;

    .line 104
    # getter for: Landroidx/test/espresso/AmbiguousViewMatcherException;->others:[Landroid/view/View;
    invoke-static {p1}, Landroidx/test/espresso/AmbiguousViewMatcherException;->access$1000(Landroidx/test/espresso/AmbiguousViewMatcherException;)[Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->others:[Landroid/view/View;

    .line 105
    return-object p0
.end method

.method public includeViewHierarchy(Z)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "includeViewHierarchy"
        }
    .end annotation

    .line 134
    iput-boolean p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->includeViewHierarchy:Z

    .line 135
    return-object p0
.end method

.method public varargs withOtherAmbiguousViews([Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "others"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->others:[Landroid/view/View;

    .line 130
    return-object p0
.end method

.method public withRootView(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->rootView:Landroid/view/View;

    .line 115
    return-object p0
.end method

.method public withView1(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view1"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view1:Landroid/view/View;

    .line 120
    return-object p0
.end method

.method public withView2(Landroid/view/View;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view2"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->view2:Landroid/view/View;

    .line 125
    return-object p0
.end method

.method public withViewMatcher(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Landroidx/test/espresso/AmbiguousViewMatcherException$Builder;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 110
    return-object p0
.end method
