.class Lcom/ss/android/socialbase/downloader/f/j;
.super Lcom/ss/android/socialbase/downloader/exception/BaseException;
.source "SegmentApplyException.java"


# instance fields
.field private a:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 40
    const/16 v0, 0x430

    invoke-direct {p0, v0, p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 41
    iput p1, p0, Lcom/ss/android/socialbase/downloader/f/j;->a:I

    .line 42
    return-void
.end method
