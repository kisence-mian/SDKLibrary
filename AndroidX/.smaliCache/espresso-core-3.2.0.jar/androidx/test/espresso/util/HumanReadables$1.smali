.class Landroidx/test/espresso/util/HumanReadables$1;
.super Ljava/lang/Object;
.source "HumanReadables.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/util/HumanReadables;->getViewHierarchyErrorMessage(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
        "Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$problemViewSuffix:Ljava/lang/String;

.field final synthetic val$problemViews:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$problemViews",
            "val$problemViewSuffix"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Landroidx/test/espresso/util/HumanReadables$1;->val$problemViews:Ljava/util/List;

    iput-object p2, p0, Landroidx/test/espresso/util/HumanReadables$1;->val$problemViewSuffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "viewAndDistance"
        }
    .end annotation

    .line 80
    check-cast p1, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/util/HumanReadables$1;->apply(Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewAndDistance"
        }
    .end annotation

    .line 83
    nop

    .line 84
    iget-object v0, p0, Landroidx/test/espresso/util/HumanReadables$1;->val$problemViews:Ljava/util/List;

    const-string v1, "+%s%s "

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 85
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/util/HumanReadables$1;->val$problemViewSuffix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2c

    :cond_27
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 87
    :cond_2c
    :goto_2c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 92
    invoke-virtual {p1}, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;->getDistanceFromRoot()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v6, 0x2d

    const-string v7, ">"

    invoke-static {v7, v4, v6}, Landroidx/test/espresso/core/internal/deps/guava/base/Strings;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 93
    invoke-virtual {p1}, Landroidx/test/espresso/util/TreeIterables$ViewAndDistance;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 89
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
