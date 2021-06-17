.class Landroidx/test/orchestrator/junit/ParcelableFailure$1;
.super Ljava/lang/Object;
.source "ParcelableFailure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/orchestrator/junit/ParcelableFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/test/orchestrator/junit/ParcelableFailure;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/test/orchestrator/junit/ParcelableFailure;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 64
    new-instance v0, Landroidx/test/orchestrator/junit/ParcelableFailure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Landroid/os/Parcel;Landroidx/test/orchestrator/junit/ParcelableFailure$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableFailure$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/test/orchestrator/junit/ParcelableFailure;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/test/orchestrator/junit/ParcelableFailure;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 69
    new-array v0, p1, [Landroidx/test/orchestrator/junit/ParcelableFailure;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableFailure$1;->newArray(I)[Landroidx/test/orchestrator/junit/ParcelableFailure;

    move-result-object p1

    return-object p1
.end method
