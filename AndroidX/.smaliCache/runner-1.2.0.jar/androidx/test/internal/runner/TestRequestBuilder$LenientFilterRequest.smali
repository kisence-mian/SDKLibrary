.class Landroidx/test/internal/runner/TestRequestBuilder$LenientFilterRequest;
.super Lorg/junit/runner/Request;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LenientFilterRequest"
.end annotation


# instance fields
.field private final filter:Lorg/junit/runner/manipulation/Filter;

.field private final request:Lorg/junit/runner/Request;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Request;Lorg/junit/runner/manipulation/Filter;)V
    .registers 3
    .param p1, "classRequest"    # Lorg/junit/runner/Request;
    .param p2, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classRequest",
            "filter"
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Lorg/junit/runner/Request;-><init>()V

    .line 354
    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$LenientFilterRequest;->request:Lorg/junit/runner/Request;

    .line 355
    iput-object p2, p0, Landroidx/test/internal/runner/TestRequestBuilder$LenientFilterRequest;->filter:Lorg/junit/runner/manipulation/Filter;

    .line 356
    return-void
.end method


# virtual methods
.method public getRunner()Lorg/junit/runner/Runner;
    .registers 4

    .line 361
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$LenientFilterRequest;->request:Lorg/junit/runner/Request;

    invoke-virtual {v0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    .line 362
    .local v0, "runner":Lorg/junit/runner/Runner;
    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$LenientFilterRequest;->filter:Lorg/junit/runner/manipulation/Filter;

    invoke-virtual {v1, v0}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V
    :try_end_b
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_0 .. :try_end_b} :catch_c

    .line 363
    return-object v0

    .line 364
    .end local v0    # "runner":Lorg/junit/runner/Runner;
    :catch_c
    move-exception v0

    .line 366
    .local v0, "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    new-instance v1, Landroidx/test/internal/runner/TestRequestBuilder$BlankRunner;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/test/internal/runner/TestRequestBuilder$BlankRunner;-><init>(Landroidx/test/internal/runner/TestRequestBuilder$1;)V

    return-object v1
.end method
