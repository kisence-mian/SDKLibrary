.class Landroidx/test/espresso/matcher/PreferenceMatchers$3;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "PreferenceMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/matcher/PreferenceMatchers;->withTitle(I)Lorg/hamcrest/Matcher;
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
.field private expectedText:Ljava/lang/String;

.field private resourceName:Ljava/lang/String;

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$resourceId"
        }
    .end annotation

    .line 92
    iput p1, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->val$resourceId:I

    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 93
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->resourceName:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->expectedText:Ljava/lang/String;

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

    .line 98
    const-string v0, " with title string from resource id: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 99
    iget v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->val$resourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 100
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->resourceName:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 101
    const-string v0, "["

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 102
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->resourceName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 103
    const-string v0, "]"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 105
    :cond_21
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->expectedText:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 106
    const-string v0, " value: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 107
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->expectedText:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 109
    :cond_2f
    return-void
.end method

.method public matchesSafely(Landroid/preference/Preference;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->expectedText:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 115
    :try_start_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->val$resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->expectedText:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->val$resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->resourceName:Ljava/lang/String;
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_24} :catch_25

    .line 119
    goto :goto_26

    .line 117
    :catch_25
    move-exception v0

    .line 121
    :cond_26
    :goto_26
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->expectedText:Ljava/lang/String;

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 122
    iget-object v0, p0, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->expectedText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 124
    :cond_3f
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "preference"
        }
    .end annotation

    .line 92
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/PreferenceMatchers$3;->matchesSafely(Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
