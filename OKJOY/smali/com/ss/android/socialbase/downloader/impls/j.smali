.class public Lcom/ss/android/socialbase/downloader/impls/j;
.super Ljava/lang/Object;
.source "DefaultRetryDelayTimeCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/r;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)J
    .registers 5

    .prologue
    const/4 v1, 0x3

    .line 14
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 15
    const-wide/16 v0, 0xbb8

    .line 23
    :goto_6
    return-wide v0

    .line 16
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 17
    const-wide/16 v0, 0x3a98

    goto :goto_6

    .line 18
    :cond_d
    if-ne p1, v1, :cond_12

    .line 19
    const-wide/16 v0, 0x7530

    goto :goto_6

    .line 20
    :cond_12
    if-le p1, v1, :cond_18

    .line 21
    const-wide/32 v0, 0x493e0

    goto :goto_6

    .line 23
    :cond_18
    const-wide/16 v0, 0x0

    goto :goto_6
.end method
