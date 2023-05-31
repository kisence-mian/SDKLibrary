.class final Lcom/anythink/myoffer/c/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/anythink/myoffer/c/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/anythink/myoffer/c/c;
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcom/anythink/myoffer/c/c;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/c/c;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/anythink/myoffer/c/c;
    .registers 2

    .prologue
    .line 61
    new-array v0, p0, [Lcom/anythink/myoffer/c/c;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 2056
    new-instance v0, Lcom/anythink/myoffer/c/c;

    invoke-direct {v0, p1}, Lcom/anythink/myoffer/c/c;-><init>(Landroid/os/Parcel;)V

    .line 53
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 53
    .line 1061
    new-array v0, p1, [Lcom/anythink/myoffer/c/c;

    .line 53
    return-object v0
.end method
