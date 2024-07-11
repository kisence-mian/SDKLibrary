.class public Lcom/ss/android/socialbase/downloader/impls/j;
.super Ljava/lang/Object;
.source "DefaultRetryDelayTimeCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/q;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)J
    .registers 3

    .line 14
    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    .line 15
    const-wide/16 p1, 0xbb8

    return-wide p1

    .line 16
    :cond_6
    const/4 p2, 0x2

    if-ne p1, p2, :cond_c

    .line 17
    const-wide/16 p1, 0x3a98

    return-wide p1

    .line 18
    :cond_c
    const/4 p2, 0x3

    if-ne p1, p2, :cond_12

    .line 19
    const-wide/16 p1, 0x7530

    return-wide p1

    .line 20
    :cond_12
    if-le p1, p2, :cond_18

    .line 21
    const-wide/32 p1, 0x493e0

    return-wide p1

    .line 23
    :cond_18
    const-wide/16 p1, 0x0

    return-wide p1
.end method
