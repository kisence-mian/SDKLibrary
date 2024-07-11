.class Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder$1;
.super Lorg/junit/runner/Runner;
.source "AndroidJUnit3Builder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Lorg/junit/runner/Description;
    .registers 2

    .line 47
    sget-object v0, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 2
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifier"
        }
    .end annotation

    .line 51
    return-void
.end method
