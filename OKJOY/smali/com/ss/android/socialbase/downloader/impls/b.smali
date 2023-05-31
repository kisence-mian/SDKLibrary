.class public Lcom/ss/android/socialbase/downloader/impls/b;
.super Ljava/lang/Object;
.source "DefaultChunkAdjustCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/ss/android/socialbase/downloader/i/h;)I
    .registers 5

    .prologue
    .line 14
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/i/h;->ordinal()I

    move-result v0

    .line 17
    sget-object v1, Lcom/ss/android/socialbase/downloader/i/h;->b:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/i/h;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_e

    .line 18
    const/4 p1, 0x1

    .line 21
    :cond_d
    :goto_d
    return p1

    .line 19
    :cond_e
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/h;->c:Lcom/ss/android/socialbase/downloader/i/h;

    if-ne p2, v0, :cond_d

    .line 20
    add-int/lit8 p1, p1, -0x1

    goto :goto_d
.end method
