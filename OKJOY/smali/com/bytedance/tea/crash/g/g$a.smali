.class Lcom/bytedance/tea/crash/g/g$a;
.super Ljava/lang/Object;
.source "JellyBeanV16Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/tea/crash/g/g$1;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/bytedance/tea/crash/g/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActivityManager$MemoryInfo;)J
    .registers 4

    .prologue
    .line 21
    const-wide/16 v0, 0x0

    return-wide v0
.end method
