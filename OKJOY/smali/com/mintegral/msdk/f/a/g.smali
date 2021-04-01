.class public final Lcom/mintegral/msdk/f/a/g;
.super Lcom/mintegral/msdk/f/a/e;
.source "TotalSizeLruDiskUsage.java"


# instance fields
.field private final b:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/32 v2, 0x20000000

    .line 9
    invoke-direct {p0}, Lcom/mintegral/msdk/f/a/e;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_14

    .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max size must be positive number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_14
    iput-wide v2, p0, Lcom/mintegral/msdk/f/a/g;->b:J

    .line 14
    return-void
.end method


# virtual methods
.method protected final a(J)Z
    .registers 6

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/mintegral/msdk/f/a/g;->b:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
