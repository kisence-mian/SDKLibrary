.class public final Landroidx/test/orchestrator/junit/ParcelableFailure;
.super Ljava/lang/Object;
.source "ParcelableFailure.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/test/orchestrator/junit/ParcelableFailure;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_STREAM_LENGTH:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "ParcelableFailure"


# instance fields
.field private final description:Landroidx/test/orchestrator/junit/ParcelableDescription;

.field private final trace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroidx/test/orchestrator/junit/ParcelableFailure$1;

    invoke-direct {v0}, Landroidx/test/orchestrator/junit/ParcelableFailure$1;-><init>()V

    sput-object v0, Landroidx/test/orchestrator/junit/ParcelableFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Landroidx/test/orchestrator/junit/ParcelableDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/junit/ParcelableDescription;

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->description:Landroidx/test/orchestrator/junit/ParcelableDescription;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->trace:Ljava/lang/String;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/test/orchestrator/junit/ParcelableFailure$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroidx/test/orchestrator/junit/ParcelableFailure$1;

    .line 25
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroidx/test/orchestrator/junit/ParcelableDescription;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "description"    # Landroidx/test/orchestrator/junit/ParcelableDescription;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "t"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->description:Landroidx/test/orchestrator/junit/ParcelableDescription;

    .line 46
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/orchestrator/junit/ParcelableFailure;->trimToLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->trace:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/junit/runner/notification/Failure;)V
    .registers 4
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroidx/test/orchestrator/junit/ParcelableDescription;

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Lorg/junit/runner/Description;)V

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->description:Landroidx/test/orchestrator/junit/ParcelableDescription;

    .line 36
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->trace:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private static trimToLength(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "trace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trace"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "\n"

    const/16 v2, 0x4000

    if-le v0, v2, :cond_2c

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 77
    const-string v3, "Stack trace too long, trimmed to first %s characters."

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v3, "ParcelableFailure"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_2c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Landroidx/test/orchestrator/junit/ParcelableDescription;
    .registers 2

    .line 90
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->description:Landroidx/test/orchestrator/junit/ParcelableDescription;

    return-object v0
.end method

.method public getTrace()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->trace:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
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

    .line 56
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->description:Landroidx/test/orchestrator/junit/ParcelableDescription;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableFailure;->trace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return-void
.end method
