.class Lcom/bytedance/tea/crash/g/g$b;
.super Lcom/bytedance/tea/crash/g/g$a;
.source "JellyBeanV16Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/tea/crash/g/g$a;-><init>(Lcom/bytedance/tea/crash/g/g$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/tea/crash/g/g$1;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/bytedance/tea/crash/g/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActivityManager$MemoryInfo;)J
    .registers 4

    .line 40
    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method
