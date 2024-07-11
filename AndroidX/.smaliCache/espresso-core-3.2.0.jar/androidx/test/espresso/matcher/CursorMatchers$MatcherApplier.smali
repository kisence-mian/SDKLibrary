.class interface abstract Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;
.super Ljava/lang/Object;
.source "CursorMatchers.java"

# interfaces
.implements Lorg/hamcrest/SelfDescribing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/CursorMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MatcherApplier"
.end annotation


# virtual methods
.method public abstract apply(Landroid/database/Cursor;ILorg/hamcrest/Matcher;)Z
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
.end method
