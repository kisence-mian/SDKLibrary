.class public Lcom/ss/android/socialbase/downloader/impls/c;
.super Ljava/lang/Object;
.source "DefaultChunkCntCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .registers 6

    .prologue
    .line 18
    const-wide/32 v0, 0xa00000

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    .line 19
    const/4 v0, 0x1

    .line 25
    :goto_8
    return v0

    .line 20
    :cond_9
    const-wide/32 v0, 0x3200000

    cmp-long v0, p1, v0

    if-gez v0, :cond_12

    .line 21
    const/4 v0, 0x2

    goto :goto_8

    .line 22
    :cond_12
    const-wide/32 v0, 0x6400000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1b

    .line 23
    const/4 v0, 0x3

    goto :goto_8

    .line 25
    :cond_1b
    const/4 v0, 0x4

    goto :goto_8
.end method
