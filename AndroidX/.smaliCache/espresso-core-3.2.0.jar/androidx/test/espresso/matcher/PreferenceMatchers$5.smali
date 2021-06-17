.class Landroidx/test/espresso/matcher/PreferenceMatchers$5;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "PreferenceMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/matcher/PreferenceMatchers;->isEnabled()Lorg/hamcrest/Matcher;
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


# direct methods
.method constructor <init>()V
    .registers 1

    .line 154
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

    .line 157
    const-string v0, " is an enabled preference"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 158
    return-void
.end method

.method public matchesSafely(Landroid/preference/Preference;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pref"
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

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

    .line 154
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/PreferenceMatchers$5;->matchesSafely(Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
