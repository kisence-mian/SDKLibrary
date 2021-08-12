.class public Lcom/kwad/sdk/core/videocache/a/g;
.super Lcom/kwad/sdk/core/videocache/a/e;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/a/e;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_c

    iput-wide p1, p0, Lcom/kwad/sdk/core/videocache/a/g;->a:J

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max size must be positive number!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a(Ljava/io/File;JI)Z
    .registers 7

    iget-wide v0, p0, Lcom/kwad/sdk/core/videocache/a/g;->a:J

    cmp-long p1, p2, v0

    if-gtz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
