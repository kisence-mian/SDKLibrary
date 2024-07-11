.class public final Landroidx/test/orchestrator/junit/ParcelableDescription;
.super Ljava/lang/Object;
.source "ParcelableDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/test/orchestrator/junit/ParcelableDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final className:Ljava/lang/String;

.field private final displayName:Ljava/lang/String;

.field private final methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Landroidx/test/orchestrator/junit/ParcelableDescription$1;

    invoke-direct {v0}, Landroidx/test/orchestrator/junit/ParcelableDescription$1;-><init>()V

    sput-object v0, Landroidx/test/orchestrator/junit/ParcelableDescription;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;->getNonNullString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;->getNonNullString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;->getNonNullString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->displayName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/test/orchestrator/junit/ParcelableDescription$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroidx/test/orchestrator/junit/ParcelableDescription$1;

    .line 24
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/junit/ParcelableDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "classAndMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classAndMethodName"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "classAndMethodNames":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    .line 38
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_15

    aget-object v1, v0, v2

    goto :goto_17

    :cond_15
    const-string v1, ""

    :goto_17
    iput-object v1, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->displayName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/junit/runner/Description;)V
    .registers 3
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->displayName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private getNonNullString(Landroid/os/Parcel;)Ljava/lang/String;
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

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_9

    const-string v1, ""

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    return-object v0
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

    .line 60
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Landroidx/test/orchestrator/junit/ParcelableDescription;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method
