.class public Lcom/tapjoy/internal/jf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/jf;


# instance fields
.field private b:Z

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/tapjoy/internal/jf$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/jf$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/jf;->a:Lcom/tapjoy/internal/jf;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 144
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_21

    .line 148
    iget-boolean v0, p0, Lcom/tapjoy/internal/jf;->b:Z

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/tapjoy/internal/jf;->c:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    goto :goto_20

    .line 149
    :cond_18
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_20
    :goto_20
    return-void

    .line 145
    :cond_21
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
