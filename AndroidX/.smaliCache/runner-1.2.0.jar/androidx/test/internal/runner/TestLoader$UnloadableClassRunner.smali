.class Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;
.super Lorg/junit/runner/Runner;
.source "TestLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnloadableClassRunner"
.end annotation


# instance fields
.field private final description:Lorg/junit/runner/Description;

.field private final failure:Lorg/junit/runner/notification/Failure;


# direct methods
.method constructor <init>(Lorg/junit/runner/Description;Lorg/junit/runner/notification/Failure;)V
    .registers 3
    .param p1, "description"    # Lorg/junit/runner/Description;
    .param p2, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "failure"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 154
    iput-object p1, p0, Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;->description:Lorg/junit/runner/Description;

    .line 155
    iput-object p2, p0, Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;->failure:Lorg/junit/runner/notification/Failure;

    .line 156
    return-void
.end method


# virtual methods
.method public getDescription()Lorg/junit/runner/Description;
    .registers 2

    .line 160
    iget-object v0, p0, Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;->description:Lorg/junit/runner/Description;

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 3
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifier"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;->description:Lorg/junit/runner/Description;

    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 166
    iget-object v0, p0, Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;->failure:Lorg/junit/runner/notification/Failure;

    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 167
    iget-object v0, p0, Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;->description:Lorg/junit/runner/Description;

    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    .line 168
    return-void
.end method
