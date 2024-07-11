.class public final Landroidx/test/espresso/matcher/PreferenceMatchers;
.super Ljava/lang/Object;
.source "PreferenceMatchers.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled()Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Landroidx/test/espresso/matcher/PreferenceMatchers$5;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/PreferenceMatchers$5;-><init>()V

    return-object v0
.end method

.method public static withKey(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/PreferenceMatchers;->withKey(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static withKey(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keyMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Landroidx/test/espresso/matcher/PreferenceMatchers$6;

    invoke-direct {v0, p0}, Landroidx/test/espresso/matcher/PreferenceMatchers$6;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static withSummary(I)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Landroidx/test/espresso/matcher/PreferenceMatchers$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/matcher/PreferenceMatchers$1;-><init>(I)V

    return-object v0
.end method

.method public static withSummaryText(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "summary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/PreferenceMatchers;->withSummaryText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static withSummaryText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "summaryMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Landroidx/test/espresso/matcher/PreferenceMatchers$2;

    invoke-direct {v0, p0}, Landroidx/test/espresso/matcher/PreferenceMatchers$2;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static withTitle(I)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;

    invoke-direct {v0, p0}, Landroidx/test/espresso/matcher/PreferenceMatchers$3;-><init>(I)V

    return-object v0
.end method

.method public static withTitleText(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/matcher/PreferenceMatchers;->withTitleText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static withTitleText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "titleMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Landroidx/test/espresso/matcher/PreferenceMatchers$4;

    invoke-direct {v0, p0}, Landroidx/test/espresso/matcher/PreferenceMatchers$4;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method
