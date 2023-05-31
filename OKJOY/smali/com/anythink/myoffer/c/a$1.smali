.class final Lcom/anythink/myoffer/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/c/a;
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
        "Lcom/anythink/myoffer/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/anythink/myoffer/c/a;
    .registers 2

    .prologue
    .line 122
    new-instance v0, Lcom/anythink/myoffer/c/a;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/c/a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/anythink/myoffer/c/a;
    .registers 2

    .prologue
    .line 127
    new-array v0, p0, [Lcom/anythink/myoffer/c/a;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 2122
    new-instance v0, Lcom/anythink/myoffer/c/a;

    invoke-direct {v0, p1}, Lcom/anythink/myoffer/c/a;-><init>(Landroid/os/Parcel;)V

    .line 119
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 119
    .line 1127
    new-array v0, p1, [Lcom/anythink/myoffer/c/a;

    .line 119
    return-object v0
.end method
