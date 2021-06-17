.class public Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
.super Landroidx/test/espresso/matcher/BoundedMatcher;
.source "CursorMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/CursorMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedMatcher<",
        "Ljava/lang/Object;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final applier:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

.field private checkColumns:Z

.field private final columnIndex:I

.field private final columnNameMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final valueMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "valueMatcher",
            "applier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "*>;",
            "Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;",
            ")V"
        }
    .end annotation

    .line 63
    const-class v0, Landroid/database/Cursor;

    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->checkColumns:Z

    .line 64
    if-ltz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 65
    iput p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnIndex:I

    .line 66
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->valueMatcher:Lorg/hamcrest/Matcher;

    .line 67
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->applier:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    .line 68
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V
    .registers 5

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;)V

    return-void
.end method

.method private constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "columnPicker",
            "valueMatcher",
            "applier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "*>;",
            "Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;",
            ")V"
        }
    .end annotation

    .line 73
    const-class v0, Landroid/database/Cursor;

    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->checkColumns:Z

    .line 74
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    .line 75
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->valueMatcher:Lorg/hamcrest/Matcher;

    .line 76
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->applier:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    .line 77
    const/4 p1, -0x3

    iput p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnIndex:I

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;Landroidx/test/espresso/matcher/CursorMatchers$1;)V
    .registers 5

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 125
    const-string v0, "Rows with column: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 126
    iget v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnIndex:I

    const-string v1, " "

    if-gez v0, :cond_11

    .line 127
    iget-object v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    goto :goto_2d

    .line 129
    :cond_11
    const/16 v2, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, " index = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 131
    :goto_2d
    iget-object v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->applier:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    invoke-interface {v0, p1}, Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;->describeTo(Lorg/hamcrest/Description;)V

    .line 132
    invoke-interface {p1, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 133
    iget-object v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->valueMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 134
    return-void
.end method

.method public matchesSafely(Landroid/database/Cursor;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursor"
        }
    .end annotation

    .line 82
    iget v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnIndex:I

    .line 83
    const/4 v1, 0x0

    if-gez v0, :cond_db

    .line 84
    iget-object v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    # invokes: Landroidx/test/espresso/matcher/CursorMatchers;->findColumnIndex(Lorg/hamcrest/Matcher;Landroid/database/Cursor;)I
    invoke-static {v0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->access$000(Lorg/hamcrest/Matcher;Landroid/database/Cursor;)I

    move-result v0

    .line 85
    if-gez v0, :cond_db

    .line 86
    new-instance v2, Lorg/hamcrest/StringDescription;

    invoke-direct {v2}, Lorg/hamcrest/StringDescription;-><init>()V

    .line 87
    iget-object v3, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v3, v2}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 88
    const/4 v3, -0x1

    const-string v4, "Couldn\'t find column in "

    if-ne v0, v3, :cond_65

    .line 89
    iget-boolean v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->checkColumns:Z

    if-nez v0, :cond_21

    .line 98
    return v1

    .line 90
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 92
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {v2}, Lorg/hamcrest/StringDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " matching "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_65
    const/4 v1, -0x2

    if-ne v0, v1, :cond_ae

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {v2}, Lorg/hamcrest/StringDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Multiple columns in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " match "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_db
    :try_start_db
    iget-object v2, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->applier:Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;

    iget-object v3, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->valueMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v2, p1, v0, v3}, Landroidx/test/espresso/matcher/CursorMatchers$MatcherApplier;->apply(Landroid/database/Cursor;ILorg/hamcrest/Matcher;)Z

    move-result p1
    :try_end_e3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_db .. :try_end_e3} :catch_e4

    return p1

    .line 113
    :catch_e4
    move-exception p1

    .line 114
    iget-boolean v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->checkColumns:Z

    if-nez v0, :cond_ea

    .line 119
    return v1

    .line 115
    :cond_ea
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Column index is invalid"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cursor"
        }
    .end annotation

    .line 54
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->matchesSafely(Landroid/database/Cursor;)Z

    move-result p1

    return p1
.end method

.method public withStrictColumnChecks(Z)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkColumns"
        }
    .end annotation

    .line 143
    iput-boolean p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->checkColumns:Z

    .line 144
    return-object p0
.end method
