.class final Lcom/anythink/basead/ui/PlayerView$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/ui/PlayerView$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/anythink/basead/ui/PlayerView$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/anythink/basead/ui/PlayerView$b;
    .registers 2

    .line 247
    new-instance v0, Lcom/anythink/basead/ui/PlayerView$b;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/PlayerView$b;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/anythink/basead/ui/PlayerView$b;
    .registers 1

    .line 252
    new-array p0, p0, [Lcom/anythink/basead/ui/PlayerView$b;

    return-object p0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .line 2247
    new-instance v0, Lcom/anythink/basead/ui/PlayerView$b;

    invoke-direct {v0, p1}, Lcom/anythink/basead/ui/PlayerView$b;-><init>(Landroid/os/Parcel;)V

    .line 243
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 243
    nop

    .line 1252
    new-array p1, p1, [Lcom/anythink/basead/ui/PlayerView$b;

    .line 243
    return-object p1
.end method
