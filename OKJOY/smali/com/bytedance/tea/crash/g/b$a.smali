.class Lcom/bytedance/tea/crash/g/b$a;
.super Ljava/lang/Object;
.source "DebugMemInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/tea/crash/g/b$1;)V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/bytedance/tea/crash/g/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Debug$MemoryInfo;)I
    .registers 3

    .prologue
    .line 12
    const/4 v0, -0x1

    return v0
.end method

.method public b(Landroid/os/Debug$MemoryInfo;)I
    .registers 3

    .prologue
    .line 16
    const/4 v0, -0x1

    return v0
.end method

.method public c(Landroid/os/Debug$MemoryInfo;)I
    .registers 3

    .prologue
    .line 20
    const/4 v0, -0x1

    return v0
.end method
