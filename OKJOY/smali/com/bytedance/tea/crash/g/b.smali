.class public Lcom/bytedance/tea/crash/g/b;
.super Ljava/lang/Object;
.source "DebugMemInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/g/b$b;,
        Lcom/bytedance/tea/crash/g/b$a;
    }
.end annotation


# static fields
.field static final a:Lcom/bytedance/tea/crash/g/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_f

    .line 47
    new-instance v0, Lcom/bytedance/tea/crash/g/b$b;

    invoke-direct {v0, v2}, Lcom/bytedance/tea/crash/g/b$b;-><init>(Lcom/bytedance/tea/crash/g/b$1;)V

    sput-object v0, Lcom/bytedance/tea/crash/g/b;->a:Lcom/bytedance/tea/crash/g/b$a;

    .line 51
    :goto_e
    return-void

    .line 49
    :cond_f
    new-instance v0, Lcom/bytedance/tea/crash/g/b$a;

    invoke-direct {v0, v2}, Lcom/bytedance/tea/crash/g/b$a;-><init>(Lcom/bytedance/tea/crash/g/b$1;)V

    sput-object v0, Lcom/bytedance/tea/crash/g/b;->a:Lcom/bytedance/tea/crash/g/b$a;

    goto :goto_e
.end method

.method public static a(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/bytedance/tea/crash/g/b;->a:Lcom/bytedance/tea/crash/g/b$a;

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/g/b$a;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lcom/bytedance/tea/crash/g/b;->a:Lcom/bytedance/tea/crash/g/b$a;

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/g/b$a;->b(Landroid/os/Debug$MemoryInfo;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/os/Debug$MemoryInfo;)I
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcom/bytedance/tea/crash/g/b;->a:Lcom/bytedance/tea/crash/g/b$a;

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/g/b$a;->c(Landroid/os/Debug$MemoryInfo;)I

    move-result v0

    return v0
.end method
