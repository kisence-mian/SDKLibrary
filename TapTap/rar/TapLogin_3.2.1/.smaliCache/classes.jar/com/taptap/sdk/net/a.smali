.class Lcom/taptap/sdk/net/a;
.super Ljava/lang/Object;
.source "TimeVerifier.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a()J
    .registers 4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/taptap/sdk/net/a;->a:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static a(J)V
    .registers 2

    .line 1
    sput-wide p0, Lcom/taptap/sdk/net/a;->a:J

    return-void
.end method
