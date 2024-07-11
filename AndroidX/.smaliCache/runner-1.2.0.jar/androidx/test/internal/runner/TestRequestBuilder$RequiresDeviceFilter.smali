.class Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;
.super Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequiresDeviceFilter"
.end annotation


# static fields
.field static final EMULATOR_HARDWARE_GCE:Ljava/lang/String; = "gce_x86"

.field static final EMULATOR_HARDWARE_GOLDFISH:Ljava/lang/String; = "goldfish"

.field static final EMULATOR_HARDWARE_RANCHU:Ljava/lang/String; = "ranchu"


# instance fields
.field private final emulatorHardwareNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/test/internal/runner/TestRequestBuilder;


# direct methods
.method constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder;)V
    .registers 6
    .param p1, "this$0"    # Landroidx/test/internal/runner/TestRequestBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    .line 298
    const-class v0, Landroidx/test/filters/RequiresDevice;

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;-><init>(Ljava/lang/Class;)V

    .line 292
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "goldfish"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ranchu"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gce_x86"

    aput-object v3, v1, v2

    .line 294
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;->emulatorHardwareNames:Ljava/util/Set;

    .line 299
    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .registers 3

    .line 313
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "skip tests annotated with RequiresDevice if necessary"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected evaluateTest(Lorg/junit/runner/Description;)Z
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

    .line 303
    invoke-super {p0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;->evaluateTest(Lorg/junit/runner/Description;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 305
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;->emulatorHardwareNames:Ljava/util/Set;

    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    # invokes: Landroidx/test/internal/runner/TestRequestBuilder;->getDeviceHardware()Ljava/lang/String;
    invoke-static {v2}, Landroidx/test/internal/runner/TestRequestBuilder;->access$300(Landroidx/test/internal/runner/TestRequestBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 307
    :cond_15
    return v1
.end method
