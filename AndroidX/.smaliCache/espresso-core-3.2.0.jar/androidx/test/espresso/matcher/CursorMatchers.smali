.class public final Landroidx/test/espresso/matcher/CursorMatchers;
.super Ljava/lang/Object;
.source "CursorMatchers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;,
        Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    }
.end annotation


# static fields
.field private static final BLOB_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

.field private static final COLUMN_NOT_FOUND:I = -0x1

.field private static final DOUBLE_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

.field private static final FLOAT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

.field private static final INT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

.field private static final LONG_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

.field private static final MULTIPLE_COLUMNS_FOUND:I = -0x2

.field private static final SHORT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

.field private static final STRING_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

.field private static final USE_COLUMN_PICKER:I = -0x3


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$1;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$1;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->BLOB_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    .line 182
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$2;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$2;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->LONG_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    .line 195
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$3;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$3;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->SHORT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    .line 208
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$4;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$4;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->INT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    .line 221
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$5;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$5;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->FLOAT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    .line 234
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$6;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$6;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->DOUBLE_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    .line 247
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$7;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$7;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->STRING_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/hamcrest/Matcher;Landroid/database/Cursor;)I
    .registers 2

    .line 43
    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->findColumnIndex(Lorg/hamcrest/Matcher;Landroid/database/Cursor;)I

    move-result p0

    return p0
.end method

.method private static findColumnIndex(Lorg/hamcrest/Matcher;Landroid/database/Cursor;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nameMatcher",
            "cursor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/Cursor;",
            ")I"
        }
    .end annotation

    .line 149
    nop

    .line 150
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    .line 151
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_8
    array-length v3, p1

    if-ge v1, v3, :cond_1c

    .line 152
    aget-object v3, p1, v1

    .line 153
    invoke-interface {p0, v3}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 154
    if-ne v2, v0, :cond_17

    .line 155
    move v2, v1

    goto :goto_19

    .line 157
    :cond_17
    const/4 v2, -0x2

    .line 158
    goto :goto_1c

    .line 151
    :cond_19
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 162
    :cond_1c
    :goto_1c
    return v2
.end method

.method public static withRowBlob(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "[B>;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 665
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->BLOB_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowBlob(I[B)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "value"
        }
    .end annotation

    .line 652
    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowBlob(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowBlob(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "[B>;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 689
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowBlob(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowBlob(Ljava/lang/String;[B)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "value"
        }
    .end annotation

    .line 676
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowBlob(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowBlob(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnPicker",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "[B>;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 705
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->BLOB_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowDouble(ID)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "value"
        }
    .end annotation

    .line 524
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowDouble(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowDouble(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 537
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->DOUBLE_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowDouble(Ljava/lang/String;D)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "value"
        }
    .end annotation

    .line 548
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowDouble(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowDouble(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 561
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowDouble(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowDouble(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnNameMatcher",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 577
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->DOUBLE_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowFloat(IF)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "value"
        }
    .end annotation

    .line 460
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowFloat(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowFloat(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 473
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->FLOAT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowFloat(Ljava/lang/String;F)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "value"
        }
    .end annotation

    .line 484
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowFloat(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowFloat(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 497
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowFloat(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowFloat(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnNameMatcher",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 513
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->FLOAT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowInt(II)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "value"
        }
    .end annotation

    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowInt(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowInt(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 345
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->INT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowInt(Ljava/lang/String;I)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "value"
        }
    .end annotation

    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowInt(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowInt(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 369
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowInt(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowInt(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "columnNameMatcher",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 385
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->INT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowLong(IJ)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "value"
        }
    .end annotation

    .line 396
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowLong(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowLong(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 409
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->LONG_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowLong(Ljava/lang/String;J)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "value"
        }
    .end annotation

    .line 420
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowLong(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowLong(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 433
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowLong(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowLong(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnNameMatcher",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 449
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->LONG_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowShort(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Short;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 281
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->SHORT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowShort(IS)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "value"
        }
    .end annotation

    .line 268
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowShort(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowShort(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Short;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 305
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowShort(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowShort(Ljava/lang/String;S)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "value"
        }
    .end annotation

    .line 292
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowShort(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowShort(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnNameMatcher",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Short;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 321
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->SHORT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowString(ILjava/lang/String;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "value"
        }
    .end annotation

    .line 588
    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowString(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowString(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 601
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->STRING_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowString(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "value"
        }
    .end annotation

    .line 612
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowString(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowString(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnName",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 625
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowString(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowString(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "columnPicker",
            "valueMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 641
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->STRING_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method
