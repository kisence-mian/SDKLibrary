.class public final Landroidx/test/espresso/matcher/LayoutMatchers;
.super Ljava/lang/Object;
.source "LayoutMatchers.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasEllipsizedText()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Landroidx/test/espresso/matcher/LayoutMatchers$1;

    const-class v1, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/LayoutMatchers$1;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static hasMultilineText()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Landroidx/test/espresso/matcher/LayoutMatchers$2;

    const-class v1, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroidx/test/espresso/matcher/LayoutMatchers$2;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
