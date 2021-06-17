.class Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;
.super Landroidx/test/internal/runner/filters/ParentFilter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassAndMethodFilter"
.end annotation


# instance fields
.field private methodFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 385
    invoke-direct {p0}, Landroidx/test/internal/runner/filters/ParentFilter;-><init>()V

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder$1;)V
    .registers 2
    .param p1, "x0"    # Landroidx/test/internal/runner/TestRequestBuilder$1;

    .line 385
    invoke-direct {p0}, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public addMethod(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "methodName"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;

    .line 411
    .local v0, "methodFilter":Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;
    if-nez v0, :cond_15

    .line 412
    new-instance v1, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;

    invoke-direct {v1, p1}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 413
    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_15
    invoke-virtual {v0, p2}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->addInclusionMethod(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public describe()Ljava/lang/String;
    .registers 2

    .line 406
    const-string v0, "Class and method filter"

    return-object v0
.end method

.method public evaluateTest(Lorg/junit/runner/Description;)Z
    .registers 5
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 392
    return v1

    .line 394
    :cond_a
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "className":Ljava/lang/String;
    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;

    .line 396
    .local v2, "methodFilter":Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;
    if-eqz v2, :cond_1d

    .line 397
    invoke-virtual {v2, p1}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v1

    return v1

    .line 401
    :cond_1d
    return v1
.end method

.method public removeMethod(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "methodName"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;

    .line 420
    .local v0, "methodFilter":Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;
    if-nez v0, :cond_15

    .line 421
    new-instance v1, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;

    invoke-direct {v1, p1}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 422
    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->methodFilters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_15
    invoke-virtual {v0, p2}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->addExclusionMethod(Ljava/lang/String;)V

    .line 425
    return-void
.end method
