.class final Lcom/tapjoy/internal/ix$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/jd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/jf;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/jf;Ljava/io/OutputStream;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/tapjoy/internal/ix$1;->a:Lcom/tapjoy/internal/jf;

    iput-object p2, p0, Lcom/tapjoy/internal/ix$1;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/it;J)V
    .registers 10

    .line 75
    iget-wide v0, p1, Lcom/tapjoy/internal/it;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/jg;->a(JJJ)V

    .line 76
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_45

    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/ix$1;->a:Lcom/tapjoy/internal/jf;

    invoke-virtual {v0}, Lcom/tapjoy/internal/jf;->a()V

    .line 78
    iget-object v0, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 79
    iget v1, v0, Lcom/tapjoy/internal/ja;->c:I

    iget v2, v0, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 80
    iget-object v1, p0, Lcom/tapjoy/internal/ix$1;->b:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/tapjoy/internal/ja;->a:[B

    iget v4, v0, Lcom/tapjoy/internal/ja;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    iget v1, v0, Lcom/tapjoy/internal/ja;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/tapjoy/internal/ja;->b:I

    .line 83
    int-to-long v1, v2

    sub-long/2addr p2, v1

    .line 84
    iget-wide v3, p1, Lcom/tapjoy/internal/it;->b:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/tapjoy/internal/it;->b:J

    .line 86
    iget v1, v0, Lcom/tapjoy/internal/ja;->b:I

    iget v2, v0, Lcom/tapjoy/internal/ja;->c:I

    if-ne v1, v2, :cond_44

    .line 87
    invoke-virtual {v0}, Lcom/tapjoy/internal/ja;->a()Lcom/tapjoy/internal/ja;

    move-result-object v1

    iput-object v1, p1, Lcom/tapjoy/internal/it;->a:Lcom/tapjoy/internal/ja;

    .line 88
    invoke-static {v0}, Lcom/tapjoy/internal/jb;->a(Lcom/tapjoy/internal/ja;)V

    .line 90
    :cond_44
    goto :goto_8

    .line 91
    :cond_45
    return-void
.end method

.method public final close()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/ix$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 99
    return-void
.end method

.method public final flush()V
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/tapjoy/internal/ix$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 95
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/ix$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
