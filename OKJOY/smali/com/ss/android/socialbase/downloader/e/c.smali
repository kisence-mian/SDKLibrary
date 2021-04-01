.class public Lcom/ss/android/socialbase/downloader/e/c;
.super Lcom/ss/android/socialbase/downloader/e/a;
.source "DownloadHttpException.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .prologue
    .line 12
    invoke-direct {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 13
    iput p2, p0, Lcom/ss/android/socialbase/downloader/e/c;->a:I

    .line 14
    return-void
.end method


# virtual methods
.method public c()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/ss/android/socialbase/downloader/e/c;->a:I

    return v0
.end method
