.class Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;
.super Landroidx/test/internal/runner/filters/ParentFilter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdkSuppressFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/internal/runner/TestRequestBuilder;


# direct methods
.method private constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    invoke-direct {p0}, Landroidx/test/internal/runner/filters/ParentFilter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder;Landroidx/test/internal/runner/TestRequestBuilder$1;)V
    .registers 3
    .param p1, "x0"    # Landroidx/test/internal/runner/TestRequestBuilder;
    .param p2, "x1"    # Landroidx/test/internal/runner/TestRequestBuilder$1;

    .line 249
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;-><init>(Landroidx/test/internal/runner/TestRequestBuilder;)V

    return-void
.end method

.method private getAnnotationForTest(Lorg/junit/runner/Description;)Landroidx/test/filters/SdkSuppress;
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

    .line 265
    const-class v0, Landroidx/test/filters/SdkSuppress;

    invoke-virtual {p1, v0}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroidx/test/filters/SdkSuppress;

    .line 266
    .local v0, "s":Landroidx/test/filters/SdkSuppress;
    if-eqz v0, :cond_b

    .line 267
    return-object v0

    .line 269
    :cond_b
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object v1

    .line 270
    .local v1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1a

    .line 271
    const-class v2, Landroidx/test/filters/SdkSuppress;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Landroidx/test/filters/SdkSuppress;

    return-object v2

    .line 273
    :cond_1a
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .registers 3

    .line 279
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "skip tests annotated with SdkSuppress if necessary"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected evaluateTest(Lorg/junit/runner/Description;)Z
    .registers 6
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;->getAnnotationForTest(Lorg/junit/runner/Description;)Landroidx/test/filters/SdkSuppress;

    move-result-object v0

    .line 254
    .local v0, "sdkSuppress":Landroidx/test/filters/SdkSuppress;
    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 255
    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    # invokes: Landroidx/test/internal/runner/TestRequestBuilder;->getDeviceSdkInt()I
    invoke-static {v2}, Landroidx/test/internal/runner/TestRequestBuilder;->access$200(Landroidx/test/internal/runner/TestRequestBuilder;)I

    move-result v2

    invoke-interface {v0}, Landroidx/test/filters/SdkSuppress;->minSdkVersion()I

    move-result v3

    if-lt v2, v3, :cond_20

    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    .line 256
    # invokes: Landroidx/test/internal/runner/TestRequestBuilder;->getDeviceSdkInt()I
    invoke-static {v2}, Landroidx/test/internal/runner/TestRequestBuilder;->access$200(Landroidx/test/internal/runner/TestRequestBuilder;)I

    move-result v2

    invoke-interface {v0}, Landroidx/test/filters/SdkSuppress;->maxSdkVersion()I

    move-result v3

    if-gt v2, v3, :cond_20

    .line 257
    return v1

    .line 259
    :cond_20
    const/4 v1, 0x0

    return v1

    .line 261
    :cond_22
    return v1
.end method
