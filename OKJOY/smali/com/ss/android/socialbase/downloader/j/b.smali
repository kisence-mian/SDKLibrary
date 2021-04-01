.class public final Lcom/ss/android/socialbase/downloader/j/b;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field public final a:[B

.field public b:I

.field c:Lcom/ss/android/socialbase/downloader/j/b;


# direct methods
.method constructor <init>(I)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/j/b;->a:[B

    .line 22
    return-void
.end method
