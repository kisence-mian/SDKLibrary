.class Landroidx/test/espresso/DataInteraction$DisplayDataMatcher$1;
.super Ljava/lang/Object;
.source "DataInteraction.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/DataInteraction$DisplayDataMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/action/AdapterViewProtocol;Landroidx/test/espresso/action/AdapterDataLoaderAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
        "Landroidx/test/espresso/action/AdapterDataLoaderAction;",
        "Landroidx/test/espresso/ViewInteraction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$adapterMatcher:Lorg/hamcrest/Matcher;

.field final synthetic val$rootMatcher:Lorg/hamcrest/Matcher;


# direct methods
.method constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$adapterMatcher",
            "val$rootMatcher"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher$1;->val$adapterMatcher:Lorg/hamcrest/Matcher;

    iput-object p2, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher$1;->val$rootMatcher:Lorg/hamcrest/Matcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroidx/test/espresso/action/AdapterDataLoaderAction;)Landroidx/test/espresso/ViewInteraction;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterDataLoaderAction"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher$1;->val$adapterMatcher:Lorg/hamcrest/Matcher;

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher$1;->val$rootMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->inRoot(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "adapterDataLoaderAction"
        }
    .end annotation

    .line 210
    check-cast p1, Landroidx/test/espresso/action/AdapterDataLoaderAction;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/DataInteraction$DisplayDataMatcher$1;->apply(Landroidx/test/espresso/action/AdapterDataLoaderAction;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p1

    return-object p1
.end method
