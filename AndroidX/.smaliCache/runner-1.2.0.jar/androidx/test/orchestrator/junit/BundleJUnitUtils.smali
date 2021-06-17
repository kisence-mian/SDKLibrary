.class public final Landroidx/test/orchestrator/junit/BundleJUnitUtils;
.super Ljava/lang/Object;
.source "BundleJUnitUtils.java"


# static fields
.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_FAILURE:Ljava/lang/String; = "failure"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundleFromDescription(Lorg/junit/runner/Description;)Landroid/os/Bundle;
    .registers 4
    .param p0, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableDescription;

    invoke-direct {v1, p0}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Lorg/junit/runner/Description;)V

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    return-object v0
.end method

.method public static getBundleFromFailure(Lorg/junit/runner/notification/Failure;)Landroid/os/Bundle;
    .registers 4
    .param p0, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableFailure;

    invoke-direct {v1, p0}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Lorg/junit/runner/notification/Failure;)V

    const-string v2, "failure"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 44
    return-object v0
.end method

.method public static getBundleFromResult(Lorg/junit/runner/Result;)Landroid/os/Bundle;
    .registers 4
    .param p0, "result"    # Lorg/junit/runner/Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableResult;

    invoke-direct {v1, p0}, Landroidx/test/orchestrator/junit/ParcelableResult;-><init>(Lorg/junit/runner/Result;)V

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    return-object v0
.end method

.method public static getBundleFromThrowable(Lorg/junit/runner/Description;Ljava/lang/Throwable;)Landroid/os/Bundle;
    .registers 5
    .param p0, "description"    # Lorg/junit/runner/Description;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "throwable"
        }
    .end annotation

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroidx/test/orchestrator/junit/ParcelableFailure;

    new-instance v2, Landroidx/test/orchestrator/junit/ParcelableDescription;

    invoke-direct {v2, p0}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Lorg/junit/runner/Description;)V

    invoke-direct {v1, v2, p1}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Landroidx/test/orchestrator/junit/ParcelableDescription;Ljava/lang/Throwable;)V

    const-string v2, "failure"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    return-object v0
.end method

.method public static getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 68
    const-string v0, "description"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/junit/ParcelableDescription;

    return-object v0
.end method

.method public static getFailure(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableFailure;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 72
    const-string v0, "failure"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/junit/ParcelableFailure;

    return-object v0
.end method

.method public static getResult(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableResult;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 76
    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/junit/ParcelableResult;

    return-object v0
.end method
