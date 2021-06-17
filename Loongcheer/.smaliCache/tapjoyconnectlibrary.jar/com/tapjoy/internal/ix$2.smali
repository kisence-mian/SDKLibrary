.class final Lcom/tapjoy/internal/ix$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/je;


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

.field final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/jf;Ljava/io/InputStream;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lcom/tapjoy/internal/ix$2;->a:Lcom/tapjoy/internal/jf;

    iput-object p2, p0, Lcom/tapjoy/internal/ix$2;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/tapjoy/internal/it;J)J
    .registers 7

    .line 134
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_49

    .line 135
    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-wide v0

    .line 137
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/tapjoy/internal/ix$2;->a:Lcom/tapjoy/internal/jf;

    invoke-virtual {v0}, Lcom/tapjoy/internal/jf;->a()V

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/it;->c(I)Lcom/tapjoy/internal/ja;

    move-result-object v0

    .line 139
    iget v1, v0, Lcom/tapjoy/internal/ja;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 140
    iget-object p2, p0, Lcom/tapjoy/internal/ix$2;->b:Ljava/io/InputStream;

    iget-object v1, v0, Lcom/tapjoy/internal/ja;->a:[B

    iget v2, v0, Lcom/tapjoy/internal/ja;->c:I

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    .line 141
    const/4 p3, -0x1

    if-ne p2, p3, :cond_2f

    const-wide/16 p1, -0x1

    return-wide p1

    .line 142
    :cond_2f
    iget p3, v0, Lcom/tapjoy/internal/ja;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Lcom/tapjoy/internal/ja;->c:I

    .line 143
    iget-wide v0, p1, Lcom/tapjoy/internal/it;->b:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/tapjoy/internal/it;->b:J
    :try_end_3a
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_3a} :catch_3b

    .line 144
    return-wide p2

    .line 145
    :catch_3b
    move-exception p1

    .line 146
    invoke-static {p1}, Lcom/tapjoy/internal/ix;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_48

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 147
    :cond_48
    throw p1

    .line 134
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/ix$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 153
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/ix$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
