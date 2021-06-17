.class Landroidx/test/espresso/matcher/PreferenceMatchers$2;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "PreferenceMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/matcher/PreferenceMatchers;->withSummaryText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
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
.field final synthetic val$summaryMatcher:Lorg/hamcrest/Matcher;


# direct methods
.method constructor <init>(Lorg/hamcrest/Matcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$summaryMatcher"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$2;->val$summaryMatcher:Lorg/hamcrest/Matcher;

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

    .line 79
    const-string v0, " a preference with summary matching: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 80
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$2;->val$summaryMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 81
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

    .line 85
    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$2;->val$summaryMatcher:Lorg/hamcrest/Matcher;

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

    .line 76
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/PreferenceMatchers$2;->matchesSafely(Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
