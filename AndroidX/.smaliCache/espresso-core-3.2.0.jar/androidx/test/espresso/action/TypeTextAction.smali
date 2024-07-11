.class public final Landroidx/test/espresso/action/TypeTextAction;
.super Ljava/lang/Object;
.source "TypeTextAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final stringToBeTyped:Ljava/lang/String;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field

.field final tapToFocus:Z
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Landroidx/test/espresso/action/TypeTextAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/action/TypeTextAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringToBeTyped"
        }
    .end annotation

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/test/espresso/action/TypeTextAction;-><init>(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stringToBeTyped",
            "tapToFocus"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    .line 73
    iput-boolean p2, p0, Landroidx/test/espresso/action/TypeTextAction;->tapToFocus:Z

    .line 74
    return-void
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/hamcrest/Matcher;

    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/hamcrest/Matchers;->allOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 80
    iget-boolean v1, p0, Landroidx/test/espresso/action/TypeTextAction;->tapToFocus:Z

    if-nez v1, :cond_1a

    .line 81
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->hasFocus()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 84
    :cond_1a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_29

    .line 85
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->supportsInputMethods()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0

    .line 89
    :cond_29
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->supportsInputMethods()Lorg/hamcrest/Matcher;

    move-result-object v1

    const-class v2, Landroid/widget/SearchView;

    invoke-static {v2}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/hamcrest/Matchers;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .line 129
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "type text(%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .registers 8
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

    .line 96
    const-string v0, "Failed to type text: "

    iget-object v1, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 97
    sget-object p1, Landroidx/test/espresso/action/TypeTextAction;->TAG:Ljava/lang/String;

    const-string p2, "Supplied string is empty resulting in no-op (nothing is typed)."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 101
    :cond_12
    iget-boolean v1, p0, Landroidx/test/espresso/action/TypeTextAction;->tapToFocus:Z

    if-eqz v1, :cond_27

    .line 103
    new-instance v1, Landroidx/test/espresso/action/GeneralClickAction;

    sget-object v2, Landroidx/test/espresso/action/Tap;->SINGLE:Landroidx/test/espresso/action/Tap;

    sget-object v3, Landroidx/test/espresso/action/GeneralLocation;->CENTER:Landroidx/test/espresso/action/GeneralLocation;

    sget-object v4, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    invoke-direct {v1, v2, v3, v4}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;)V

    .line 104
    invoke-virtual {v1, p1, p2}, Landroidx/test/espresso/action/GeneralClickAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 105
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 109
    :cond_27
    :try_start_27
    iget-object v1, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroidx/test/espresso/UiController;->injectString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_83

    .line 110
    sget-object p1, Landroidx/test/espresso/action/TypeTextAction;->TAG:Ljava/lang/String;

    iget-object v1, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    :cond_42
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_47
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 112
    invoke-virtual {p0}, Landroidx/test/espresso/action/TypeTextAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 113
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_72

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_77

    :cond_72
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_77
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1, v1}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1
    :try_end_83
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_27 .. :try_end_83} :catch_85

    .line 124
    :cond_83
    nop

    .line 125
    return-void

    .line 117
    :catch_85
    move-exception p1

    .line 118
    sget-object v1, Landroidx/test/espresso/action/TypeTextAction;->TAG:Ljava/lang/String;

    iget-object v2, p0, Landroidx/test/espresso/action/TypeTextAction;->stringToBeTyped:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_99

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9f

    :cond_99
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_9f
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 120
    invoke-virtual {p0}, Landroidx/test/espresso/action/TypeTextAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 121
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p2

    .line 122
    invoke-virtual {p2, p1}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1
.end method
