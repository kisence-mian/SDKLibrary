.class Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuildImpl;
.super Ljava/lang/Object;
.source "TestRequestBuilder.java"

# interfaces
.implements Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceBuildImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder$1;)V
    .registers 2
    .param p1, "x0"    # Landroidx/test/internal/runner/TestRequestBuilder$1;

    .line 121
    invoke-direct {p0}, Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuildImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getHardware()Ljava/lang/String;
    .registers 2

    .line 129
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersionInt()I
    .registers 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
