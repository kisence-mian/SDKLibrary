.class public final Landroidx/test/espresso/action/RepeatActionUntilViewState;
.super Ljava/lang/Object;
.source "RepeatActionUntilViewState.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# instance fields
.field private final mAction:Landroidx/test/espresso/ViewAction;

.field private final mDesiredStateMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxAttempts:I


# direct methods
.method protected constructor <init>(Landroidx/test/espresso/ViewAction;Lorg/hamcrest/Matcher;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "desiredStateMatcher",
            "maxAttempts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/ViewAction;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-le p3, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "maxAttempts should be greater than 1"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 65
    iput-object p1, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mAction:Landroidx/test/espresso/ViewAction;

    .line 66
    iput-object p2, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mDesiredStateMatcher:Lorg/hamcrest/Matcher;

    .line 67
    iput p3, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mMaxAttempts:I

    .line 68
    return-void
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mAction:Landroidx/test/espresso/ViewAction;

    invoke-interface {v0}, Landroidx/test/espresso/ViewAction;->getConstraints()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 6

    .line 77
    new-instance v0, Lorg/hamcrest/StringDescription;

    invoke-direct {v0}, Lorg/hamcrest/StringDescription;-><init>()V

    .line 78
    iget-object v1, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mDesiredStateMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v1, v0}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 79
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mAction:Landroidx/test/espresso/ViewAction;

    invoke-interface {v3}, Landroidx/test/espresso/ViewAction;->getDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "%s until: %s"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .registers 7
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

    .line 84
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 85
    :goto_2
    iget-object v2, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mDesiredStateMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v2, p2}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iget v2, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mMaxAttempts:I

    if-gt v1, v2, :cond_19

    .line 86
    iget-object v2, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mAction:Landroidx/test/espresso/ViewAction;

    invoke-interface {v2, p1, p2}, Landroidx/test/espresso/ViewAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 87
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 89
    :cond_19
    iget p1, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mMaxAttempts:I

    if-gt v1, p1, :cond_1e

    .line 99
    return-void

    .line 90
    :cond_1e
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 91
    invoke-virtual {p0}, Landroidx/test/espresso/action/RepeatActionUntilViewState;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 92
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/test/espresso/action/RepeatActionUntilViewState;->mMaxAttempts:I

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 95
    const-string v2, "Failed to achieve view state after %d attempts"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    goto :goto_55

    :goto_54
    throw p1

    :goto_55
    goto :goto_54
.end method
