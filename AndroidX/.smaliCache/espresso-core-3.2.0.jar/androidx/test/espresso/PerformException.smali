.class public final Landroidx/test/espresso/PerformException;
.super Ljava/lang/RuntimeException;
.source "PerformException.java"

# interfaces
.implements Landroidx/test/espresso/EspressoException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/PerformException$Builder;
    }
.end annotation


# static fields
.field private static final MESSAGE_FORMAT:Ljava/lang/String; = "Error performing \'%s\' on view \'%s\'."


# instance fields
.field private final actionDescription:Ljava/lang/String;

.field private final viewDescription:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/PerformException$Builder;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 40
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    # getter for: Landroidx/test/espresso/PerformException$Builder;->actionDescription:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/espresso/PerformException$Builder;->access$000(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    # getter for: Landroidx/test/espresso/PerformException$Builder;->viewDescription:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/espresso/PerformException$Builder;->access$100(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 41
    const-string v2, "Error performing \'%s\' on view \'%s\'."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    # getter for: Landroidx/test/espresso/PerformException$Builder;->cause:Ljava/lang/Throwable;
    invoke-static {p1}, Landroidx/test/espresso/PerformException$Builder;->access$200(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/Throwable;

    move-result-object v1

    .line 40
    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    # getter for: Landroidx/test/espresso/PerformException$Builder;->actionDescription:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/espresso/PerformException$Builder;->access$000(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/espresso/PerformException;->actionDescription:Ljava/lang/String;

    .line 45
    # getter for: Landroidx/test/espresso/PerformException$Builder;->viewDescription:Ljava/lang/String;
    invoke-static {p1}, Landroidx/test/espresso/PerformException$Builder;->access$100(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/espresso/PerformException;->viewDescription:Ljava/lang/String;

    .line 46
    const-string p1, "ThreadState-PerformException.txt"

    invoke-static {p1}, Landroidx/test/internal/platform/util/TestOutputEmitter;->dumpThreadStates(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/PerformException$Builder;Landroidx/test/espresso/PerformException$1;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Landroidx/test/espresso/PerformException;-><init>(Landroidx/test/espresso/PerformException$Builder;)V

    return-void
.end method


# virtual methods
.method public getActionDescription()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Landroidx/test/espresso/PerformException;->actionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getViewDescription()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Landroidx/test/espresso/PerformException;->viewDescription:Ljava/lang/String;

    return-object v0
.end method
