.class public Lcom/ss/android/socialbase/downloader/impls/b;
.super Ljava/lang/Object;
.source "DefaultChunkAdjustCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/ss/android/socialbase/downloader/network/l;)I
    .registers 5

    .line 14
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/network/l;->ordinal()I

    move-result v0

    .line 15
    nop

    .line 17
    sget-object v1, Lcom/ss/android/socialbase/downloader/network/l;->b:Lcom/ss/android/socialbase/downloader/network/l;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/l;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_f

    .line 18
    const/4 p1, 0x1

    goto :goto_15

    .line 19
    :cond_f
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/l;->c:Lcom/ss/android/socialbase/downloader/network/l;

    if-ne p2, v0, :cond_15

    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    :cond_15
    :goto_15
    return p1
.end method
