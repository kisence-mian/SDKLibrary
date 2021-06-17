.class final Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithTagKeyMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:I
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field

.field private final objectMatcher:Lorg/hamcrest/Matcher;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILorg/hamcrest/Matcher;)V
    .registers 3
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "objectMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "*>;)V"
        }
    .end annotation

    .line 719
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 720
    iput p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;->key:I

    .line 721
    iput-object p2, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;->objectMatcher:Lorg/hamcrest/Matcher;

    .line 722
    return-void
.end method

.method synthetic constructor <init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 4

    .line 711
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;-><init>(ILorg/hamcrest/Matcher;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 726
    iget v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;->key:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "with key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 727
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;->objectMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 728
    return-void
.end method

.method public matchesSafely(Landroid/view/View;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;->objectMatcher:Lorg/hamcrest/Matcher;

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;->key:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 711
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithTagKeyMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
