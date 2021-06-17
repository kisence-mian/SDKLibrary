.class Landroidx/test/espresso/matcher/PreferenceMatchers$4;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "PreferenceMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/matcher/PreferenceMatchers;->withTitleText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$titleMatcher:Lorg/hamcrest/Matcher;


# direct methods
.method constructor <init>(Lorg/hamcrest/Matcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$titleMatcher"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$4;->val$titleMatcher:Lorg/hamcrest/Matcher;

    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 138
    const-string v0, " a preference with title matching: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 139
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$4;->val$titleMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 140
    return-void
.end method

.method public matchesSafely(Landroid/preference/Preference;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pref"
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_8

    .line 145
    const/4 p1, 0x0

    return p1

    .line 147
    :cond_8
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$4;->val$titleMatcher:Lorg/hamcrest/Matcher;

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
            "pref"
        }
    .end annotation

    .line 135
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/PreferenceMatchers$4;->matchesSafely(Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
