.class public Lcom/kwai/filedownloader/c0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/h0/c$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;J)I
    .registers 8

    const-wide/32 v0, 0x100000

    cmp-long v0, p4, v0

    if-gez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const-wide/32 v0, 0x500000

    cmp-long v0, p4, v0

    if-gez v0, :cond_12

    const/4 v0, 0x2

    goto :goto_8

    :cond_12
    const-wide/32 v0, 0x3200000

    cmp-long v0, p4, v0

    if-gez v0, :cond_1b

    const/4 v0, 0x3

    goto :goto_8

    :cond_1b
    const-wide/32 v0, 0x6400000

    cmp-long v0, p4, v0

    if-gez v0, :cond_24

    const/4 v0, 0x4

    goto :goto_8

    :cond_24
    const/4 v0, 0x5

    goto :goto_8
.end method
