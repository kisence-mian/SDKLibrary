.class public Lcom/kwad/sdk/core/videocache/q/g;
.super Lcom/kwad/sdk/core/videocache/q/e;
.source ""


# instance fields
.field private final b:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/q/e;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_c

    iput-wide p1, p0, Lcom/kwad/sdk/core/videocache/q/g;->b:J

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max size must be positive number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a(Ljava/io/File;JI)Z
    .registers 7

    iget-wide v0, p0, Lcom/kwad/sdk/core/videocache/q/g;->b:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
