.class public Lcom/ss/android/downloadlib/a/c/b;
.super Ljava/lang/Object;
.source "AidlMsg.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/downloadlib/a/c/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/ss/android/downloadlib/a/c/b$1;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/c/b$1;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/c/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/b;->c:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/b;->e:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/b;->f:Ljava/lang/String;

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/b;->c:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/b;->e:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/b;->f:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadlib/a/c/b;->a:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadlib/a/c/b;->b:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/b;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/b;->e:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/c/b;->f:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ss/android/downloadlib/a/c/b;->d:I

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 52
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 53
    return v0

    .line 55
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 58
    :cond_12
    check-cast p1, Lcom/ss/android/downloadlib/a/c/b;

    .line 59
    iget v2, p0, Lcom/ss/android/downloadlib/a/c/b;->a:I

    iget v3, p1, Lcom/ss/android/downloadlib/a/c/b;->a:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Lcom/ss/android/downloadlib/a/c/b;->b:I

    iget v3, p1, Lcom/ss/android/downloadlib/a/c/b;->b:I

    if-eq v2, v3, :cond_21

    goto :goto_32

    .line 62
    :cond_21
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/c/b;->c:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 63
    iget-object p1, p1, Lcom/ss/android/downloadlib/a/c/b;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 65
    :cond_2c
    iget-object p1, p1, Lcom/ss/android/downloadlib/a/c/b;->c:Ljava/lang/String;

    if-nez p1, :cond_31

    .line 66
    return v0

    .line 68
    :cond_31
    return v1

    .line 60
    :cond_32
    :goto_32
    return v1

    .line 56
    :cond_33
    :goto_33
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 72
    iget v0, p0, Lcom/ss/android/downloadlib/a/c/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ss/android/downloadlib/a/c/b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 77
    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 34
    iget p2, p0, Lcom/ss/android/downloadlib/a/c/b;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget p2, p0, Lcom/ss/android/downloadlib/a/c/b;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/c/b;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/c/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/c/b;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget p2, p0, Lcom/ss/android/downloadlib/a/c/b;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    return-void
.end method
