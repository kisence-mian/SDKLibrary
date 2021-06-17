.class Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;
.super Landroidx/test/internal/runner/filters/ParentFilter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodFilter"
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private excludedMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private includedMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 440
    invoke-direct {p0}, Landroidx/test/internal/runner/filters/ParentFilter;-><init>()V

    .line 432
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->includedMethods:Ljava/util/Set;

    .line 433
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->excludedMethods:Ljava/util/Set;

    .line 441
    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->className:Ljava/lang/String;

    .line 442
    return-void
.end method

.method private stripParameterizedSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 474
    const-string v0, ".+(\\[[0-9]+\\])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 475
    .local v0, "suffixPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 476
    const/4 v1, 0x0

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 478
    :cond_1b
    return-object p1
.end method


# virtual methods
.method public addExclusionMethod(Ljava/lang/String;)V
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodName"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->excludedMethods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method

.method public addInclusionMethod(Ljava/lang/String;)V
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodName"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->includedMethods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    return-void
.end method

.method public describe()Ljava/lang/String;
    .registers 4

    .line 446
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Method filter for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    .line 451
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "methodName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 456
    return v1

    .line 461
    :cond_8
    invoke-direct {p0, v0}, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->stripParameterizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->excludedMethods:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 463
    return v1

    .line 467
    :cond_15
    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->includedMethods:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;->includedMethods:Ljava/util/Set;

    .line 468
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 469
    const-string v2, "initializationError"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_2d
    const/4 v1, 0x1

    .line 467
    :cond_2e
    return v1
.end method
