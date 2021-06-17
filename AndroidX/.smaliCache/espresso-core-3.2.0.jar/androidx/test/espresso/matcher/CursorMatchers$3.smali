.class Landroidx/test/espresso/matcher/CursorMatchers$3;
.super Ljava/lang/Object;
.source "CursorMatchers.java"

# interfaces
.implements Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/CursorMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/database/Cursor;ILorg/hamcrest/Matcher;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cursor",
            "chosenColumn",
            "matcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I",
            "Lorg/hamcrest/Matcher<",
            "*>;)Z"
        }
    .end annotation

    .line 199
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

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

    .line 204
    const-string v0, "with Short"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 205
    return-void
.end method
