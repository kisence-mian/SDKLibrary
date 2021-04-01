.class public Lcom/ss/android/socialbase/downloader/g/e;
.super Ljava/lang/Object;
.source "HttpHeader.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/e$1;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/g/e$1;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/e;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/g/e;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 58
    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/g/e;

    if-eqz v0, :cond_34

    .line 59
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    .line 73
    :goto_17
    return v0

    .line 62
    :cond_18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    if-nez v0, :cond_1e

    move v0, v2

    .line 63
    goto :goto_17

    .line 65
    :cond_1e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    check-cast p1, Lcom/ss/android/socialbase/downloader/g/e;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 66
    if-lez v0, :cond_2e

    move v0, v3

    .line 67
    goto :goto_17

    .line 68
    :cond_2e
    if-gez v0, :cond_32

    move v0, v2

    .line 69
    goto :goto_17

    :cond_32
    move v0, v1

    .line 71
    goto :goto_17

    :cond_34
    move v0, v3

    .line 73
    goto :goto_17
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    if-ne p0, p1, :cond_5

    .line 82
    :cond_4
    :goto_4
    return v0

    .line 80
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    .line 81
    :cond_13
    check-cast p1, Lcom/ss/android/socialbase/downloader/g/e;

    .line 82
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/e;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/socialbase/downloader/g/e;->b:Ljava/lang/String;

    .line 83
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    if-nez v0, :cond_e

    move v0, v1

    :goto_6
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/e;->b:Ljava/lang/String;

    if-nez v2, :cond_15

    :goto_c
    add-int/2addr v0, v1

    return v0

    :cond_e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_15
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
