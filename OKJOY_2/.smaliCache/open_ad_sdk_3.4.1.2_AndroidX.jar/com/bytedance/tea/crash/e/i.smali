.class public Lcom/bytedance/tea/crash/e/i;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/e/i$a;
    }
.end annotation


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bytedance/tea/crash/e/i;->a:J

    return-void
.end method

.method static synthetic a()J
    .registers 2

    .line 19
    sget-wide v0, Lcom/bytedance/tea/crash/e/i;->a:J

    return-wide v0
.end method

.method static synthetic a(J)J
    .registers 2

    .line 19
    sput-wide p0, Lcom/bytedance/tea/crash/e/i;->a:J

    return-wide p0
.end method
