.class Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;
.super Ljava/io/OutputStream;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CountBytesOutputStream"
.end annotation


# instance fields
.field length:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 508
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 509
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;->length:J

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    iget-wide v0, p0, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;->length:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;->length:J

    .line 513
    return-void
.end method
