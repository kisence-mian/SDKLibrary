.class Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;
.super Landroidx/test/internal/runner/filters/ParentFilter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeFilter"
.end annotation


# instance fields
.field private final testSize:Landroidx/test/internal/runner/TestSize;


# direct methods
.method constructor <init>(Landroidx/test/internal/runner/TestSize;)V
    .registers 2
    .param p1, "testSize"    # Landroidx/test/internal/runner/TestSize;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testSize"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Landroidx/test/internal/runner/filters/ParentFilter;-><init>()V

    .line 177
    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;->testSize:Landroidx/test/internal/runner/TestSize;

    .line 178
    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .registers 2

    .line 182
    const-string v0, ""

    return-object v0
.end method

.method protected evaluateTest(Lorg/junit/runner/Description;)Z
    .registers 7
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;->testSize:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v0, p1}, Landroidx/test/internal/runner/TestSize;->testMethodIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 189
    return v1

    .line 190
    :cond_a
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;->testSize:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v0, p1}, Landroidx/test/internal/runner/TestSize;->testClassIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 193
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/annotation/Annotation;

    .line 194
    .local v3, "a":Ljava/lang/annotation/Annotation;
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Landroidx/test/internal/runner/TestSize;->isAnyTestSize(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 195
    return v2

    .line 197
    .end local v3    # "a":Ljava/lang/annotation/Annotation;
    :cond_32
    goto :goto_1b

    .line 198
    :cond_33
    return v1

    .line 200
    :cond_34
    return v2
.end method
