.class public Lcom/bytedance/tea/crash/g/g;
.super Ljava/lang/Object;
.source "JellyBeanV16Compat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/g/g$b;,
        Lcom/bytedance/tea/crash/g/g$a;
    }
.end annotation


# static fields
.field static final a:Lcom/bytedance/tea/crash/g/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_f

    .line 49
    new-instance v0, Lcom/bytedance/tea/crash/g/g$b;

    invoke-direct {v0, v2}, Lcom/bytedance/tea/crash/g/g$b;-><init>(Lcom/bytedance/tea/crash/g/g$1;)V

    sput-object v0, Lcom/bytedance/tea/crash/g/g;->a:Lcom/bytedance/tea/crash/g/g$a;

    .line 53
    :goto_e
    return-void

    .line 51
    :cond_f
    new-instance v0, Lcom/bytedance/tea/crash/g/g$a;

    invoke-direct {v0, v2}, Lcom/bytedance/tea/crash/g/g$a;-><init>(Lcom/bytedance/tea/crash/g/g$1;)V

    sput-object v0, Lcom/bytedance/tea/crash/g/g;->a:Lcom/bytedance/tea/crash/g/g$a;

    goto :goto_e
.end method

.method public static a(Landroid/app/ActivityManager$MemoryInfo;)J
    .registers 3

    .prologue
    .line 60
    sget-object v0, Lcom/bytedance/tea/crash/g/g;->a:Lcom/bytedance/tea/crash/g/g$a;

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/g/g$a;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v0

    return-wide v0
.end method
