.class public final Landroidx/test/orchestrator/junit/ParcelableResult;
.super Ljava/lang/Object;
.source "ParcelableResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/test/orchestrator/junit/ParcelableResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final failures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/orchestrator/junit/ParcelableFailure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroidx/test/orchestrator/junit/ParcelableResult$1;

    invoke-direct {v0}, Landroidx/test/orchestrator/junit/ParcelableResult$1;-><init>()V

    sput-object v0, Landroidx/test/orchestrator/junit/ParcelableResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableResult;->failures:Ljava/util/List;

    .line 38
    const-class v0, [Landroidx/test/orchestrator/junit/ParcelableFailure;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "failures":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 40
    .local v3, "failure":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/test/orchestrator/junit/ParcelableResult;->failures:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Landroidx/test/orchestrator/junit/ParcelableFailure;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v3    # "failure":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 42
    :cond_25
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/test/orchestrator/junit/ParcelableResult$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroidx/test/orchestrator/junit/ParcelableResult$1;

    .line 26
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/junit/runner/Result;)V
    .registers 6
    .param p1, "result"    # Lorg/junit/runner/Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableResult;->failures:Ljava/util/List;

    .line 31
    invoke-virtual {p1}, Lorg/junit/runner/Result;->getFailures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/Failure;

    .line 32
    .local v1, "failure":Lorg/junit/runner/notification/Failure;
    iget-object v2, p0, Landroidx/test/orchestrator/junit/ParcelableResult;->failures:Ljava/util/List;

    new-instance v3, Landroidx/test/orchestrator/junit/ParcelableFailure;

    invoke-direct {v3, v1}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Lorg/junit/runner/notification/Failure;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .end local v1    # "failure":Lorg/junit/runner/notification/Failure;
    goto :goto_12

    .line 34
    :cond_29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getFailureCount()I
    .registers 2

    .line 76
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableResult;->failures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFailures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/test/orchestrator/junit/ParcelableFailure;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableResult;->failures:Ljava/util/List;

    return-object v0
.end method

.method public wasSuccessful()Z
    .registers 2

    .line 68
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableResult;->failures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "flags"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableResult;->failures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 52
    return-void
.end method
