.class Landroidx/test/internal/runner/TestRequestBuilder$AnnotationInclusionFilter;
.super Landroidx/test/internal/runner/filters/ParentFilter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnotationInclusionFilter"
.end annotation


# instance fields
.field private final annotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Landroidx/test/internal/runner/filters/ParentFilter;-><init>()V

    .line 139
    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationInclusionFilter;->annotationClass:Ljava/lang/Class;

    .line 140
    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .registers 4

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationInclusionFilter;->annotationClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "annotation %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected evaluateTest(Lorg/junit/runner/Description;)Z
    .registers 4
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object v0

    .line 151
    .local v0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationInclusionFilter;->annotationClass:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_19

    if-eqz v0, :cond_17

    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationInclusionFilter;->annotationClass:Ljava/lang/Class;

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    .line 151
    :goto_1a
    return v1
.end method

.method protected getAnnotationClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationInclusionFilter;->annotationClass:Ljava/lang/Class;

    return-object v0
.end method
