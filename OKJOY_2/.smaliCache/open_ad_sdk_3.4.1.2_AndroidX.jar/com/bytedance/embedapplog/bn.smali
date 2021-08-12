.class public Lcom/bytedance/embedapplog/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/embedapplog/bn;->b:J

    .line 72
    sput-wide v0, Lcom/bytedance/embedapplog/bn;->c:J

    return-void
.end method

.method public static a()J
    .registers 4

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Z)V
    .registers 1

    .line 103
    sput-boolean p0, Lcom/bytedance/embedapplog/bn;->a:Z

    .line 104
    return-void
.end method
